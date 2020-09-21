<!-- 
 @author Ha Thi Bich Chi
 -->
 
 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%
	//String contextPath =pageContext.getRequest().getServletContext();
String contextPath = request.getContextPath();
%>

<style>
.modal-header, h4, .close {
	background-color: #5cb85c;
	color: white !important;
	text-align: center;
	font-size: 30px;
}
#form-user input {
    width: 100%;
}

#form-user td {
    width: 2%;
}
button#myBtn {
    background: darkseagreen;
    color: papayawhip;
}
#form-user input {
    
    color: darkslateblue;
	font-weight:700;
    border: none;
}
.modal-footer {
	background-color: #f9f9f9;
}
</style>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="<c:url value="/resources/css/admin.css" />">
<div id="body">

	<div class="nav-container" id="container">
			<div class="lop-ngoai">
				<div class="user">
					<div class="image-user">
						<img src="<c:url value="${user.avatar}" />" alt="">
					</div>
					<div class="title-user">
						<h1>Admin</h1>
						<p>${user.username }</p>
						<div class="center">
							<div class="left">
								<p><a href="profile.html"> Profile</a></p>
							</div>
							<div class="right">
								<p><a href="">Đăng Xuất</a></p>
							</div>
						</div>
					</div>						
				</div>
				<div class="accordion" id="accordionExample">
					  	<div class="card">
					    	<div class="card-header" id="headingOne">
							    <h2 class="mb-0">
							        <button class="btn btn-link btn-block text-left text-center" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
							        	<div class="icon"><i class="fas fa-address-card"></i></div><div class="title"><p >QUẢN LÝ THÀNH VIÊN</p></div>
							        </button>
							    </h2>
					    	</div>

					    	<div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
					      		<div class="card-body">
					        		<ul>
					        			<li ><a href="/open4um/admin/listuser/">DANH SÁCH THÀNH VIÊN</a></li>
					        		</ul>
					      		</div>
					    	</div>
					  	</div>
					  	<div class="card">
					    	<div class="card-header" id="headingTwo">
						      	<h2 class="mb-0">
						       		<button class="btn btn-link btn-block text-left collapsed text-center" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
						         <div class="icon"><i class="far fa-clone"></i></div><div class="title"><p >QUẢN LÝ BÀI VIẾT</p></div> 
						        	</button>
						      	</h2>
						    </div>
						    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
						      	<div class="card-body">
							        <ul>
							        	<li class="active"><a href="#">THÊM BÀI VIẾT</a></li>						        	
							        </ul>
						    	</div>
						    	<div class="card-body">
							        <ul>						      
							        	<li class="active"><a href="/open4um/admin/quanlybaiviet/list/">DANH SÁCH BÀI VIẾT</a></li>
							        </ul>
						    	</div>
						    </div>
					  	</div>
					  	<div class="card">
					    	<div class="card-header" id="headingThree">
					      		<h2 class="mb-0">
						        	<button class="btn btn-link btn-block text-left collapsed text-center" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
						         	<div class="icon"><i class="fas fa-file-word"></i></div><div class="title"><p >QUẢN LÝ CHUYÊN MỤC</p></div>
						        	</button>
					      		</h2>
					    	</div>
					    	<div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
					      		<div class="card-body">
						        	<ul>
						        		
						        		<li class="active"><a href="ListChuyenMuc.html">DANH SÁCH CHUYÊN MỤC</a></li>
						        	</ul>
					      		</div>
					      		
					    	</div>
					    </div>	
					    <div class="card">
					    	<div class="card-header" id="headingFour">
					      		<h2 class="mb-0">
						        	<button class="btn btn-link btn-block text-left collapsed text-center" type="button" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
						         <div class="icon"><i class="fas fa-tag"></i></div><div class="title"><p>QUẢN LÝ THẺ</p></div>
						        	</button>
					      		</h2>
					    	</div>
					    	<div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordionExample">
					      		<div class="card-body">
						        	<ul>
						        		<li class="active"><a href="ListThe.html">DANH SÁCH THẺ</a></li>
						        	</ul>
					      		</div>
					    	</div>
					    </div>
					     <div class="card">
					    	<div class="card-header" id="headingFour">
					      		<h2 class="mb-0">
						        	<button class="btn btn-link btn-block text-left collapsed text-center" type="button" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
						         <div class="icon"><i class="far fa-angry"></i></div><div class="title"><p>REPORT</p></div>
						        	</button>
					      		</h2>
					    	</div>
					    	<div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordionExample">
					      		<div class="card-body">
						        	<ul>
						        		<li class="active"><a href="ListThe.html">DANH SÁCH THẺ</a></li>
						        	</ul>
					      		</div>
					    	</div>
					    </div>		
				</div>
			</div>
		</div>
	<section>
	<form class="navbar-form navbar-right">
            <div class="form-group">
            <button type="button" class="btn btn-default" id="searchButton">
              
            <a onclick="myFunction()">Search</a></button>
            <input style="width:300px;" type="text" class="form-control" name="username1" placeholder="Search" id="username1" ></input>
            </div>
            
	</form>
	
	<div id="form-user">
		<form>
			<table
				style="width: 100%; margin-left: 30px; font-size: 13px;margin-top: 133px;">

				<tr>
					<th>ID</th>
					<th>User Name</th>
					<th>Phone</th>
					<th>Email</th>
					<th>Role</th>
					<th>Money</th>
					<th>Status</th>
					<th></th>
				</tr>
				<c:forEach var="listUser" items="${listUser}">
					<tr>
						<td><input style="padding: 14px;" name="userid"
							value="${listUser.userid}"></td>
						<td><input style="padding: 14px;" name="username"
							value="${listUser.username}"></td>
						<td><input style="padding: 14px;" name="phone"
							value="${listUser.phone}"></td>
						<td class="email"><input   style="padding: 14px;" name="email"
							value="${listUser.email}"></td>
						<td><input style="padding: 14px;" name="roleaccount_name"
							value="${listUser.roleaccount_name}"></td>
						<td><input style="padding: 14px;" name="money"
							value="${listUser.money}"></td>
						<td class="status"><input style="padding: 14px;" name="status"
							value="${listUser.status}"></td>
						<td>
							<button type="button" class="btn btn-default btn-lg" id="myBtn">
								<a onclick="getId(${listUser.userid})" class="btn-edit">Edit</a>
							</button>
						</td>
					</tr>

				</c:forEach>
			</table>
		</form>
	</div>
		<div class="modal fade" id="myModal" role="dialog"
