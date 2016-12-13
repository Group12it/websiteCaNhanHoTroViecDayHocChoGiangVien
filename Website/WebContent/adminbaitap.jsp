<%@page import="java.lang.*"%>
<%@page import="model.*"%>
<%@page import="dao.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Website Cá nhân hỗ trợ giáo viên dạy học</title>
<link rel="shortcut icon" href="images/head.ico" type="image/x-icon" />
<link rel="icon" href="images/head.ico" type="image/x-icon" />

<script type="text/javascript" src="js/bootstrap-timepicker.min.js"></script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<%
		String machitiekh = "";
		if (request.getParameter("chitietkhoahocs") != null) {
			machitiekh = (String)(request.getParameter("chitietkhoahocs"));
		}
	%>


	<div id="wrapper">
		<div class="container">
			<div class="panel panel-primary hoidap">
				<div class="panel-heading">
					<center>
						<b><h3>
								<span class="glyphicon glyphicon-education"> </span> BÀI TẬP CHO
								HỌC VIÊN
							</h3></b>

					</center>
				</div>

				<!-- 			d -->
				<div class="panel-body">
					<div class="row">
						<div class="content col-md-12 col-sm-9 col-xs-12">
							<div class="container">
								<div class="row">
									<div class="col-md-11">
										<div class="panel panel-default">
											<!-- 										  <div class="panel panel-default" > -->

											<div class="panel-heading" style="background: #0CC">
												<h3 style="font-family: verdana; color: #FFF">
													Bài tập <a href="xem-bai-giang?">
														<button type="button"
															class="btn btn-danger navbar-btn pull-right"
															style="border-radius: 15px; margin-right: 30px;">Quay
															lại</button>
													</a> <br></br>
												</h3>
											</div>
										<form action="AdminBaiTapServlet" method="post">
											<div>
												<input  type="hidden" name="machitietkh" id="tenbaitap" value="<%=machitiekh%>">
											</div>
											<div class="form-group">
												<label class="control-label col-md-4" for="tenbaitap">Tên
													bài tập:</label><br> <input class="form-control" type="text"
													name="tenbaitap" id="tenbaitap">
											</div>

								
											<div class="form-group">
												<label class="control-label col-md-4" for="yeucaubaitap">Yêu
													cầu bài tập</label><br>
												<textarea class="form-control" id="yeucaubaitap" rows="5"
													cols="100" name="yeucaubaitap"></textarea>
											</div>
											<div class="form-group">

												<lable class="control-label col-md-4" for="ngayketthuc">Ngày
												kết kết thúc :</lable>
												<br> <br> <input type="date" class="form-control"
													name="ngayketthuc" id="ngayketthuc" />

											</div>

											<div class="form-group">
												<lable>Thời gian kết thúc :</lable>
												<br> <br>
												<div class="input-group bootstrap-timepicker timepicker">
													<input id="timepicker1" type="text"
														class="form-control input-small" name="thoigianketthuc">
													<span class="input-group-addon"><i
														class="glyphicon glyphicon-time"></i></span>
												</div>
											</div>
											<div class="form-group">


												<br>


												<center>
													<input class="btn btn-info" type="submit" value="OK">
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

			<!-- 				s -->

		</div>

	</div>
	




	<script type="text/javascript">
		$('#timepicker1').timepicker();
	</script>

	<script type="text/javascript">
		$(function() {
			$('#datetimepicker1').datetimepicker();
		});
	</script>
	<jsp:include page="footer.jsp"></jsp:include>
	<script src="js/bootstrap.min.js"></script>
</body>
</body>
</html>