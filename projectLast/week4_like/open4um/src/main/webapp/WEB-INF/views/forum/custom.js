$(document).ready(function() {
	/*
	$('.btn-login').click(function() {
		let us = document.querySelector("#username1").value;
		let pw = document.querySelector("#password1").value;
	 
		$.ajax({
			url: '/open4um/api/login',
			type: "POST",
			data: {
				username: us,
				password: pw
			},
			success: function(data) {
				if (data != "") {
					window.location.href = "/open4um";		 
				} else {
					$("#username1").val("");
					$("#password1").val("");
					$(".error").text("username or password  invalid !!!");	
				}
			}
		});
	})
	*/
	
	
	
})


function myFunction(){
 $.ajax({
	type : 'GET',
	dataType: 'json',
	data: {
		 "username" : $("#username1").val()
	},
    url : "/open4um/api/search/",
    success : function(data) {
		//console.log(JSON.stringify(data));
		$("#form-user").html(loadData(data));
		 var user = JSON.parse(JSON.stringify(data));
		$("userid").val(user[0].userid);
		$(".username1").val(user[0].username);
		$(".phone").val(user[0].phone);
		$(".email").val(user[0].email);
		$(".role").val(user[0].roleaccount_name);
		$(".status").val(user[0].status);	
    }
});
};

function loadData(data){
	var str = "<form>";
		str += "<table style='width: 100%; margin-left: 30px; margin-top: 50px; font-size: 13px'>";
		str += "<tr>"
		str += "<th>ID</th>"
		str += "<th>User Name</th>"
		str += "<th>Phone</th>";
		str += "<th>Email</th>";
		str += "<th>Role</th>";
		str += "<th>Money</th>";
		str += "<th>Status</th>";
		str += "<th></th>";
		str += "</tr>";
		$.each(data, function(index, value){
			str += "<tr>";
			str += "<td><input style='padding: 14px;' name='userid' value='" + value.userid + "'></td>";
			str += "<td><input style='padding: 14px;' name='username' value='" + value.username + "'></td>";
			str += "<td><input style='padding: 14px;' name='phone' value='" + value.phone + "'></td>";
			str += "<td><input style='padding: 14px;' name='email' value='" + value.email + "'></td>";
			str += "<td><input style='padding: 14px;' name='roleaccount_name' value='" + value.roleaccount_name + "'></td>";
			str += "<td><input style='padding: 14px;' name='money' value='" + value.money + "'></td>";
			str += "<td><input style='padding: 14px;' name='status' value='" + value.status + "'></td>";
			str += "<td>";
			str += "<button type='button' class='btn btn-default btn-lg' id='myBtn'>";
			str += "<a onclick='getId(" + value.userid + ")' class='btn-edit'>Edit</a>";
			str += "</button>";
			str += "</td>";
			str += "</tr>";
			str += "</form>";
		});
	return str;
}


