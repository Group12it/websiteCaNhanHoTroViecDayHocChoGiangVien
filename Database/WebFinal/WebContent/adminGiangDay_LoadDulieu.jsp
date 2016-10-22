<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />


<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="shortcut icon" href="images/head.ico" type="image/x-icon" />
<link rel="icon" href="images/head.ico" type="image/x-icon" />
<title>Website Cá nhân hỗ trợ giáo viên dạy học</title>
<link href="css/bootstrap.min.css" rel="stylesheet" />


<link href="css/styleadmin.css" rel="stylesheet" />

<link rel="stylesheet" type="text/css" href="css/stylemenu.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" media="all" type="text/css"
	href="css/font-awesome.min.css" />

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<header>
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
			<a href="#">Học Viên</a> <img src="images/hoclaptrinh.jpg"
				align="bottom" width="40" height="40" />
			<button class="btn btn-danger navbar-btn">Đăng xuất</button>
		</div>
	</div>
	<body>
		<img src="images/hoclaptrinh.jpg" align="bottom" width="1165"
			height="160" />
	</body>
	<div class="wrapper">
		<nav class="menu">
		<ul class="clearfix">
			<li><a href="admin.jsp">Trang chủ</a></li>
			<li></li>
			<li><a href="#">Khóa học<span class="arrow"> &#9660;</span>
			</a>
				<ul class="sub-menu">
					<li><a href="chitietkhoahoc.jsp">Khoá học lập trinh C căn
							bản</a></li>
					<li><a href="#">Khóa học lập trình java</a></li>
					<li><a href="#">Khoá học lập trình PHP</a></li>
					<li><a href="#">Khoá học lập trình Web</a></li>
				</ul></li>
			<li><a href="thread.jsp">Thảo luận</a></li>
			<li><a href="adminGuiMail.jsp">Liên hệ</a></li>
			<li><a href="#">Giới thiệu</a></li>
		</ul>
		</nav>
	</div>
</div>
</header>
<p></p>
<body>
	<div class="paper" >
		<table class="tbBody">
			<tr>
				<td class="content-left">

					<div class="panel panel-primary" style="padding-top: 0px">
						<div class="panel-body">

							<ul class="nav navs-tabs-brand">
								<li class="active"><a href="admin.jsp"
									class="list-group-item" style="z-index: 0"><i
										class="glyphicon glyphicon-home"></i>
										&nbsp;&nbsp;&nbsp;&nbsp;Trang chủ quản trị</a></li>

								<li class="active"><a href="quanlykhoahoc.jsp"
									class="list-group-item"><i
										class="glyphicon glyphicon-education"></i>&nbsp;&nbsp;&nbsp;&nbsp;
										Quản lý khoá học</a></li>

								<li class="active"><a href="threadadmin.jsp"
									class="list-group-item"><i
										class="glyphicon glyphicon-comment"></i>
										&nbsp;&nbsp;&nbsp;&nbsp;Thread thảo luận</a></li>

								<li class="active"><a href="admingiangday.jsp"
									class="list-group-item active" style="z-index: 0"><i
										class="glyphicon glyphicon-calendar"></i>
										&nbsp;&nbsp;&nbsp;&nbsp;Kế hoạch giảng dạy</a></li>

								<li class="active"><a href="adminQuanLyHocVien.jsp"
									class="list-group-item"><i class="glyphicon glyphicon-user"></i>
										&nbsp;&nbsp;&nbsp;&nbsp;Quản lý học viên</a></li>

								<li class="active"><a href="adminGuiMail.jsp"
									class="list-group-item"><i
										class="glyphicon glyphicon-envelope"></i>&nbsp;&nbsp;&nbsp;&nbsp;
										Gửi mail cho sinh viên</a></li>

								<li class="active"><a href="admindanhsachhocvien.jsp"
									class="list-group-item"><i
										class="glyphicon glyphicon-list-alt"></i>&nbsp;&nbsp;&nbsp;&nbsp;
										Bài tập của học viên</a></li>

								<li class="active"><a href="admindethitracnghiem.jsp"
									class="list-group-item"><i
										class="glyphicon glyphicon-pencil"></i>
										&nbsp;&nbsp;&nbsp;&nbsp;Đề thi trắc nghiệm</a></li>

							</ul>
						</div>
					</div>
				</td>
				<td class="content-center">
					<table class="ria">
						<tr>
							<td width="5%"></td>
							<td width="90%">

								<div class="panel panel-default" >
									<div class="panel-heading" style="background: #0CC">
										<h4 style="font-family: verdana; color: #000">Bài giảng
											lập trình c căn bản</h4>
									</div>
									<p>
										<font size="6" color="red"> Bài 1: Giới thiệu về lập
											trình c căn bản </font>
									</p>
									<div class="btn btn-default"
										style="text-align: left; width: 100%; background-image: url(images/Untitled.png)">
										BÀI 1: LÀM QUEN VỚI NGÔN NGỮ LẬP TRÌNH<br /> Giới thiệu về
										ngôn ngữ lập trình.<br /> Demo project mẫu (môi trường visual
										studio 2013):<br /> Ví dụ: xuất ra màn hình câu: “this is my
										first project”<br /> <br /> Cấu trúc của chương trình<br />
										Các kiểu dữ liệu cơ bản. Các bước lập trình Các hàm nhập xuất
										chuẩn Demo project mẫu: Tính tổng 2 số nguyên a, b <br /> Các
										hàm tính toán<br /> Bài tập áp dụng<br /> Bài tập về nhà (có
										đưa lời giải ở Bài 2)<br />
									</div>

									<a href="adminnoidungbainop.jsp"> <img
										src="images/icondocument.JPG"> <span
											class="instancename">Bài giảng: Bài 1<span
												class="accesshide "> Page</span></span></a> <br> <a
										href="adminnoidungbainop.jsp"> <img
											src="images/videoicon.JPG"> <span class="instancename">Video:
													Bài 1<span class="accesshide "> Page</span>
											</span></a> <br>
											<hr />
											<p>
												<font size="6" color="red"> Bài 2: Giới thiệu về lập
													trình c căn bản </font>
											</p>
											<div class="btn btn-default"
												style="text-align: left; width: 100%; background-image: url(images/Untitled.png)">
												BÀI 2: LÀM QUEN VỚI NGÔN NGỮ LẬP TRÌNH<br /> Giới thiệu về
												ngôn ngữ lập trình.<br /> Demo project mẫu (môi trường
												visual studio 2013):<br /> Ví dụ: xuất ra màn hình câu:
												“this is my first project”<br />
											</div> <a href="adminnoidungbainop.jsp"> <img
												src="images/homework.png"> <span class="instancename">Bài
														tập: Bài 2<span class="accesshide "> Page</span>
												</span></a> <br> <a href="adminnoidungbainop.jsp"> <img
													src="images/videoicon.JPG"> <span
														class="instancename">video: Bài 2<span
															class="accesshide "> Page</span></span></a> <br>
													<hr />
								</div>
							</td>
							<td width="5%"></td>
						</tr>
					</table>
				</td>
		</table>
		<footer>
		<div class="container">
			<div class="footer-info text-center">
				<p>
					Group 12 Copyright&copy; 2016 Designer</a><br>
				</p>
			</div>
		</div>
		</footer>
	</div>
</body>
</html>