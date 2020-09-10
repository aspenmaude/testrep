/**@author Phùng Tấn Lợi */
var clicks = 0;
function onClick(){
	clicks += 1;
	document.getElementById("clicks").innerHTML = clicks;
};


function menuquick(){
	 var menu = document.getElementById("menu-nhanh");
	 var forum = document.getElementById("forum-page");
	if (menu.style.display == "none")
	{
		forum.style.opacity = "0.5";
		menu.style.display = "block";
	}
	else
	{
		forum.style.opacity = "1";
		menu.style.display = "none";
	}
		
};