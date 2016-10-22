<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Website Cá nhân hỗ trợ giáo viên dạy học</title>
<link rel="shortcut icon" href="images/head.ico" type="image/x-icon" />
<link rel="icon" href="images/head.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="css/thongtin.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/stylemenu.css">
<link href="css/banerchuyendong.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" media="all" type="text/css" href="css/font-awesome.min.css"/>
<link href="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.2.0/css/bootstrap.css" rel="stylesheet" media="screen">
<link href="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/css/bootstrapValidator.min.css" rel="stylesheet" />
<link rel="stylesheet" href="css/stylevadidating.css">
 <link rel="stylesheet" type="text/css" href="css/style.css">
<%@ page import="model.Users"%>
<%@page import="dao.UsersDAO"%>
<%@ page import="model.Users"%>

</head>

<header> <%
 	Users users = null;
 	if (session.getAttribute("user") != null) {
 		users = (Users) session.getAttribute("user");
 	}
 %>

<div class="container">
	<div class="row">
		<div class="col-xs-2 col-sm-6 col-md-8"></div>
		<div class="col-xs-6 col-md-4"></div>
	</div>
	<div class="row">
		<div class="logo col-md-6 col-sm-6 col-xs-12">
			<h1>
				<a href="#">Học lập trình</a>
			</h1>
		</div>
		<div class="navbar-right">
			<form class="">
			<div class="dropdown right">
				<%
					if (users != null) {
				%>
				<%--Lấy thông tin tài khoản --%>
				<a href="#" class="dropntn"><%=users.getUserEmail()%></a>
				</li>
				<%
					}
				%><span class="arrow"></span></a>
				<div class="dropdown-content">
					<p style="color:red;margin-left: 15px; margin-top: 10px;" ><%=users.getUserEmail()%> </p>
					<%--Lấy thông tin tên tài khoản --%>
					<a href="thongtincanhan.jsp">Thông tin cá nhân</a> <a
						href="doimatkhau.jsp">Đổi mật khẩu</a>
			</div>
			</div>
			<img src="images/hoclaptrinh.jpg" align="bottom" width="40"
				height="40" /> 
				<a href="index.jsp">
				<button class="btn btn-danger navbar-btn">Đăng xuất</button>
			</a>
		</div>
	</div>
	<div>
		<img src="images/hoclaptrinh.jpg" align="bottom" width="1165"
			height="160" />
	</div>
	<div class="wrapper">
		<nav class="menu">
		<ul class="clearfix">
			<li><a href="indexuser.jsp">Trang chủ</a></li>
			<li>
			<li><a href="#">Khóa học<span class="arrow"> &#9660;</span>
			</a>
				<ul class="sub-menu">
					<li><a href="chitietkhoahoc.jsp">Khoá học lập trinh C căn
							bản</a></li>
					<li><a href="#">Khóa học lập trình java</a></li>
					<li><a href="#">Khoá học lập trình PHP</a></li>
					<li><a href="#">Khoá học lập trình Web</a></li>
				</ul></li>
			<li><a href="khoahoccuartoi.jsp">Khóa học của tôi</a></li>
			<li><a href="thread.jsp">Thảo luận</a></li>
			<li><a href="kiemtra.jsp">Kiểm tra</a></li>
			<li><a href="#myModal" data-toggle="modal">Liên hệ</a></li>
			<li><a href="#">Giới thiệu</a></li>
		</ul>
		</nav>
	</div>
	</nav>
</div>
</div>
</header>
<body>
	<div id="myModal" class="modal fade" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">Contact Form</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" id="contactform" name="commentform"
						method="post" action="indexuser.jsp"
						data-bv-message="This value is not valid"
						data-bv-feedbackicons-valid="glyphicon glyphicon-ok"
						data-bv-feedbackicons-invalid="glyphicon glyphicon-remove"
						data-bv-feedbackicons-validating="glyphicon glyphicon-refresh">

						<div class="form-group">
							<label class="control-label col-md-3" for="email">Email:</label>
							<div class="col-md-8">
								<input type="email" class="form-control" id="email" name="email"
									placeholder="Email Address" data-bv-notempty
									data-bv-notempty-message="An email address is mandatory" />
							</div>
						</div>

					
						<div class="form-group">
							<label class="control-label col-md-3" for="last_name">Tiêu đề:</label>
							<div class="col-md-8">
								<input type="text" class="form-control" id="last_name"
									name="last_name" placeholder="Tiêu đề" data-bv-notempty
									data-bv-notempty-message="You've forgotten to provide your last name!" />
							</div>
						</div>
					
						<div class="form-group">
							<label class="control-label col-md-3" for="comment">Nội dung:</label>
							<div class="col-md-8">
								<textarea rows="8" class="form-control" id="comments"
									name="comments" placeholder="Your question or comment here"></textarea>
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-6">
								<button type="submit" value="Submit"
									class="btn btn-custom pull-right" id="send_btn">Send</button>
							</div>
						</div>
					</form>
				</div>
				<!-- End of Modal body -->
			</div>
			<!-- End of Modal content -->
		</div>
		<!-- End of Modal dialog -->
	</div>
	<!-- End of Modal -->
	<!-- End of Container -->
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script
		src="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.2.0/js/bootstrap.min.js"></script>
	<script
		src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/js/bootstrapValidator.min.js"
		type="text/javascript"></script>
	<script>
		$('#contactform').bootstrapValidator();
	</script>

</body>
</html>
