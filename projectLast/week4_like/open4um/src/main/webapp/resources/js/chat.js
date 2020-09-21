/**
 *  author Thong
 */
function getData(){
	
}
$.ajax({
		type: 'GET',
		dataType: "json", 
		url: "http://localhost:8080/open4um/thong",
		success : function (data){
      			//console.log(data);
				var str = "";
				str += "<table border='1' width='100%' action='upload'>"
                str += "<tr>"
                str += "<th>USER NAME</th>"
				str += "<th>Sub</th>"
                str += "<th>DATE</th>"
                str += "</tr>"
				$.each(data, function(key, value) {
					var date = new Date(value.datemsg);
				str += "<tr>";
				str += "<td><p onclick='boxMessage()'>" + value.username + "</p></td>";
				str += "<td>" + value.content + "</td>";
				str += "<td>" + date.getDate() + "/" + date.getMonth() + "/" + date.getFullYear()+ "</td>";
				str += "</tr>";
								});
				str += "</table>"
			$("#listMessage").html(str);
 	}
});
//box message
function boxMessage(){
	var container = document.querySelector(".container-chat")
	var box = document.getElementById("boxMessage");
	if(box.style.display === "none"){
		box.style.display = "block";	
		box.style.opacity = "1";
		container.style.opacity ="0.8";
	}
	else{
		box.style.display = "none";
		container.style.opacity ="1";
	}
}