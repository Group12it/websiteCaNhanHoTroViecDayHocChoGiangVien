<%@page import="java.*" %>
<%@page import="dao.*" %>
<%@page import="model.*" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


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
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/stylemenu.css">
    <link rel="stylesheet" type="text/css" href="css/thongtin.css">
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
        
<sql:query dataSource="${DBConnect }" var="khoahoccuatoi"> select DISTINCT dethi.MaDeThi,TenKH,TenDeThi,khoahoc.MaKH from khoahoc,dangkykhoahoc,users,dethi where dangkykhoahoc.UserID=users.UserID
&& dangkykhoahoc.MaKH=dethi.MaKH && dangkykhoahoc.chophep='1' && users.UserID=<%=users.getUserID() %> && dethi.MaKH=khoahoc.MaKH ;</sql:query>
  <div id="wrapper">
      <div class="container">
        <div class="row">
          <div class="content col-md-9 col-sm-9 col-xs-12">
           
            <div class="container">
                <div class="row">
                
                    <div class="col-md-2">
                          <ul class="nav navs-tabs-brand">
                          </ul>
                    </div>    
                    <div class ="col-md-7">
                      <h1>Danh sách kiểm tra</h1>
                     <table class="table table-bordered">
                        <thead>
                          <tr style="background:#00a8d8">
                            <th>STT</th>
                            <th>Tên khóa học</th>
                            <th><a title="Nhấn vào tên đề thì để làm bài thi!"> Tên đề thi</a></th>
                            <th>Kết quả</th>
                          </tr>
                        </thead>
                       
                       <c:set var="count" value="0"></c:set>
                        <c:forEach var="rows" items="${khoahoccuatoi.rows}">
                        <tbody>
                        <tr>
                        <c:set var="count"  value="${count+1}" /> <%--Tăng biến đếm lên 1 đơn vị--%>
                        <td>${rows.MaKH }</td>
                      	<td> ${rows.TenKH }</td>
                      	<td><a href="lam-bai-kiem-tra?khoahoc=${rows.MaKH }">${rows.TenDeThi }</a></td>
                           <td><a href="xem-diem?dethis=${rows.MaDeThi }"> Xem kết quả </a></td>
                          </tr>
                          </tbody>
                          </c:forEach>
                  
                  </table>
                    </div>
             </div>
                </div>
          </div>
                </div> 
                </div></div>
     <br><br><br>
	<jsp:include page="footer.jsp"></jsp:include>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>