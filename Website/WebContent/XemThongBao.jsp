<%@ page import="java.lang.*"%>
<%@ page import="model.*"%>
<%@ page import="dao.*"%>
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
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/stylemenu.css">
<link href="css/banerchuyendong.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.2.0/css/bootstrap.css"
	rel="stylesheet" media="screen">
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/css/bootstrapValidator.min.css"
	rel="stylesheet" />
<link rel="stylesheet" href="css/stylevadidating.css">

<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

</head>

<body>

<sql:setDataSource var="DBConnect" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost/web" user="root" password="admin" />
<%-- 	<sql:setDataSource var="DBConnect" driver="com.mysql.jdbc.Driver" --%>
<%-- 		url="jdbc:mysql://node177650-nhom12it.jelastic.servint.net/web" user="root" password="CCJD98OftR" /> --%>

	<%
           
            Users users = null;
            if (session.getAttribute("user") != null) {
                users = (Users) session.getAttribute("user");
            }
            
            ThongBaoDAO tbDAO=new ThongBaoDAO();
        %>


	<sql:query dataSource="${DBConnect }" var="result">select DISTINCT thongbao.MaThongBao,thongbao.MaKH,thongbao.TenThongBao,thongbao.NoiDungTB,thongbao.ThoiGianTB from thongbao,users,dangkykhoahoc where thongbao.MaKH=dangkykhoahoc.MaKH && dangkykhoahoc.chophep='1' 
	&& dangkykhoahoc.UserID=<%=users.getUserID() %></sql:query>

	<jsp:include page="header.jsp"></jsp:include>




<section class="container" style="min-height:270px"> <section
		class="row">

	<div id="wrapper">
		<div class="container">
			<div class="panel panel-primary hoidap">
				<div class="panel-heading">
					<center>
						<b><h3>
								<span class="glyphicon glyphicon-education"> </span>XEM THÔNG BÁO
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
											<div class="col-md-12">
											<div class="panel panel-default" height="100">
								
										<div class="your-div"
										style="text-align: left; max-width: 100%; background-image:">

											<ul>
											<h2 >Thông báo tới <%=users.getUserHoTen() %></h2>	
											<c:forEach var="rows" items="${ result.rows}">
											<li><h2>Tên thông báo: 	${rows.TenThongBao } <i class="glyphicon glyphicon-bell"></i></h2></li><br>
											<li><h2>Nội dung thông báo:</h2></li><br>
											<h3>	${rows.NoiDungTB }</h3>
												</c:forEach>	
											</ul>
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
				
<!-- 				s -->
				
			</div>

		</div>
	</div>
	
	</section></section>





	<jsp:include page="footer.jsp"></jsp:include>


	<!--Script chuyển động baner-->
	<script src="Scripts/bannerchuyendong.js"></script>
	<!--Script chuyển động baner-->

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
</body>
</html>