<%@page import="dao.ChiTietThreadsDAO"%>
<%@page import="model.*"%>
<%@page import="dao.ThreadsDAO"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta content="charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Website Cá nhân hỗ trợ giáo viên dạy học</title>

<link rel="shortcut icon" href="images/head.ico" type="image/x-icon" />
<link rel="icon" href="images/head.ico" type="image/x-icon" />
</head>

<body>

<%-- 	<sql:setDataSource var="DBConnect" driver="com.mysql.jdbc.Driver" --%>
<%-- 		url="jdbc:mysql://node177650-nhom12it.jelastic.servint.net/web" --%>
<%-- 		user="root" password="CCJD98OftR" /> --%>
<sql:setDataSource var="DBConnect" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost/web" user="root" password="admin" />
	<jsp:include page="header.jsp"></jsp:include>

	<sql:query dataSource="${DBConnect }" var="result"> select * from chitietthread;</sql:query>

	<%
		Users users = new Users();
		if (session.getAttribute("user") != null) {
			users = (Users) session.getAttribute("user");
		}

		ThreadsDAO threadsDao = new ThreadsDAO();
		ChiTietThreadsDAO chitietthreadDAO = new ChiTietThreadsDAO();
		String threadid = "";
		if (request.getParameter("thread") != null) {
			threadid = request.getParameter("thread");
		}
	%>
	<section class="container" style="min-height:100px"> <section
		class="row">
	<div class="col-md-12">
		<div class="maincontent col-lg-12" style="padding: 0">
			<div class="panel panel-primary hoidap">

				<div class="panel-body" style="padding: 0">
					<div class="panel ">
						<div class="panel-body">
							<form action="Thaoluan" method="post">
								<div class="validation-summary-valid text-danger"
									data-valmsg-summary="true">
									<ul>
										<li style="display: none"></li>
									</ul>
								</div>
								<input data-val="true"
									data-val-number="The field Mã câu hỏi must be a number."
									data-val-required="The Mã câu hỏi field is required."
									id="MaCauHoi" name="MaCauHoi" type="hidden" value="99" /> <input
									name="__RequestVerificationToken" type="hidden"
									value="Lnj7bITUxRjmYdithh-kxyIewsUB_dJBdwWP2HKT36rUFbVcTB00dS-LCYJbAsab0hl3hefvPsduiu4cJQCuKSpkRbAeedauALux6YhiGjIQBbD-V9qAZF9xlV4NHHD2Bj3iueS9eqg2chwchX8_6w2" />

								<div class="form-group">
									<%
										for (Threads thr : threadsDao.getThreadsListByID(threadid)) {
									%>
									<h3>
										&nbsp;
										<%=thr.getTenThread()%></h3>
									<input type="hidden" name="mathread"
										value="<%=thr.getThreadID()%>">
									<sql:query dataSource="${DBConnect }" var="result"> select * from chitietthread where MaThread=<%=thr.getThreadID()%>;</sql:query>
									<%
										}
									%>
									<div class="col-lg-10 col-md-9 col-sm-8 fontLarger pull-left"
										style="overflow-wrap: break-word"></div>
									<label>Số câu trả lời</label>
									<c:set var="count" value="0" />
									<%--Khởi tạo biến đếm =0 --%>
									<c:forEach var="rows" items="${result.rows }">
										<c:set var="count" value="${count+1}" />
									</c:forEach>
									<label>${count}</label> <span class="badge"></span>

									<ul class="list-group" id="dscautraloi" style="min-height: 0px">

										<%
											for (ChiTietThreads ct : chitietthreadDAO.getChiTietThreadsListByID(threadid)) {
										%>

										<li class="list-group-item">
											<div class="col-lg-1 col-md-1 col-sm-2 col-xs-3 text-center">
												<img src="images/hoclaptrinh.jpg" width="70" height="70" />
											</div>
											<div class="col-lg-10 col-md-11 col-sm-10 col-xs-9"
												style="overflow: auto;">
												<div style="overflow-wrap: break-word;">
													<p><%=ct.getBinhluan()%></p>
												</div>
											</div> <input type="hidden" name="mathread"
											value="<%=ct.getMathread()%>">
											<div class="text-primary floatLeft thongtinnguoidang">
												<br /> <label class="fontSmall"><span
													class="glyphicon glyphicon-user"> </span> Thành viên: <a
													href="#" data-toggle="tooltip" data-placement="top"
													class="text-primary"><%=ct.getUserID()%></a> </label><br /> <label
													class="fontSmall"><span
													class="glyphicon glyphicon-time"> </span> Ngày đăng: <%=ct.getThoigian()%>
												</label>
											</div>
										</li>
										<%
											}
										%>
									</ul>
									<br></<br> <input type="hidden" name="userid"
										value="<%=users.getUserHoTen()%>">
									<textarea name="binhluan" class="form-control" cols="20"
										data-val="true"
										data-val-required="Nội dung câu trả lời không được bỏ trống."
										rows="5" placeholder="Comment" id="traloi"></textarea>

									<%
										String loi = "";
										if (request.getAttribute("error") != null) {
											loi = (String) request.getAttribute("error");
										}
									%>
									<%
										if (request.getAttribute("error") != null) {
									%>
									<div class="">
										<p style="color: red"><%=request.getAttribute("error")%></p>
									</div>
									<%
										}
									%>



								</div>

								<hr />
								<div style="text-align: center; margin: 20px;">

									<input type="hidden" name="command" value="insertchitiet"></input>
									<button type="submit" class="btn btn-success"
										data-toggle="tooltip" data-placement="right"
										title="Trả lời câu hỏi này">Trả lời</button>
									<a href="thread-thao-luan" class="floatLeft btn btn-primary"
										role="link">Trở về</a>

								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section> </section>

	<jsp:include page="footer.jsp"></jsp:include>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
