<%@ page import="java.sql.*" %>
<%@ page import="connect.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>

<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="net.sourceforge.jtds.jdbc.DateTime"%>
<%@page import="connect.DBConnect.*"%>
<%@page import="java.lang.*"%>
<%@page import="model.*"%>
<%@page import="dao.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta content="charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Website Cá nhân hỗ trợ giáo viên dạy học</title>
<link rel="shortcut icon" href="images/head.ico" type="image/x-icon" />
<link rel="icon" href="images/head.ico" type="image/x-icon" />
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>

	<%
		Connection connect=DBConnect.getConnection();

		Statement statement = connect.createStatement();
		ResultSet resultset = statement.executeQuery("select * from viewhannopbai where IDBaiTap=1");
	%>
	<%
		ChiTietKhoaHocDAO chitietkhoahocDAO = new ChiTietKhoaHocDAO();
		KhoaHocsDAO khoahocDao = new KhoaHocsDAO();
		String khoahocid = "";
		if (request.getParameter("chitietkhoahocs") != null) {
			khoahocid = request.getParameter("chitietkhoahocs");
		}
	%>
	<%
		AdminBaiTapDAO adminbaitapdao = new AdminBaiTapDAO();
		AdminBaiTap adminbaitap = new AdminBaiTap();
	%>
	<div id="wrapper">
		<div class="container">
			<div class="row">
				<div class="content col-md-12 col-sm-9">
					<div class="container">
						<div class="row">


							<div class="col-md-12">
								<div class="panel panel-default">
									<%
										for (ChiTietKhoaHoc ctkh : chitietkhoahocDAO.getChiTietKhoaHocByIDCT(khoahocid)) {
									%>
									<div class="panel-heading" style="background: #0CC">
										<h3 style="font-family: verdana; color: #FFF">
											Bài tập
											<%=ctkh.getTenBaiHoc()%>
											<a href="khoa-hoc-cua-toi">
												<button type="button"
													class="btn btn-danger navbar-btn pull-right"
													style="border-radius: 15px; margin-right: 30px;">Quay
													lại</button>
											</a> <br></br>
										</h3>
									</div>
									<%
										}
									%>
									<%
										for (AdminBaiTap s : adminbaitapdao.getAdminBaiTapListByID(1)) {
									%>
									<p>
										<font size="5"> <%=s.getTenBaiTap()%>
										</font>
									</p>
									<div class="btn btn-default"
										style="text-align: left; width: 100%; background-image: url(images/Untitled.png)">
										<%=s.getNoiDungBaiTap()%>

									</div>
									<h3 color="red">Trạng thái nộp bài tập</h3>
									<table class="table table-striped">
										<thead>
											<tr>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th>Trạng thái nộp</th>
												<th>Chưa</th>
											</tr>

											<tr>
												<th>Hạn chót</th>
												<th><%=s.getHanNop()%>&nbsp;<%=s.getGioNop() %></th>
											</tr>
											<tr>
												<%
														String chuoigio="";
														while (resultset.next()) {
														int ngay=Integer.parseInt(resultset.getString(7));
														
														/*if(resultset.getString(7).length()==9)
														{
															chuoigio=resultset.getString(7).substring(1,9);
														}
														else
														{
															chuoigio=resultset.getString(7);
														}*/
												%>
												<th>Thời gian còn lại</th>
												<th><font color="red"><%=resultset.getString(7)%>&nbsp;Ngày&nbsp; </font>
												
												</th>
											</tr>

										</tbody>

									</table>

								</div>
								<div class="form-group">
									<label for="contactghichu">Ghi chú</label><br>
									<textarea class="form-group" id="contactghichu" rows="5"
										cols="132" name="contactghichu"></textarea>
								</div>
								<label>Bài tập nộp</label><br> <input id="file"
									type="file" name="files" enctype="multipart/form-data" /> <br>
								<br>
								<%
								if(ngay>0)
								{
								%>
								<button class="btn btn-info navbar-btn" id="btnsubmit"
									name="btnsubmit" style="margin-left: 500px;">Nộp bài
									tập</button>
								<%}else{ %>
								<button disabled="disabled" class="btn btn-info navbar-btn" id="btnsubmit"
									name="btnsubmit" style="margin-left: 500px;">Nộp bài
									tập</button>
								<%  } %>
								
								
									<%} %>
								<%
									}
								%>
							</div>
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