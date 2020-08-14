function view(divId){
    divsub = document.querySelectorAll('.submenu')
    console.log(divsub);

    for (var i=0; i < divsub.length; ++i)
    {
        if (divsub[i].id == divId) {
            if(divsub[i].style.display == 'block'){
                divsub[i].style.display = 'none';
            }    
            else{
                divsub[i].style.display = 'block';
            }     
        }
        else
        {
            divsub[i].style.display = 'none';
        }

    }
}

var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}

function showMenuBox(divId) {
    divMenuBox = document.querySelectorAll('.menubox');

    for (var i=0; i < divMenuBox.length; ++i){
        if (divMenuBox[i].id == divId) {
            if(divMenuBox[i].style.display == 'block'){
                divMenuBox[i].style.display = 'block';

            }    
            else{
                divMenuBox[i].style.display = 'block';
            }     
        }
        else
        {
            divMenuBox[i].style.display = 'none';
        }
    }
    changeMenuColor(divId);   
}
function changeMenuColor(divId) {
    divPill = document.querySelectorAll('.pill');

    for(var i=0; i < divPill.length; ++i){
        if(divPill[i].id == divId){
            divPill[i].setAttribute("aria-selected",true);
        }
        else{
         divPill[i].setAttribute("aria-selected",false);
        }
    }

}
document.getElementsByClassName("menu-box-content").addEventListener("mouseover", showBoxContent);

function showBoxContent() {
    document.getElementsByClassName("menu-box-content")
}
