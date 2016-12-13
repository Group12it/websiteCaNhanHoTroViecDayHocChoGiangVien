<%@page import="java.*" %>
<%@page import="dao.*" %>
<%@page import="model.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

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
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/stylemenu.css">
    <link href="css/banerchuyendong.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/thongtin.css">
   
  </head>
   <body>
  <jsp:include page="header.jsp"></jsp:include>
<%
 			Users users = null;
            if (session.getAttribute("user") != null) {
                users = (Users) session.getAttribute("user");
            }
%>
<% 
	String loi="";
	if(request.getAttribute("trangthaidangky")!=null)
	{
		  loi=(String) request.getAttribute("trangthaidangky");
	}
		KhoaHocsDAO khoahocsDAO=new KhoaHocsDAO(); //lấy danh sách khoá học
	String makh="";
	if(request.getParameter("khoahoc")!=null){
		makh= request.getParameter("khoahoc");
	}
%>
        <section class="container" style="min-height:0px">
        <section class="row">
        <div class="row">
 <div class="content col-md-9 col-sm-9 col-xs-12">
           
            <div class="container">
                <div class="row">
                <%
                    for(KhoaHocs kh: khoahocsDAO.getKhoaHocListByID(makh)) {
                %>
                     <div class="item col-md-6 col-sm-6 col-xs-12 ">
                          <ul class="nav navs-tabs-brand">
                                    <div class="jumbotron">
                                    <h2>Khoá học <%=kh.getAdTenKH() %></h2>
                              <p>*Khái quát khoá học:</p>
                              <p>&nbsp;&nbsp;&nbsp;&nbsp;<%=kh.getAdKhaiQuat() %></p>
                              <p>*Nội dung: </p>
                              <p>&nbsp;&nbsp;&nbsp;&nbsp;<%=kh.getAdNoiDung()%></p>
                              <p>*Ngày khai giảng: <%=kh.getAdNgayKhaiGiang() %></p> 
                              <p>*Học phí:<%=kh.getAdHocPhi()%></p>
		<%
     	DangKyKhoaHocDAO dkkh=new DangKyKhoaHocDAO();
     	String t=""; 
     	//kiểm tra xem học viên đã đăng ký khoá học này hay chưa
     	if(dkkh.checkEmaildangkykh(users.getUserID(), String.valueOf(kh.getAdMaKH()))==true){
     			 t="loi";
     			
     	 }else 
     	 
     	 {
     		 t="khongloi";
     	 }
     	%>
   			<c:set var="val" value="<%=t %>"/>			
			<c:choose> 
  			<c:when test="${val=='loi'}">
    		<a href="" class="btn btn-danger btn-lg" disabled>Đã đăng ký</a>
  			</c:when>
  			<c:otherwise>
       		<a href="dang-ky-khoa-hoc?userid=<%=users.getUserID()%>&makh=<%= kh.getAdMaKH() %>"  class="btn btn-primary btn-lg">Đăng ký</a>
         	</c:otherwise>
			</c:choose>
	                            </div>
                      </ul>
                  </div>
                     <div class="col-md-6">
                            <h3>Trailer</h3>
                         <a href="#">
                      	 <iframe width="560" height="400" src="<%=kh.getAdShowtester()%>?modestbranding=1" frameborder="0" allowfullscreen>
                        </iframe>
                        </a>
                                
                     </div> 
                	 <%} %>
                      
                </div>
            </div>
            
          </div>

    </div>
    <!--end row-->


        </section>
    </section>

<!-- End of Container -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->

<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/js/bootstrapValidator.min.js" type="text/javascript"></script>
<script>
$('#contactform').bootstrapValidator();
</script>

<jsp:include page="footer.jsp"></jsp:include>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>