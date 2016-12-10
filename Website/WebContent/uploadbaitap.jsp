<%@ page import="java.sql.*"%>
<%@ page import="connect.*"%>
<%
	Class.forName("com.mysql.jdbc.Driver");
%>

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
		UsersDAO userdao = new UsersDAO();
		KhoaHocsDAO khoahocsDAO = new KhoaHocsDAO();
		Users users = null;
		if (session.getAttribute("user") != null) {
			users = (Users) session.getAttribute("user");
		}
		BaiTapHocVienNopDAO btnopDAO=new BaiTapHocVienNopDAO();
		ChiTietKhoaHocDAO chitietkhoahocDAO = new ChiTietKhoaHocDAO();
		KhoaHocsDAO khoahocDao = new KhoaHocsDAO();
		String khoahocchitietid = "";
		if (request.getParameter("chitietkhoahocs") != null) {
			khoahocchitietid = request.getParameter("chitietkhoahocs");
		}
	
		String baitapid = "";
		if (request.getParameter("abaitap") != null) {
			baitapid = request.getParameter("abaitap");
		}
		AdminBaiTapDAO adminbaitapdao = new AdminBaiTapDAO();
		
		
		int kk=0;
		if(btnopDAO.checktrangthainop2(String.valueOf(users.getUserID()),String.valueOf(khoahocchitietid))){
			 kk=1;
		}
		
	%>
	<div id="wrapper">
		<div class="container">
			<div class="row">
				<div class="content col-md-12 col-sm-9">
					<div class="container">
						<div class="row">


							<div class="col-md-12">
								<form action="nopbaitaphocvien" method="post"
									enctype="multipart/form-data">
									<div class="panel panel-default">
										<%
											for (ChiTietKhoaHoc ctkh : chitietkhoahocDAO.getChiTietKhoaHocByIDCT(khoahocchitietid)) {
										%>
										<div class="panel-heading" style="background: #0CC">
											<h3 style="font-family: verdana; color: #FFF">
												Bài tập
												<%=ctkh.getTenBaiHoc()%>
												<a
													href="chi-tiet-khoa-hoc-cua-toi?khoahoc=<%=ctkh.getMakh()%>">
													<button type="button"
														class="btn btn-danger navbar-btn pull-right"
														style="border-radius: 15px; margin-right: 30px;">Quay
														lại</button>
												</a> <br></br>
											</h3>
										</div>

										<input type="hidden" name="makh" value="<%=ctkh.getMakh()%>">
										<input type="hidden" name="chitietkhoahocids"
											value="<%=ctkh.getChitietKhoaHocID()%>">

										<%
											}
										%>

										<input type="hidden" name="userids"
											value="<%=users.getUserID()%>">
										<%
											for (AdminBaiTap s : adminbaitapdao.getAdminBaiTapListByID(Long.parseLong(khoahocchitietid))) {
										%>
										<p>
											<font size="5"> <%=s.getTenBaiTap()%>
											</font>
										</p>
										<input type="hidden" name="idbaitaps"
											value="<%=s.getIDBaiTap()%>"> <input type="hidden"
											name="tenbaitaps" value="<%=s.getTenBaiTap()%>">
										<div class="form-group">
										
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
												<%if(kk==1){%>
													<th>Đã nộp</th>
													<%}else{ %>
													<th>Chưa nộp</th>
													<% }%>
												</tr>

												<tr>
													<th>Hạn chót</th>
													<th><%=s.getHanNop()%>&nbsp;<%=s.getGioNop()%></th>
												</tr>
												<tr>
													<%
														Connection connect = DBConnect.getConnection();
															Statement statement = connect.createStatement();
															ResultSet resultset = statement
																	.executeQuery("select * from viewhannopbai where IDBaiTap='" + s.getIDBaiTap() + "'");
															String chuoigio = "";
															while (resultset.next()) {
																int ngay = Integer.parseInt(resultset.getString(7));
																int gio = Integer.parseInt(resultset.getString(8));
																int h = 0;
																int m = 0;
																int second = gio;
																int seconds = gio;
															
																if (ngay >= 0 && gio > 0) {
																	ngay = Integer.parseInt(resultset.getString(7));
																	second = seconds;
																	h = second / 3600;
																	second = second % 3600;
																	m = second / 60;
																	second = second % 60;
																}
																if (ngay > 0 && gio < 0) {
																	ngay = ngay - 1;
																	seconds = -gio;
																	second = 86400 - seconds;
																	h = second / 3600;
																	second = second % 3600;
																	m = second / 60;
																	second = second % 60;
																}

																if (gio < 0 && ngay <= 0) {
																	ngay=ngay+0;	
																	seconds = -gio;
																	second = -seconds;
																	h = second / 3600;
																	second = second % 3600;
																	m = second / 60;
																	second = second % 60;

																}
																int l = ngay;

																String thoigian = h + " Giờ " + m + " Phút " + second + " Giây";
													%>
													<th>Thời gian còn lại</th>
													<th><font color="red"><%=l%>&nbsp;
															Ngày&nbsp;&nbsp; <%=thoigian%>&nbsp;&nbsp; </font></th>
												</tr>

											</tbody>

										</table>

									</div>


									<div class="form-group">
										<label for="contactghichu">Ghi chú</label><br>
										<textarea class="form-control" rows="5" cols="100"
											name="contactghichu" required autofocus></textarea>
									</div>
									<label>Bài tập nộp</label><br> <input id="file"
										type="file" name="file" enctype="multipart/form-data" required autofocus /> <br>
									<br>

									<%
										if (ngay > 0 || (ngay == 0 && gio > 0)) {
											if(kk==0){
									%>
									<button class="btn btn-info navbar-btn" id="btnsubmit"
										name="btnsubmit" style="margin-left: 500px;">Nộp bài
										tập</button>
									<%
											}else{
												
											%>
											<button disabled="disabled" class="btn btn-info navbar-btn"
										id="btnsubmit" name="btnsubmit" style="margin-left: 500px;">Nộp
										bài tập</button>
											<%} %>	
											
											
									<%	
										} else if(ngay<0 ||(ngay==0 && gio <0)) {
									%>
									<button disabled="disabled" class="btn btn-info navbar-btn"
										id="btnsubmit" name="btnsubmit" style="margin-left: 500px;">Nộp
										bài tập</button>
									<%
										}
									%>


									<%
										}
									%>


									<%
										}
									%>

								</form>
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