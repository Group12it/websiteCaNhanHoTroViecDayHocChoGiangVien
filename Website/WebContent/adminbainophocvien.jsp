<%@ page import="java.sql.*"%>
<%@ page import="connect.*"%>
<%@ page import="java.util.*"%>
<?xml version="1.0" encoding="utf-8" ?>
<%@page import="dao.ChiTietKhoaHocDAO"%>
<%@page import="dao.DanhSachHVThiDAO"%>
<%@page import="model.DSHVlamBaiThi"%>
<%@page import="model.KhoaHocs"%>
<%@page import="dao.KhoaHocsDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head>
<meta content="charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Website Cá nhân hỗ trợ giáo viên dạy học</title>
<link rel="shortcut icon" href="images/head.ico" type="image/x-icon" />
<link rel="icon" href="images/head.ico" type="image/x-icon" />
</head>

<body>

	<%
		ChiTietKhoaHocDAO chitietkh = new ChiTietKhoaHocDAO();
		long madethi = -1;
		if (request.getParameter("madethi") != null) {
			madethi = Long.parseLong(request.getParameter("madethi"));
		}
		KhoaHocsDAO khoahocdao = new KhoaHocsDAO();
		String makh = "";
		if (request.getParameter("makh") != null) {
			makh = request.getParameter("makh");
		}

		String userid = "";
		if (request.getParameter("userid") != null) {
			userid = request.getParameter("userid");
		}

		String dapanid = "";
		if (request.getParameter("dapanhv") != null) {
			dapanid = request.getParameter("dapanhv");
		}

		Connection connection = DBConnect.getConnection();
		Statement statement = connection.createStatement();
		ResultSet resultset = statement.executeQuery("select * from viewhocviennopbai where MaDeThi='" +makh + "'");
	%>



	<jsp:include page="header.jsp"></jsp:include>
	<div id="wrapper">
		<div class="container">
			<div class="row">

				<div class="container">
					<div class="row">

						<div class="col-md-3">
							<div class="panel panel-primary" style="padding-top: 0px">
								<div class="panel-body">

										<ul class="nav navs-tabs-brand">
										<li class="active"><a href="trang-chu-quan-tri" class="list-group-item" style="z-index: 0"><i class="glyphicon glyphicon-home"></i>
												&nbsp;&nbsp;&nbsp;&nbsp;Trang chủ quản trị </a></li>

										<li class="active"><a href="quanly-khoa-hoc"
											class="list-group-item " style="z-index: 0"><i
												class="glyphicon glyphicon-education"></i>&nbsp;&nbsp;&nbsp;&nbsp;
												Quản lý khoá học</a></li>

										<li class="active"><a href="quan-ly-thread"
											class="list-group-item" style="z-index: 0"><i
												class="glyphicon glyphicon-comment"></i>
												&nbsp;&nbsp;&nbsp;&nbsp;Thread thảo luận</a></li>

										<li class="active"><a href="ke-hoach-giang-day"
											class="list-group-item"><i
												class="glyphicon glyphicon-calendar"></i>
												&nbsp;&nbsp;&nbsp;&nbsp;Kế hoạch giảng dạy</a></li>

										<li class="active"><a href="quan-ly-hoc-vien"
											class="list-group-item" style="z-index: 0"><i
												class="glyphicon glyphicon-user"></i>
												&nbsp;&nbsp;&nbsp;&nbsp;Quản lý học viên</a></li>

										<li class="active"><a href="gui-mail"
											class="list-group-item" style="z-index: 0"><i
												class="glyphicon glyphicon-envelope"></i>&nbsp;&nbsp;&nbsp;&nbsp;
												Gửi mail cho sinh viên</a></li>

										<li class="active"><a href="xem-danh-sach-bai-tap"
											class="list-group-item" style="z-index: 0"><i
												class="glyphicon glyphicon-book"></i>&nbsp;&nbsp;&nbsp;&nbsp;
												Bài tập của học viên</a></li>
										
										
										<li class="active"><a href="danh-sach-hoc-vien-nop-bai"
											class="list-group-item active" style="z-index: 0"><i
												class="glyphicon glyphicon-list-alt"></i>&nbsp;&nbsp;&nbsp;&nbsp;
												Bài thi của học viên<i class="glyphicon glyphicon-menu-right text-right"></i></a></li>

										<li class="active"><a href="them-de-thi-trac-nghiem"
											class="list-group-item" style="z-index: 0"><i
												class="glyphicon glyphicon-record"></i>
												&nbsp;&nbsp;&nbsp;&nbsp;Đề thi trắc nghiệm</a></li>
										
										<li class="active"><a href="quan-ly-tai-khoan"
											class="list-group-item" style="z-index: 0"><i
												class="glyphicon glyphicon-user"></i>
												&nbsp;&nbsp;&nbsp;&nbsp;Quản lý tài khoản</a></li>
												
												<li class="active"><a href="danh-sach-khoa-hoc-khao-sat"
											class="list-group-item" style="z-index: 0"><i
												class="glyphicon glyphicon-stats"></i>
												&nbsp;&nbsp;&nbsp;&nbsp;Kết quả khảo sát KH</a></li>
										
											<li class="active"><a href="quan-ly-bai-tap"
											class="list-group-item " style="z-index: 0"><i
												class="glyphicon glyphicon-bookmark"></i>
												&nbsp;&nbsp;&nbsp;&nbsp;Quản lý bài tập</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-md-9">
							<ul class="nav navs-tabs-brand">

								<a class="list-group-item text-center " href="#"
									style="font-size: 20px; color: blue; background: #0CC">Bài
									Thi Của Học Viên</a>
								</br>

								<table class="table table-striped" border="1">
									<thead>
										<tr>
											<th dir="rtl" style="background: #0CC">STT</th>
											<th dir="rtl" style="background: #0CC">Mã học viên</th>
											<th dir="rtl" style="background: #0CC">Tên học viên</th>
											<th dir="rtl" style="background: #0cc">Điểm kiểm tra</th>
										</tr>

									</thead>
									<tbody>





										<%
											int i = 0;
											while (resultset.next()) {
												i++;
										%>
										<tr>
											<td><%=i%></td>
											<td><%=resultset.getString(2)%></td>
											<td><%=resultset.getString(3)%></td>
											<td><%=resultset.getString(4) %></td>
										</tr>
										<%
											}
										%>
									</tbody>
								</table>
							</ul>


						</div>

					</div>

				</div>
			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>


	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
</body>
</html>