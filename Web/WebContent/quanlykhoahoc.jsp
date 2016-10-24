<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.*" %>
<%@ page import="connect.DBConnect" %> 

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix= "c" %>
		<%@ taglib uri= "http://java.sun.com/jsp/jstl/sql" prefix= "sql" %>
	
<link rel="shortcut icon" href="images/head.ico" type="image/x-icon" />
	<link rel="icon" href="images/head.ico" type="image/x-icon" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <title>Website Cá nhân hỗ trợ giáo viên dạy học</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />


    <link href="css/styleadmin.css" rel="stylesheet" />

    <link rel="stylesheet" type="text/css" href="css/stylemenu.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link rel="stylesheet" media="all" type="text/css" href="css/font-awesome.min.css" />

</head>

<body>

<jsp:include page="headeradmin.jsp"></jsp:include>
<%-- <sql:setDataSource var="DBConnect" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/web" user="root" password="admin"/>

<sql:query dataSource="${DBConnect }" var="result"> select MaKH,TenKH,NgayKhaiGiang, HocPhi from khoahoc;</sql:query> --%>
    <div class="paper">
        <table class="tbBody">
            <tr style="height:600px">
                <td class="content-left" width="25%">

                    <div class="panel panel-primary" style="padding-top:0px ">
                        <div class="panel-body">

                            <ul class="nav navs-tabs-brand">
                                <li class="active"><a href="admin.jsp" class="list-group-item" style="z-index: 0"><i class="glyphicon glyphicon-home"></i> &nbsp;&nbsp;&nbsp;&nbsp;Trang chủ quản trị</a></li>

                                <li class="active"><a href="quanlykhoahoc.jsp" class="list-group-item active" style="z-index: 0"><i class="glyphicon glyphicon-education"></i>&nbsp;&nbsp;&nbsp;&nbsp; Quản lý khoá học</a></li>

                                <li class="active"><a href="threadadmin.jsp" class="list-group-item"><i class="glyphicon glyphicon-comment"></i> &nbsp;&nbsp;&nbsp;&nbsp;Thread thảo luận</a></li>

                                <li class="active"><a href="admingiangday.jsp"  class="list-group-item"><i class="glyphicon glyphicon-calendar"></i> &nbsp;&nbsp;&nbsp;&nbsp;Kế hoạch giảng dạy</a></li>

                                <li class="active"><a href="adminQuanLyHocVien.jsp" class="list-group-item"><i class="glyphicon glyphicon-user"></i> &nbsp;&nbsp;&nbsp;&nbsp;Quản lý học viên</a></li>

                                <li class="active"><a href="adminGuiMail.jsp" class="list-group-item"><i class="glyphicon glyphicon-envelope"></i>&nbsp;&nbsp;&nbsp;&nbsp; Gửi mail cho sinh viên</a></li>

                                <li class="active"><a href="admindanhsachhocvien.jsp" class="list-group-item"><i class="glyphicon glyphicon-list-alt"></i>&nbsp;&nbsp;&nbsp;&nbsp; Bài tập của học viên</a></li>

                                <li class="active"><a href="admindethitracnghiem.jsp" class="list-group-item"><i class="glyphicon glyphicon-pencil"></i> &nbsp;&nbsp;&nbsp;&nbsp;Đề thi trắc nghiệm</a></li>

                            </ul>
                        </div>
                    </div>
                </td>
                <td class="content-center">
                    <table class="ria">
                        <tr>
                            <td width="5%"></td>
                            <td width="90%">

                                <div class="panel panel-default" style="height:100%">
                                    <div class="panel-heading" style="background:#0CC">
                                        <h4 style="font-family: verdana;color:#000">Quản lý Khóa học</h4>
                                    </div>
                                    <div class="panel-body">

                                        <center><font style="font-family: 'Times New Roman'; font-size: 30px; color: #09F" >Danh sách khóa học</font></center>
                                        <br/>
                                        <a href="adminQuanLyKhoaHoc-Them.jsp" class="btn btn-info btn" style="background: #59b300">
                                            <span class="glyphicon glyphicon-plus"></span> Thêm Khóa Học
                                        </a>
                                        <p></p>
                                        <table class="table table-bordered table-hover">
                                            <thead style="background:#09F">
                                            <th width="20%">Mã khóa học</th>
                                            <th width="25%">Tên khóa học</th>
                                            <th width="15%">Ngày giạy</th>
                                            <th width="15%">Hoc phí</th>
                                            <th width="20%">Thao tác</th>
                                            </thead>
                                            <tbody>
                                             
                                               <%--  <c:forEach var="rows" items="${result.rows }">
                                                <tr>
                                                    <td><c:out value="${rows.MaKH}"></c:out>1</td>
                                                    <td><c:out value="${rows.TenKH}"></c:out></td>
                                                    <td><c:out value="${rows.NgayKhaiGiang}"></c:out></td>
                                                    <td><c:out value="${rows.HocPhi}"></c:out></td>
                                                    <td>
                                                        <a href="adminQuanLyKhoaHoc-ChinhSua.jsp" class="btn btn-info btn-sm" style="background: #660066">
                                                            <span class="glyphicon glyphicon-wrench"></span> Chỉnh sửa
                                                        </a>
                                                        <a href="#" class="btn btn-info btn-sm" style="background: #ff3300;">
                                                            <span class="glyphicon glyphicon-trash"></span> Xóa
                                                        </a>
                                                    </td>
                                                </tr>
                                                </c:forEach> --%>
                                              
                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
      
    </div>
    
    <jsp:include page="footer.jsp"></jsp:include> 
    <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>