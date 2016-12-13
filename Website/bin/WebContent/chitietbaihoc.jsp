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
<!-- Bootstrap -->

<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<style>
#your-div {
	word-wrap: break-word;
}
</style>

</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>

	<sql:setDataSource var="DBConnect" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost/web" user="root" password="admin" />

	<%
		Users users = null;
		if (session.getAttribute("user") != null) {
			users = (Users) session.getAttribute("user");
		}
	%>

	<sql:query dataSource="${DBConnect }" var="result"> select * from users where Email="<%=users.getUserEmail()%>";</sql:query>


	<%
		ChiTietKhoaHocDAO chitietkhoahocDAO = new ChiTietKhoaHocDAO();
		KhoaHocsDAO khoahocDao = new KhoaHocsDAO();
		String khoahocid = "";
		if (request.getParameter("khoahoc") != null) {
			khoahocid = request.getParameter("khoahoc");
		}
		
		String khoahocchitietid = "";
		if (request.getParameter("chitietkhoahocs") != null) {
			khoahocchitietid = request.getParameter("chitietkhoahocs");
		}
		
	%>


	<section class="container" style="min-height:270px"> <section
		class="row">

	<div id="wrapper">
		<div class="container">
			<div class="panel panel-primary hoidap">
				<div class="panel-heading">
					<center>
						<b><h3>
								<span class="glyphicon glyphicon-education"> </span> KHOÁ HỌC
								CỦA BẠN
							</h3></b>
						
					</center>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="content col-md-12 col-sm-9 col-xs-12">
							<div class="container">
								<div class="row">
									<div class="col-md-11">
										<div class="panel panel-default">
											<div class="col-md-4">
											<%for (ChiTietKhoaHoc ctkh:chitietkhoahocDAO.getChiTietKhoaHocByIDCT(khoahocchitietid)	)
											{
											%>
											<h3><%=ctkh.getTenBaiHoc() %> </h3>
													 <iframe width="560" height="400" src="<%=ctkh.getPathVideo() %>?modestbranding=1" frameborder="0" allowfullscreen>
                       							 </iframe>
												<%} %>
											</div>
										</div>

									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>

		</div>
	</div>
	</div>
	</section></section>

	<jsp:include page="footer.jsp"></jsp:include>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
</body>
</html>