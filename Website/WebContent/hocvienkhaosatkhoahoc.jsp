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
		int kk=0;
		KhaoSatKhoaHocDAO khaoSatDAO=new KhaoSatKhoaHocDAO();
		if(khaoSatDAO.checktrangthaiKhaosat(String.valueOf(users.getUserID()), String.valueOf(khoahocid))){
			kk=1;
		}
		
		
		
	%>
<sql:query dataSource="${DBConnect }" var="result"> select * from users where Email="<%=users.getUserEmail()%>";</sql:query>


	<section class="container" style="min-height:270px"> <section
		class="row">

	<div id="wrapper">
		<div class="container">
			<div class="panel panel-primary hoidap">
				<div class="panel-heading">
					<center>
						<b><h3>
								<span class="glyphicon glyphicon-education"> </span>KHẢO SÁT KHOÁ HỌC
								
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
											<%for (KhoaHocs kh:khoahocDao.getKhoaHocListByID(khoahocid) )
											{
											%>
											<h2 style="color: blue">Khoá học <%=kh.getAdTenKH() %> </h2>
													
											<%} %>
											</div> 
											
											<div class="col-md-12">
											<form action="khao-sat" method="post" >
												<input type="hidden" name="makh" value="<%=khoahocid%>">
												<input type="hidden" name="userid" value="<%=users.getUserID()%>">
												
												<span class="label label-primary" style="size: 30">Khoá học này có bổ ích đối với bạn không?</span><br>
												Hoàn toàn đồng ý <input type="radio" name="cau1" value="4" id="cau11"> 
												Đồng ý		<input type="radio" name="cau1" value="3" id="cau12">
												Phân vân <input type="radio" name="cau1" value="2" id="cau13">
												Không đồng ý	<input type="radio" name="cau1" value="1" id="cau14">
												Hoàn toàn không đồng ý  <input type="radio" name="cau1" value="0" id="cau15">
										

														<br>
											<br> <span class=" label label-primary">Nội dung bài học này là tốt?
															</span><br>
														Hoàn toàn đồng ý	 <input type="radio" name="cau2" value="4" id="cau21">
														Đồng ý <input type="radio" name="cau2" value="3" id="cau22">
														Phân vân <input type="radio" name="cau2" value="2" id="cau23">
														Không đòng ý <input type="radio" name="cau2" value="1" id="cau24">
														Hoàn toàn không đồng ý <input type="radio" name="cau2" value="0" id="cau25">
								<br><br>
														<span class="label label-primary" style="size: 30">Khóa học cung cấp cho bạn những kiến thức cần thiết?
														</span><br>
													Hoàn toàn đồng ý <input type="radio" name="cau3" value="4" id="cau31"> 
													Đồng ý		<input type="radio" name="cau3" value="3" id="cau32">
													Phân vân <input type="radio" name="cau3" value="2" id="cau33">
													Không đồng ý	<input type="radio" name="cau3" value="1" id="cau34">
													 Hoàn toàn không đồng ý	<input type="radio" name="cau3" value="0" id="cau35">
														
														<br>
														<br> <span class="label label-primary">Bạn hài lòng về khoá học này?</span><br>
														Hoàn toàn đồng ý <input type="radio" name="cau4" value="4" id="cau41">
														Đồng ý <input type="radio" name="cau4" value="3" id="cau42">
														Phân vân <input type="radio" name="cau4" value="2" id="cau43">
														Không đồng ý <input type="radio" name="cau4" value="1 id=" cau44">
														Hoàn toàn không đồng ý	<input type="radio" name="cau4" value="0" id="cau45">
														<br>
														<br>
														<span class="label label-primary">Bạn hài lòng về khoá học này?</span><br>
														Hoàn toàn đồng ý <input type="radio" name="cau5" value="4" id="cau51">
														Đồng ý <input type="radio" name="cau5" value="3" id="cau52">
														Phân vân <input type="radio" name="cau5" value="2" id="cau53">
														Không đồng ý <input type="radio" name="cau5" value="1" id="cau54">
														Hoàn toàn không đồng ý	<input type="radio" name="cau5" value="0" id="cau55">
														<br>
														<br>
											
														<span class=" label label-primary">Ý kiến đề xuất của bạn cho bài giảng tốt hơn
														</span>
														<br></br>
														<div class="">
													
														<textarea class="form-control" rows="" cols="" name="ykienkhaosat"></textarea>
														</div>
														<br>
														<div class="">	
														<center> 
														<%if(kk==0){ %>
														
														<button type="submit" class="btn btn-info">Gửi đánh giá</button>
														<%}else{ %>
														<button type="button" class="btn btn-info" disabled>Đã đánh giá</button>
														<%} %>
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
				</div>
				
<!-- 				s -->
				
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