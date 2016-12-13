<%@page import="java.sql.*" %>
<%@page import="dao.*" %>
<%@page import="model.*" %>
<%@page import="connect.*" %>
  <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<% Class.forName("com.mysql.jdbc.Driver"); %>
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
            Users users = null;
            if (session.getAttribute("user") != null) {
                users = (Users) session.getAttribute("user");
            }
 %>  
   
<sql:setDataSource var="DBConnect" driver="com.mysql.jdbc.Driver"
 		url="jdbc:mysql://localhost/web" user="root" password="admin" /> 
 
<%-- <sql:setDataSource var="DBConnect" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://node177650-nhom12it.jelastic.servint.net/web" user="root" password="CCJD98OftR"/>  --%>

<sql:query dataSource="${DBConnect }" var="result"> SELECT DISTINCT TenKH from khoahoc,dangkykhoahoc,users where khoahoc.MaKH=dangkykhoahoc.MaKH && dangkykhoahoc.UserID=users.UserID &&
users.UserID=<%=users.getUserID() %> && dangkykhoahoc.chophep='1' ;</sql:query>
   
   
   <section class="container" style="min-height:270px">
        <section class="row">
 
  <div id="wrapper">
      <div class="container">
       <div class="panel panel-primary hoidap">
                    <div class="panel-heading">
                        <b ><span class="glyphicon glyphicon"> </span><center> Danh sách khoá học của bạn</center></b>
                    </div>
                    <div class="panel-body">
        <div class="row">
          <div class="content col-md-9 col-sm-9 col-xs-12">
           
            <div class="container">
                <div class="row">
                
                    <div class="col-md-2">
                          <ul class="nav navs-tabs-brand">
                        </ul>
                    </div>    
                    <div class ="col-md-7">
                      
                      <!-- tạo bảng khóa học của tôi-->
                      <table class="table table-bordered">
                        <thead>
                          <tr style="background:#00a8d8">
                            <th>STT</th>
                            <th>Tên khóa học</th>
                            <th>Xem khóa học</th>
                          </tr>
                        </thead>
                        <tbody>
     	             	 <c:set var="count" value="0" /> 
<%--      	              Khởi tạo biến đếm =0 --%>
                                		 <c:forEach var="rows" items="${result.rows }">
                                		 <c:set var="count"  value="${count+1}" /> <%--Tăng biến đếm lên 1 đơn vị--%>
                          <tr>
                            <td>${count}</td>
                          <td>${rows.TenKH }</td>
                           <td><a href="chi-tiet-khoa-hoc-cua-toi">vào khóa học</a></td>
                          </tr>
                          </c:forEach>
                        </tbody>
                  </table>
                      <!-- kết thúc tạo bảng khóa học của tôi -->
                    </div>
                    </div>
                </div>
            <!--<div class="slider"><img src="dimages/slider.jpg"></div>-->
          </div></div></div>
        
            </div>
          </div>
        </div>
        </section></section>
 <jsp:include page="footer.jsp"></jsp:include>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>