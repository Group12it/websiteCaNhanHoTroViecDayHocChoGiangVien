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
Diems diems=new Diems();
DiemsDAO diemDAO =new DiemsDAO();
String dethiID="";
if(request.getParameter("dethis")!=null)
{
	dethiID=request.getParameter("dethis");
}

%>
	<div id="wrapper">
		<div class="container">
			<div class="row">
				<div class="content col-md-9 col-sm-9 col-xs-12">

					<div class="container">
						<div class="row">

							<div class="col-md-1">
								<ul class="nav navs-tabs-brand">
								</ul>
							</div>

							<div class="col-md-7">
								<h1>Điểm kiểm tra</h1>
								<table class="table table-bordered">
									<thead>
									
										<tr style="background: #00a8d8">
											<th>STT</th>
											<th>Tên khóa học</th>
											<th>Điểm kiểm tra</th>
											<th>Nhận xét</th>
										</tr>
									</thead>
									<tbody>
										<%
										int i=0;
										for(Diems diem: diemDAO.getDeThiByMaDeThi(dethiID)){ 
										i++;
										%>
								
										<tr>
											<td><%=i %></td>
											<td><%=diem.getMaDeThi() %></td>
											<td><%=diem.getDiem() %></td>
											<td><%=diem.getNhanXet() %></td>
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
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
</body>
</html>