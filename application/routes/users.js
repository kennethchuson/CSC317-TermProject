

var express = require('express');
const { successPrint, errorPrint } = require('../helpers/debug/debugprinters');
var router = express.Router();
var db = require('../config/database');
const UserError = require ('../helpers/error/UserError');
var bcrypt = require('bcrypt');

const { body, validationResult } = require('express-validator');


const UserModel = require('../models/Users'); 







/* GET users listing. */

//localhost:3000/users
router.get('/', function(req, res, next) {
  res.send('respond with a resource');
});

//localhost:3000/users/register


router.post('/registration', [body('username').isLength({min: 3}).matches(/^[a-zA-Z]/)], (req, res, next) => 
{

    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      res.send("error")
      return res.status(400).json({errors: errors.array() }); 
    }
    else{
    
      let username = req.body.username;
      let email = req.body.email;
      let password = req.body.password;
      let cpassword = req.body.cpassword;


      
      UserModel.usernameExists(username)
      .then((userDoesNameExist) => {
        if (userDoesNameExist) {
          throw new UserError
          (
            "Registration Failed: Username already exists", 
            "/registration",
            200
          );
        }
        else {
          UserModel.emailExists(email); 
        }
      })
      .then((emailDoesExist) => {
        if (emailDoesExist) {
          throw new UserError
          (
            "Registration Failed: Email already exists", 
            "/registration",
            200
          );
        }
        else {
          return UserModel.create(username, password, email); 
        }
      })
      .then((createdUserId) => {
        if (createdUserId < 0) {
          throw new UserError
          (
            "Server error, user could not be created", 
            "/registration",
            500
          );
        }
        else {
          successPrint("User.js, user was created!!");
          req.flash('success', 'User account has been made!'); 
          res.redirect('/login');
        }
      }).catch((err) => {
        errorPrint("user could not be made", err);
        if(err instanceof UserError)
        {
          errorPrint(err.getMessage());
          req.flash('error', err.getMessgae()); 
          res.status(err.getStatus());
          res.redirect(err.getRedirectURL());
          res.rediret('/'); 
        }
        else
        {
          next(err);
        }
      });
    }
})





router.post('/login', [body('username').isLength({min: 3}).matches(/^[a-zA-Z]/)], (req, res, next) =>  {

  const errors = validationResult(req);
  if (!errors.isEmpty()) {
    res.send("error")
    return res.status(400).json({errors: errors.array() }); 
  }
  else {
    let username = req.body.username;
    let password = req.body.password;



    UserModel.aunthenticate(username, password) 
    .then((loggedUserId) => {
      if (loggedUserId > 0) {
        successPrint(`User ${username} is logged in`);
        // res.cookie("logged", username,{expires: new Date(Date.now()+900000), httpOnly:false});
        // res.cookie("isLogged", "true",{expires: new Date(Date.now()+900000), httpOnly:false});
        req.session.username = username; 
        req.session.userId = loggedUserId; 
        res.locals.logged = true;
        req.flash('success', 'You have been sucessfully logged in!'); 
        res.redirect('/postImage');
      }
      else {
        throw new UserError ("Invalid username and/password!", "/login", 200);
      }
    })
    .catch((err) => {
      errorPrint("user login failed", err);
      if(err instanceof UserError)
      {
        errorPrint(err.getMessage());
        req.flash('error', err.getMessgae()); 
        res.status(err.getStatus());
        res.redirect('/login');
      }
      else
      {
        next(err);
      }
    })
  }
})






router.post('/logout', (req, res, next) => {
  req.session.destroy((err) => {
    if (err) {
      errorPrint('session could not be destroyed');
      next(err);  
    }
    else {
      successPrint('Session was destroyed'); 
      res.clearCookie('csid'); 
      res.json({status: "OK", message: "useris logged out"}); 
    }
  })
  
}); 





module.exports = router;