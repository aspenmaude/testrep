// List Menu
var header = document.getElementById("list-menu-profile");
var btns = header.getElementsByClassName("link");
for (var i = 0; i < btns.length; i++) {
  btns[i].addEventListener("click", function() {
  var current = document.getElementsByClassName("active");
  current[0].className = current[0].className.replace(" active", "");
  
  this.className += " active";
  console.log(this.className);
  });
}
// toggle-hide-show
function toggleHide() {
  var x = document.getElementById("hide-show");
      
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
}