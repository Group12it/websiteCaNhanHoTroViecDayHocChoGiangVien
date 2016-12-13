<%@page import="java.*" %>
<%@page import="dao.*" %>
<%@page import="model.*" %>

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
UsersDAO userdao =new UsersDAO();
Users users=new Users();
if(session.getAttribute("user")!=null){
	users=(Users) session.getAttribute("user");
}
KhoaHocsDAO khDAO=new KhoaHocsDAO();
DiemsDAO diemDAO =new DiemsDAO();
String khoahocid="";
if(request.getParameter("khoahoc")!=null)
{
	khoahocid=request.getParameter("khoahoc");
}
String userid="";
if(request.getParameter("userid")!=null)
{
	userid=request.getParameter("userid");
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
								<span class="glyphicon glyphicon-education"> </span> XEM ĐIỂM KIỂM TRA
								
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
										<div class="col-md-7">
										<%for(KhoaHocs kh: khDAO.getKhoaHocListByID(khoahocid)){ %>
										
										<h1>
										Khoá học <%=kh.getAdTenKH() %>
										</h1><%} %>
								<table class="table table-bordered">
									
									<tbody>
										<div class="col-md-8">
										<h2>Thông tin:</h2>
										<h3>ID: <%=users.getUserID() %></h3><br>
										<h3>Email: <%=users.getUserEmail() %></h3><br>
										<h3>Tên học viên: <%=users.getUserHoTen() %></h3><br>
										</div>
										<br>
										
										<%
										for(Diems diem: diemDAO.getDeThiByKHandUser(khoahocid, userid)){ 
										
										%>
										
											
											<h3>Mã khoá học: <%=diem.getMaDeThi() %></h3><br>
											<h3>Điểm số: <%=diem.getDiem() %></h3><br>
											<h3>Xếp loại: <%=diem.getNhanXet() %></h3><br>
											<%} %>
									</tbody>
								</table>
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
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
</body>
</html>