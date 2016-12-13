<%@ page import="java.lang.*" %>
<%@ page import="model.*" %>
<%@ page import="dao.*" %>
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
    <link href="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.2.0/css/bootstrap.css" rel="stylesheet" media="screen">
  <link href="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/css/bootstrapValidator.min.css" rel="stylesheet"/>
  <link rel="stylesheet" href="css/stylevadidating.css">
        
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
	
  </head>
  
  <body>
<%-- <sql:setDataSource var="DBConnect" driver="com.mysql.jdbc.Driver" --%>
<%-- 		url="jdbc:mysql://localhost/web" user="root" password="admin" /> --%>
	
      <%
           
            Users users = null;
            if (session.getAttribute("user") != null) {
                users = (Users) session.getAttribute("user");
            }
        %>
        
     
<%-- <sql:query dataSource="${DBConnect }" var="result"> select * from khoahoc;</sql:query> --%>
 
	<jsp:include page="header.jsp"></jsp:include>
      
        <div class ="container">
        <div class="row">
        <div class="col-md-9">
		<br><br>
                  <div class="slideshow-container">

                              <div class="mySlides fade">
                               
                                <img src="images/banner1.jpg" style="width:100%">
                                <div class="text">Caption Text</div>
                              </div>

                              <div class="mySlides fade">
                                
                                <img src="images/banner2.jpg" style="width:100%">
                                <div class="text">Caption Two</div>
                              </div>

                              <div class="mySlides fade">
                              
                                <img src="images/banner3.jpg" style="width:100%">
                                <div class="text">Caption Three</div>
                              </div>
                            </div>
                            <br>

                            <div style="text-align:center">
                              <span class="dot"></span>
                              <span class="dot"></span>
                              <span class="dot"></span>
                            </div>

       
</div>

<!--Thông báo-->

   <div class="sidebar col-md-3 col-sm-3 col-xs-12">
   
              <div class="panel panel-default">
                                <div class="panel-body" align="center"><font size="3" color="green">Thông báo của giáo viên </font> </div>
              </div>
             <table class="table table-bordered">
             <thead>
             <tr>
             <th>
             <marquee SCROLLDELAY = 150 width ="100%" height = "150" direction="up" style ="font:arial" scrollamount="2" id="bannerthongbao" name="bannerthongbao" onmouseover="this.stop()" onmouseout="this.start()">
             <ul>
             
    	  	<% ThongBaos thongbao=new ThongBaos();
    	  	ThongBaoDAO tbDAO=new ThongBaoDAO();
			%>        
                 	<%
                            for (ThongBaos tb:tbDAO.getThongbaoListView()) {
                        %>
                           	<li><a href="xem-thong-bao?tb=<%=tb.getMaThongBao()%>"><%=tb.getTenThongBao()%></a></li>
                           	<br></br>
                        <%
                            }
                        %>
             </ul>
             </marquee>
             </th>
             </tr>
             </thead>
             </table>

    </div>
  <!--End thông báo--> 
  
  
  
   <div class="sidebar col-md-3 col-sm-3 col-xs-12">
              <div class="panel panel-default">
                                <div class="panel-body" align="center"><font size="3" color="green">Thông báo chung </font> </div>
              </div>
             <table class="table table-bordered">
             <thead>
             <tr>
             <th>
             <marquee SCROLLDELAY = 150 width ="100%" height = "150" direction="up" style ="font:arial" scrollamount="2" id="bannerthongbao" name="bannerthongbao" onmouseover="this.stop()" onmouseout="this.start()">
             <ul>
             
            
                 	<%
                 		KhoaHocsDAO khoahocsDAO =new KhoaHocsDAO();
                            for (KhoaHocs kh :khoahocsDAO.getKhoaHocList()) {
                        %>
                           	<li><a href="khoa-hoc-chi-tiet?khoahoc=<%=kh.getAdMaKH()%>"><%=kh.getAdTenKH()%></a></li>
                           	<br></br>
                        <%
                            }
                        %>
             </ul>
             </marquee>
             </th>
             </tr>
             </thead>
             </table>

    </div>
  
  
  
    </div>
    <!--end row-->
    </div>


  <jsp:include page="footer.jsp" ></jsp:include>
          

<!--Script chuyển động baner-->
<script src="Scripts/bannerchuyendong.js"></script>
<!--Script chuyển động baner-->

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>