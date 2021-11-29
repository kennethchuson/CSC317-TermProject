
function Submit() {

    var inputUsername = document.getElementById('username2');
    var inputPassword = document.getElementById('password2'); 
    var confirmPassword = document.getElementById('password2Confirm');
    var inputEmail = document.getElementById('email1'); 
    var acceptInputUsername = false; 
    var acceptInputEmail = false; 
    var acceptInputPassword = false; 
    var acceptConfirmPassword = false;  

    inputUsername.onchange = function(event) {
        var inputting = event.target.value;
        var inputBox = document.getElementById('Message'); 

        if (usernameInputFunc(inputting)) {
            inputBox.innerText = inputting + " ✔"; 
            inputBox.style.color = "rgb(9,47,0)"; 
            acceptInputUsername = true; 
        }
        else {
            acceptInputUsername = false; 
        }
    }


    inputEmail.onchange = function(event) {
        var inputting = event.target.value; 
        var inputBox = document.getElementById('Message'); 

        if (emailInputFunc(inputting)) {
            inputBox.innerText = inputting + " ✔"; 
            inputBox.style.color = "rgb(9,47,0)"; 
            acceptInputEmail = true; 
        }
        else {
            acceptInputEmail = false; 
        }
    }

    inputPassword.onchange = function(event) {
        var inputting = event.target.value;
        var inputBox = document.getElementById('Message'); 

        if (userpasswordInputFunc(inputting)) {
            inputBox.innerText = inputting + " ✔";
            inputBox.style.color = "rgb(9,47,0)"; 
            acceptInputPassword = true; 
        }
        else {
            acceptInputPassword = false; 
        }
    }

    confirmPassword.onchange = function(event) {
        var inputting = event.target.value; 
        var inputBox = document.getElementById('Message'); 

        if (inputPassword.value == inputting) {
            inputBox.innerText = "Password Match! ✔"; 
            inputBox.style.color = "rgb(9,47,0)";
            acceptConfirmPassword = true; 
        }
        else {
            inputBox.innerText = "Password Unmatch! ✘"
            inputBox.style.color = "rgb(101, 15, 15)"; 
            acceptConfirmPassword = false; 
        }
    }



    function emailInputFunc(emailInput) {
        var inputBox = document.getElementById('Message');
        var accept = false; 
        const re = /\S+@\S+\.\S+/; 

        for (var i = 0; i < String(emailInput).length; i++) {

                switch (String(emailInput).charAt(i)) {
                    case '@': 
                        inputBox.innerHTML = "must contain an '.' ✘"; 
                        inputBox.style.color = "rgb(101, 15, 15)"; 
                        break; 
                    case '.': 
                        inputBox.innerHTML = "must contain an '@' ✘"; 
                        inputBox.style.color = "rgb(101, 15, 15)"; 
                        break; 
                }
        }
        if (re.test(String(emailInput))) {
            accept = true; 
        }
        return accept; 
    }



    function usernameInputFunc(usernameInput) {
        var inputBox = document.getElementById('Message'); 

        var accept = false; 
        var checkLetters = /^[A-Za-z]/; 

        if (/\s/.test(String(usernameInput))) {
            inputBox.innerHTML = "must not contain any spaces ✘"; 
            inputBox.style.color = "rgb(101, 15, 15)";
        }
        else {
            if (usernameInput.match(checkLetters)) {
                if (String(usernameInput).length > 3) {
                    console.log("ACCEPTED!"); 
                    accept = true; 
                }
                else {
                    console.log("must contain at least 3 words..."); 
                    inputBox.innerHTML = "must contain at least 3 words ✘"; 
                    inputBox.style.color = "rgb(101, 15, 15)"; 
                }
            }
            else {
                console.log("unacceptable"); 
            }
        }
        return accept; 
    }

    function userpasswordInputFunc(userpassword) {
        var inputBox = document.getElementById('Message'); 
        var accept = false;
        var character = ''; 
        var checkUpperCase = 0; 
        var checkNumber = 0; 
        var checkSpecialCharacter = 0; 

        if (String(userpassword).length > 8) {
            for (var i = 0; i < String(userpassword).length; i++) {
                character = String(userpassword).charAt(i); 
                if (character == character.toUpperCase()) {
                    checkUpperCase++; 
                }
                if (/^-?\d+$/.test(character)) {
                    checkNumber++;    
                }
                if (character == '/' || character == '*' || character == '-' ||
                    character == '+' || character == '!' || character == '@' ||
                    character == '#' || character == '$' || character == '^' || 
                    character == '&'
                ) {
                    checkSpecialCharacter++; 
                }
            }
            if (checkUpperCase >= 1) {
                if (checkNumber >= 1) {
                    if (checkSpecialCharacter >= 1) {
                        console.log("ACCEPTED"); 
                        accept = true; 
                    }
                    else {
                        console.log("must contain at least special character..."); 
                        inputBox.innerHTML = "must contains at least special character ✘"; 
                        inputBox.style.color = "rgb(101, 15, 15)"; 

                    }
                }
                else {
                    console.log("must contain at least one number..."); 
                    inputBox.innerHTML = "must contain at least one number ✘"; 
                    inputBox.style.color = "rgb(101, 15, 15)"; 
                }
            }
            else {
                console.log("must contain at least one upperCase character..."); 
                inputBox.innerHTML = "must contain at least one upperCase character ✘"; 
                inputBox.style.color = "rgb(101, 15, 15)"; 
            }
        }
        else {
            console.log("your password should be 8 more than characters.")
            inputBox.innerHTML = "your password should be 8 more than characters. ✘"; 
            inputBox.style.color = "rgb(101, 15, 15)"; 
        }
        return accept; 
    }

    var userForm = document.getElementById("form");
    

    userForm.addEventListener('submit', (event) => {

        if (acceptInputUsername && acceptInputPassword && acceptConfirmPassword && acceptInputEmail) {
            console.log("Valid Form")
        } else {
            event.preventDefault();
            console.log("Invalid Form")
        }  
    });



}

Submit(); 