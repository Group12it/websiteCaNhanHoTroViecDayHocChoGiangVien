<?xml version="1.0" encoding="utf-8" ?>
<%@page import="java.util.ArrayList"%>
<%@page import="java.*" %>
<%@ page import="connect.DBConnect" %> 
<%@page import="model.*" %>
<%@page import="dao.*" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
	
	
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Website Cá nhân hỗ trợ giáo viên dạy học</title>
	<link rel="shortcut icon" href="images/head.ico" type="image/x-icon" />
	<link rel="icon" href="images/head.ico" type="image/x-icon" />
	      
</head>
    
<body>
<jsp:include page="headeradmin.jsp" ></jsp:include>

<sql:setDataSource var="DBConnect" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/web" user="root" password="admin"/>

<sql:query dataSource="${DBConnect }" var="result"> select * from thread;</sql:query>



  <div id="wrapper">
      <div class="container">
        <div class="row">
        <div class="container">
                <div class="row">
                
                    <div class="col-md-3">
                          <div class="panel panel-primary" style="padding-top:0px ">
                           <div class ="panel-body"> 
                  
                         <ul class="nav navs-tabs-brand">
                              <li class="active"><a href="quanly-khoa-hoc" class ="list-group-item " style="z-index: 0"><i class="glyphicon glyphicon-education"></i>&nbsp;&nbsp;&nbsp;&nbsp; Quản lý khoá học</a></li>
                               
                                <li class="active"><a href="quan-ly-thread" class="list-group-item active" style="z-index: 0"><i class="glyphicon glyphicon-comment"></i> &nbsp;&nbsp;&nbsp;&nbsp;Thread thảo luận</a></li>
                             
                                <li class="active"><a href="ke-hoach-giang-day" class ="list-group-item" ><i class="glyphicon glyphicon-calendar"></i> &nbsp;&nbsp;&nbsp;&nbsp;Kế hoạch giảng dạy</a></li>
                              
                                <li class="active"><a href="quan-ly-hoc-vien" class="list-group-item" style="z-index: 0"><i class="glyphicon glyphicon-user"></i> &nbsp;&nbsp;&nbsp;&nbsp;Quản lý học viên</a></li>
                              
                                <li class="active"><a href="gui-mail" class ="list-group-item" style="z-index: 0"><i class="glyphicon glyphicon-envelope"></i>&nbsp;&nbsp;&nbsp;&nbsp; Gửi mail cho sinh viên</a></li>
                              
                            
                                <li class="active"><a href="danh-sach-hoc-vien-nop-bai" class ="list-group-item" style="z-index: 0"><i class="glyphicon glyphicon-list-alt"></i>&nbsp;&nbsp;&nbsp;&nbsp; Bài tập của học viên</a></li>
                               
                                <li class="active"><a href="them-de-thi-trac-nghiem" class="list-group-item" style="z-index: 0"><i class="glyphicon glyphicon-pencil"></i> &nbsp;&nbsp;&nbsp;&nbsp;Đề thi trắc nghiệm</a></li>
                 
                        </ul>
                    </div>  
                    </div>
                    </div>    
                    <div class="col-md-9">
                    <ul class="nav navs-tabs-brand">
                               
                                <a class ="list-group-item text-center " href="#" style="background: #0CC;font-size: 20px;color: blue;">Thread Thảo Luận</a> <br>                                
                                <table class="table table-striped" border="1" >
                                		<thead>
                                			<tr>
                                				<th dir="rtl" style="background:#0CC"> STT</th>
                                				<th dir="rtl" style="background:#0CC">Tên Thread</th>
                                				<th dir="rtl" style="background:#0CC">Ngày tạo </th>
                                				<th max-width="100%" dir="ltr" style="background:#0cc">Tuỳ chọn</th>
                                			</tr>
                                		</thead>
                                		<tbody>
  <%	
	 ThreadsDAO threadsDAO =new ThreadsDAO();
	
	%>
                        <%--         		  <%
                            for (Threads thr :threadsDAO.getThreadsList()){
                        %>
                             --%>    		 <c:set var="count" value="0" /> <%--Khởi tạo biến đếm =0 --%>
                                		 <c:forEach var="rows" items="${result.rows }">
                                		 <c:set var="count"  value="${count+1}" /> <%--Tăng biến đếm lên 1 đơn vị --%>
                                			<tr>
                                				<td>${count}</td>
                                				<td>${rows.TenThread}</td>
                                				<td>${rows.NgayTao }</td>
                                				<td>
                                                    <center> 
                                                     <a href="chinh-sua-thread?thread=${rows.MaThread }"> <button type="button" class="btn btn-success" id="btnXacNhan" onclick="">Sửa</button></a>
                                                  	 <a href="Thaoluan?command=delete&MaThread=${rows.MaThread }"> <button type="button"  onclick="return confirmAction()" class="btn btn-warning"  id="btnXoa1" onclick="">Xóa</button></a> 
                                                	</center>
                                                </td>



                                			</tr>
                                			</c:forEach> 
                                		</tbody>
                                	<%-- 	<%} %>
                                	 --%></table>	
                            
                              		 <a href="tao-thread-moi"><button type="button" class="btn btn-success" >Tạo thread</button></a>
                             		
                               </div>
                
                                            

                     </div>

                  
</div></div></div></div>


                     
     <jsp:include page="footer.jsp" ></jsp:include>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    
     
   
 <SCRIPT LANGUAGE="JavaScript">
      function confirmAction() {
        return confirm("Chắc chắn xoá?")
      }
 
      </SCRIPT>
    
  </body>
</html>