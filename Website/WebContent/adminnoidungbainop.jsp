<%@ page import="java.sql.*"%>
<%@ page import="connect.*"%>
<%@ page import="java.util.*"%>
<?xml version="1.0" encoding="utf-8" ?>
<%@page import="model.DapAnHocViens"%>
<%@page import="dao.DapAnHocVienThiDAO"%>
<%@page import="model.Diems"%>
<%@page import="dao.DiemsDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta content="charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<SCRIPT LANGUAGE="JavaScript">
	function confirmAction() {
		return confirm("Bạn Đã Thực Hiện Thao Tác Thành Công")
	}
</SCRIPT>
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Website Cá nhân hỗ trợ giáo viên dạy học</title>
<link rel="shortcut icon" href="images/head.ico" type="image/x-icon" />
<link rel="icon" href="images/head.ico" type="image/x-icon" />

</head>



<body>

	<jsp:include page="header.jsp"></jsp:include>

	<%
		String madethi = "";
		if (request.getParameter("madethi") != null) {
			madethi = request.getParameter("madethi");
		}

		String dapan = "";
		if (request.getParameter("dapanhv") != null) {
			dapan = request.getParameter("dapanhv");
		}
		Connection connection = DBConnect.getConnection();
		Statement statement = connection.createStatement();
		ResultSet resultset = statement
				.executeQuery("select * from viewdanhsachnopbai where DapAnID='" + dapan + "'");
		DapAnHocVienThiDAO dapanhvDAO = new DapAnHocVienThiDAO();
	%>
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
												&nbsp;&nbsp;&nbsp;&nbsp;Trang chủ quản trị</a></li>

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
												Bài thi của học viên<i class="glyphicon glyphicon-menu-right text-right"></i> </a></li>

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

							<a class="list-group-item text-center " href="#" s
								tyle="font-size: 20px; color: blue; background: #0CC">Chi
								Tiết Bài Nộp</a>

							<form action="cham-diem" method="post"
								onSubmit="return formaction()">

								<%
									while (resultset.next()) {
								%>
								<input type="hidden" name="userid"
									value="<%=resultset.getString(1)%>" /> <input type="hidden"
									name="made" value="<%=resultset.getString(4)%>" /> <input
									type="hidden" name="makh" value="<%=resultset.getString(5)%>" />
								<div class="col-md-8">
									<label>Đáp án của sinh viên: <%=resultset.getString(2)%></label>
									<br></br> <label><%=resultset.getString(6)%></label>

								</div>

								<%
									}
								%>

								<div class="col-md-12">
									<button type="button" class="">
										Nhập Điểm: <input type="number" name="diem"
											class="form-control" min="0" max="10" step="0.5"
											required="required" height="10" width="20" />
									</button>
								</div>
								<br></br>

								<div class="col-md-12">
									<label>Nhận Xét</label>
									<textarea name="nhanxet" id="input" class="form-control"
										rows="3" required="required"></textarea>
								</div>
								<br></br>
								<div class="col-md-12">
									<br />
									<center>
										<Button type="submit" class="btn btn-info">Chấm điểm</Button>
									</center>
								</div>

							</form>

						</div>

					</div>

				</div>
			</div>
		</div>
	</div>

	</div>

	</div>

	<jsp:include page="footer.jsp"></jsp:include>

	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>

	<script type="text/javascript">
		function formaction() {
			return alert('Thao tác thành công');

		}
	</script>


</body>
</html>