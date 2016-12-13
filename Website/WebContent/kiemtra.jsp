<%@ page import="java.sql.*"%>
<%@ page import="connect.*"%>
<%@ page import="java.util.*"%>
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
  
  
  <%-- <sql:setDataSource var="DBConnect" driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost/web" user="root" password="admin" />
 --%>
      <%
            
      		LamBaiKiemTraDAO lambaiktDAO=new LamBaiKiemTraDAO();
      		Users users = null;
            if (session.getAttribute("user") != null) {
                users = (Users) session.getAttribute("user");
            }
            
            long userid= users.getUserID();
            Connection connection = DBConnect.getConnection();
    		Statement statement = connection.createStatement();
    		ResultSet resultset = statement
    				.executeQuery("select DISTINCT TenKH,khoahoc.MaKH from cauhoi,khoahoc,dangkykhoahoc,users where dangkykhoahoc.UserID=users.UserID and dangkykhoahoc.MaKH=cauhoi.MaKH and dangkykhoahoc.chophep='1'  and users.UserID='"+userid+"' && cauhoi.MaKH=khoahoc.MaKH");
           
    		
    		
       %>
                       
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
                            <th><a title="Nhấn vào tên đề thì để làm bài thi!"> Thi</a></th>
                            <th>Kết quả</th>
                          </tr>
                        </thead>
                       
                       	<%	
											int i = 0;
											while (resultset.next()) {
												i++;
												
											String ktra=resultset.getString(2);	
										%>
										
										
										 <tbody>
                        <tr>
                       
                        <td><%=resultset.getString(2) %></td>
                      	<td> <%=resultset.getString(1) %></td>
                      	<td>
                      	<%if(lambaiktDAO.checktrangthaiKT(String.valueOf(users.getUserID()),ktra)==false) {%>
                      	<a style="color: blue" href="lam-bai-kiem-tra?khoahoc=<%=resultset.getString(2) %>">Vào thi</a></td>
                      <%}else{ %>
                       	<a href="">Đã thi</a></td>
                     
                      <%} %>
                        <td><a href="xem-diem?khoahoc=<%=resultset.getString(2) %>&userid=<%=users.getUserID()%>"> Xem kết quả </a></td>
                          </tr>
                          </tbody>
										
										
										<%} %>
                       
                       
                     <%--   	<c:set var="count" value="0"></c:set>
                        <c:forEach var="rows" items="${khoahoccuatoi.rows}">
                      
                        <tbody>
                        <tr>
                        <c:set var="count"  value="${count+1}" /> Tăng biến đếm lên 1 đơn vị
                        <td>${rows.MaKH }</td>
                      	<td> ${rows.TenKH }</td>
                      	<td><a href="lam-bai-kiem-tra?khoahoc=${rows.MaKH }">Vào thi</a></td>
                           <td><a href="xem-diem?khoahoc=${rows.MaKH }&userid=<%=users.getUserID()%>"> Xem kết quả </a></td>
                          </tr>
                          </tbody>
                          </c:forEach> --%>
                  
                  </table>
                    </div>
             </div>
                </div>
          </div>
                </div> 
                </div></div>
     <br><br><br>
     <br><br><br><br><br><br>
	<jsp:include page="footer.jsp"></jsp:include>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>