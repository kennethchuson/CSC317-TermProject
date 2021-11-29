  
























  
 /*           var container = document.getElementById("container"); 
            var countPost = 0;  

            function fadeOut(id) {
            
            var target = document.getElementById(`${id}`); 

            var effects = setInterval(function() {
                if (!target.style.opacity) {
                    target.style.opacity = 1; 
                }
                if (target.style.opacity > 0) {
                    target.style.opacity -= 0.4; 
                }
                else {
                    clearInterval(effects); 
                    target.parentNode.removeChild(target);
                    Counting(--countPost); 
                }
            }
            , 100); 

        }

        function Counting(countPost) {
            document.getElementById("postCount").innerHTML = `<h4>Photos are being shown are ${countPost}</h4>`;  
        }

            function create(dataAlbumID, dataID, dataTitle, dataURL, dataThumbnailURL) {
                document.getElementById("grid").insertAdjacentHTML("afterbegin", 
                   `
                    <div id="card${dataID}" class="article" onclick="fadeOut('card${dataID}')">
                        <img id="${dataID}" src="${dataThumbnailURL}">
                            <div class="text">
                                <h4>${dataTitle}</h4>
                                <p>This is just a photo</p>
                            </div>
                    </div>
                    `
                ); 

            }



            fetch('https://jsonplaceholder.typicode.com/albums/2/photos')
                .then((res) => {
                    return res.json(); 
                })
                .then((datas) => {
                    countPost = datas.length; 
                    Counting(countPost); 
                    datas.forEach((data) => {
                        var result = create(data.albumId, data.id, data.title, data.url, data.thumbnailUrl);
                    });

                })
                .then((err) => {
                    console.log("error", err); 
                })

    */  
/*
function createCard(postData) {
    return `  <div id="post-${postData.id}" class="article" onclick="fadeOut('card${dataID}')">
    <img id="wo" src="${postData.photopath}">               
    <div class="details">
        <h4>${postData.title}</h4>
        <p>${postData.description}</p>
        <i>Created: </i>
        <p>${postData.created}</p>
        <a href="/post/${postData.id}" class="anchor-buttons">Post Details</a>
    </div>
</div>`; 
}
          

function executeSearch() {
    let searchTerm = document.getElementById('stext').value; 

    if (!searchTerm) {
        location.replace('/'); 
        return; 
    }
    let mainContent = document.getElementById('main-content'); 
    let searchURL = `/posts/search?search=${searchTerm}`; 
    fetch(searchURL) 
    .then((data) => {
        return data.json(); 
    })
    .then((data_json) => {
        let newMainContentHTML = ''; 
        data_json.results.forEach((row) => {
            newMainContentHTML += createCard(row); 
        });
        mainContent.innerHTML = newMainContentHTML; 
    })
    .catch((err) => console.log(err)); 
}
*/

         