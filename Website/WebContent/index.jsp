<%@ page import="java.lang.*" %>
<%@ page import="model.*" %>
<%@page import="controller.*" %>
<%@page import="dao.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
  <head>
    <title>Website Cá nhân hỗ trợ giáo viên dạy học</title>
    <meta content="charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width = device-width, initial-scale=1">
    <link rel="shortcut icon" href="images/head.ico" type="image/x-icon" />
	<link rel="icon" href="images/head.ico" type="image/x-icon" />
    <link href="css/bootstrap.min.css" rel="stylesheet">
    
    <link href="ajax.aspnetcdn.com/ajax/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/banerchuyendong.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/stylemenu.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" media="all" type="text/css" href="css/font-awesome.min.css"/>
    <link rel="stylesheet" href="css/w3.css">
    
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
	<script src="js/angular.min.js"></script>
    <script src="js/myUsers.js"></script>
  </head>

<body ng-app="myApp" ng-controller="userCtrl">

  <%
  	String error="";
  if(request.getAttribute("error")!=null)
  {
	  error=(String) request.getAttribute("error");
  }
  %>
  <% KhoaHocsDAO khoahocsDAO=new KhoaHocsDAO();
%>

  <jsp:include page="headers.jsp"></jsp:include>
 <section class="container" style="min-height:500px">
  
        <section class="row">
  <div class="container">
        <div class="row">
  		<div class="">
  		<div class="">

        <div class="col-md-9">
        <br><br>
                  <div class="slideshow-container">
                              <div class="mySlides fade">
                               <!-- <div class="numbertext">1 / 3</div>-->
                                <img src="images/banner1.jpg" style="width:100%">
                                <div class="text">Caption Text</div>
                              </div>
                              <div class="mySlides fade">
                                <img src="images/banner2.jpg" style="width:100%">
                                <div class="text">Caption Two</div>
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
 </div>
<!--Thông báo-->
   <div class="sidebar col-md-3 col-sm-3 col-xs-12">
      <br><br>
              <div class="panel panel-default">
                                <div class="panel-body" align="center"><font size="3" color="green">Thông báo mới </font> </div>
                            </div>
             <table class="table table-bordered">
             <thead>
             <tr>
             <th>
             <marquee SCROLLDELAY = 150 width ="100%" height = "300" direction="up" style ="font:arial" scrollamount="2" id="bannerthongbao" onmouseover="this.stop()" onmouseout="this.start()">
             <ul>
                 
                 	<%
                            for (KhoaHocs kh :khoahocsDAO.getKhoaHocList()) {
                        %>
                           	<li><a href="chi-tiet-khoa-hoc-xem?khoahoc=<%=kh.getAdMaKH()%>"><%=kh.getAdTenKH()%></a></li>
                           	
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
    </div></div>
    </div>
    </div>
        </section>
    </section>
	<jsp:include page="footer.jsp"></jsp:include>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/js/bootstrapValidator.min.js" type="text/javascript"></script>
<script>
$('#contactform').bootstrapValidator();
</script>
<!--Script chuyển động baner-->
<script src="Scripts/bannerchuyendong.js"></script>
<!--Script chuyển động baner-->
<script src="Scripts/respond.min.js"></script>
<script src="Scripts/jssocials.min.jsp"></script>
<script src= "myUsers.js"></script>
<script src="Scripts/dangnhapdangky.js"></script>
    <script src="Scripts/jquery.unobtrusive-ajax.min.js"></script>
    <script src="Scripts/jquery.bxslider.min.js"></script>
    <script>
        $(function () {
            $('.slider1').bxSlider({
                slideWidth: 200,
                minSlides: 1,
                maxSlides: 10,
                slideMargin: 25
            });
            $(".bx-default-pager").remove();
        });
    </script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>