>
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header" style="padding: 35px 50px;">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4>
							<span class="glyphicon glyphicon-lock"></span> EDIT
						</h4>
					</div>

					<div class="modal-body" style="padding: 40px 50px;">
						<form action="/open4um/edit/" id="listform" method="post">
							<div class="form-group">
								<label for="psw"><span
									class="glyphicon glyphicon-eye-open"></span> ID</label> <input
									type="text" class="form-control" id="userid" name="userid"
									placeholder="Enter password">
							</div>
							<div class="form-group">
								<label for="psw"><span
									class="glyphicon glyphicon-eye-open"></span>User name</label> <input
									type="text" class="form-control" id="username"
									placeholder="Enter password" name="username">
							</div>
							<div class="form-group">
								<label for="psw"><span
									class="glyphicon glyphicon-eye-open"></span>Phone</label> <input
									type="text" class="form-control" id="phone"
									placeholder="Enter password" name="phone">
							</div>
							<div class="form-group">
								<label for="psw"><span
									class="glyphicon glyphicon-eye-open"></span>Email</label> <input
									type="text" class="form-control" id="email"
									placeholder="Enter password" name="email">
							</div>
							<div class="form-group">
								<label for="psw"><span
									class="glyphicon glyphicon-eye-open"></span>Role</label> <input
									type="text" class="form-control" id="role"
									placeholder="Enter password" name="role">
							</div>
							<div class="form-group">
									<select id="status" name="status">
										
										<option value="active">Active</option>
										<option value="inactive">Inactive</option>
									</select>

												
							</div>

							<button type="submit" class="btn btn-success btn-block">
								Save
							</button>
						</form>
					</div>


					<div class="modal-footer">
						<button type="submit" class="btn btn-danger btn-default pull-left"
							data-dismiss="modal">
							<span class="glyphicon glyphicon-remove"></span> Cancel
						</button>
						
					</div>


				</div>

			</div>
		</div>
</div>
</section>
</div>
<script type="text/javascript">
function getId(id){
	 $.ajax({
       type : 'GET',
		dataType: 'json',
		data: {
			userid: id
		},
       url : "/open4um/api/dataUser/",
       success : function(data) {
    	   console.log("aaaaaaaaaaa");
			$("#userid").val(data[0].userid);
			
			$("#username").val(data[0].username);
			 console.log("2222");
			$("#phone").val(data[0].phone);
			
			$("#email").val(data[0].email);
			$("#role").val(data[0].roleaccount_name);
			$("#status").val(data[0].status);
			 console.log("3");
			$("#myModal").modal();
			 console.log("4");
			
       }
	});
}
</script>

