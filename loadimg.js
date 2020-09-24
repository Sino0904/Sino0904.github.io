var xhr = new XMLHttpRequest();
xhr.open("GET", "img/", true);
xhr.responseType = 'document';
xhr.onload = () => {
  if (xhr.status === 200) {
    var elements = xhr.response.getElementsByTagName("a");
    for (x of elements) {
      if ( x.href.match(/\.(jpe?g|png|gif)$/) ) { 
          let img = document.createElement("img");
          img.src = x.href;
          document.body.appendChild(img);
      } 
    };
  } 
  else {
    alert('Request failed. Returned status of ' + xhr.status);
  }
}
xhr.send()
