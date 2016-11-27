<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.*" %>
<%@ page import="connect.DBConnect" %> 

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta content="charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix= "c" %>
		<%@ taglib uri= "http://java.sun.com/jsp/jstl/sql" prefix= "sql" %>
	
<link rel="shortcut icon" href="images/head.ico" type="image/x-icon" />
	<link rel="icon" href="images/head.ico" type="image/x-icon" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <title>Website Cá nhân hỗ trợ giáo viên dạy học</title>


</head>

<body>

<jsp:include page="headeradmin.jsp"></jsp:include>
<sql:setDataSource var="DBConnect" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/web" user="root" password="admin"/>

<sql:query dataSource="${DBConnect }" var="result"> select * from khoahoc;</sql:query>
   
    <div id="wrapper">
      <div class="container">
        <div class="row">
         
            <div class="container">
                <div class="row">
                
                    <div class="col-md-3">
                       <div class="panel panel-primary" style="padding-top:0px ">
                           <div class ="panel-body"> 
                  
                         <ul class="nav navs-tabs-brand">
                                <li class="active"><a href="trang-chu-quan-tri" class="list-group-item " style="z-index: 0"><i class="glyphicon glyphicon-home"></i> &nbsp;&nbsp;&nbsp;&nbsp;Trang chủ quản trị</a></li>
                               
                                <li class="active"><a href="quanly-khoa-hoc" class ="list-group-item active" style="z-index: 0"><i class="glyphicon glyphicon-education"></i>&nbsp;&nbsp;&nbsp;&nbsp; Quản lý khoá học</a></li>
                               
                                <li class="active"><a href="quan-ly-thread" class="list-group-item" style="z-index: 0"><i class="glyphicon glyphicon-comment"></i> &nbsp;&nbsp;&nbsp;&nbsp;Thread thảo luận</a></li>
                             
                                <li class="active"><a href="ke-hoach-giang-day" class ="list-group-item" ><i class="glyphicon glyphicon-calendar"></i> &nbsp;&nbsp;&nbsp;&nbsp;Kế hoạch giảng dạy</a></li>
                              
                                <li class="active"><a href="quan-ly-hoc-vien" class="list-group-item" style="z-index: 0"><i class="glyphicon glyphicon-user"></i> &nbsp;&nbsp;&nbsp;&nbsp;Quản lý học viên</a></li>
                              
                                <li class="active"><a href="gui-mail" class ="list-group-item" style="z-index: 0"><i class="glyphicon glyphicon-envelope"></i>&nbsp;&nbsp;&nbsp;&nbsp; Gửi mail cho sinh viên</a></li>
                              
                            
                                <li class="active"><a href="danh-sach-hoc-vien" class ="list-group-item" style="z-index: 0"><i class="glyphicon glyphicon-list-alt"></i>&nbsp;&nbsp;&nbsp;&nbsp; Bài tập của học viên</a></li>
                               
                                <li class="active"><a href="them-de-thi-trac-nghiem" class="list-group-item" style="z-index: 0"><i class="glyphicon glyphicon-pencil"></i> &nbsp;&nbsp;&nbsp;&nbsp;Đề thi trắc nghiệm</a></li>

                        </ul>
                    </div>  
                    </div>
                    </div>    
                    <div class="col-md-9">
                         <ul class="nav navs-tabs-brand">
                   
                             <div class="panel panel-default" style="max-height:100%">
                                    <div class="panel-heading" style="background:#0CC">
                                        <h4 style="font-family: verdana;color:#000">Quản lý Khóa học</h4>
                                    </div>
                                    <div class="panel-body">

                                        <center><font style="font-family: 'Times New Roman'; font-size: 30px; color: #09F" >Danh sách khóa học</font></center>
                                        <br/>
                                        <a href="tao-khoa-hoc-moi" class="btn btn-info btn" style="background: #59b300">
                                            <span class="glyphicon glyphicon-plus"></span> Thêm Khóa Học
                                        </a>
                                        <p></p>
                                        <table class="table table-bordered table-hover">
                                            <thead style="background:#09F">
                                           <tr>
                                            <th>Mã khóa học</th>
                                            <th>Tên khóa học</th>
                                            <th>Ngày giạy</th>
                                            <th>Hoc phí</th>
                                            <th>Tuỳ chọn</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                             
                                              <c:forEach var="rows" items="${result.rows }">
                                                <tr>
                                                    <td><c:out value="${rows.MaKH}"></c:out></td>
                                                    <td><c:out value="${rows.TenKH}"></c:out></td>
                                                    <td><c:out value="${rows.NgayKhaiGiang}"></c:out></td>
                                                    <td><c:out value="${rows.HocPhi}"></c:out></td>
                                                    <td>
                                                        <a href="chinh-sua-khoa-hoc?khoahoc=${rows.MaKH }" class="btn btn-info btn-sm" style="background: #660066">
                                                            <span class="glyphicon glyphicon-wrench"></span> Chỉnh sửa
                                                        </a>
                                                        <a href="quan-ly-khoa-hoc?command=delete&makh=${rows.MaKH }" class="btn btn-info btn-sm" style="background: #ff3300;">
                                                            <span class="glyphicon glyphicon-trash"></span> Xóa
                                                        </a>
                                                    </td>
                                                </tr>
                                                </c:forEach>
                                              
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                

                    </ul>
                                            

                     </div>
  
      
            </div>
            </div>
            </div>
         </div></div>
    
   
    <jsp:include page="footer.jsp"></jsp:include> 

    <script src="js/bootstrap.min.js"></script>
</body>
</html>