<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />


    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <title>Website Cá nhân hỗ trợ giáo viên dạy học</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />

<link rel="shortcut icon" href="images/head.ico" type="image/x-icon" />
	<link rel="icon" href="images/head.ico" type="image/x-icon" />
    <link href="css/styleadmin.css" rel="stylesheet" />

    <link rel="stylesheet" type="text/css" href="css/stylemenu.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link rel="stylesheet" media="all" type="text/css" href="css/font-awesome.min.css" />

   
</head>

<header>
    <div class="container">
        <div class="row">
            <div class="col-xs-2 col-sm-6 col-md-8"></div>
            <div class="col-xs-6 col-md-4"></div>
        </div>
        <div class="row">
            <div class="logo col-md-6 col-sm-6 col-xs-12"><h1><a href="#">Học lập trình</a></h1></div>
            <div class="navbar-right">
                <a href="#">Học Viên</a>
                <img src="images/hoclaptrinh.jpg" align="bottom" width="40" height="40" />
                <button class="btn btn-danger navbar-btn">Đăng xuất</button>
            </div>
        </div>
        <body>
            <img src="images/hoclaptrinh.jpg" align="bottom" width="1165" height="160" />
        </body>
        <div class="wrapper">
            <nav class="menu">
                <ul class="clearfix">
                    <li><a href="admin.jsp">Trang chủ</a></li>
                    <li>
                    </li>
                    <li>
                        <a href="#">Khóa học<span class="arrow"> &#9660;</span> </a>
                        <ul class="sub-menu">
                            <li><a href="chitietkhoahoc.jsp">Khoá học lập trinh C căn bản</a></li>
                            <li><a href="#">Khóa học lập trình java</a></li>
                            <li><a href="#">Khoá học lập trình PHP</a></li>
                            <li><a href="#">Khoá học lập trình Web</a></li>
                        </ul>
                    </li>
                    <li><a href="thread.jsp">Thảo luận</a></li>
                    <li> <a href="adminGuiMail.jsp">Liên hệ</a></li>
                    <li> <a href="#">Giới thiệu</a></li>
                </ul>
            </nav>
        </div>
    </div>
</header>
<p></p>
<body>
    <div class="paper">
        <table class="tbBody">
            <tr>
                <td class="content-left">

                    <div class="panel panel-primary" style="padding-top:0px ">
                        <div class="panel-body">

                            <ul class="nav navs-tabs-brand">
                                <li class="active"><a href="admin.jsp" class="list-group-item" style="z-index: 0"><i class="glyphicon glyphicon-home"></i> &nbsp;&nbsp;&nbsp;&nbsp;Trang chủ quản trị</a></li>

                                <li class="active"><a href="quanlykhoahoc.jsp" class="list-group-item"><i class="glyphicon glyphicon-education"></i>&nbsp;&nbsp;&nbsp;&nbsp; Quản lý khoá học</a></li>

                                <li class="active"><a href="threadadmin.jsp" class="list-group-item"><i class="glyphicon glyphicon-comment"></i> &nbsp;&nbsp;&nbsp;&nbsp;Thread thảo luận</a></li>

                                <li class="active"><a href="admingiangday.jsp"  class="list-group-item"><i class="glyphicon glyphicon-calendar"></i> &nbsp;&nbsp;&nbsp;&nbsp;Kế hoạch giảng dạy</a></li>

                                <li class="active"><a href="adminQuanLyHocVien.jsp" class="list-group-item"><i class="glyphicon glyphicon-user"></i> &nbsp;&nbsp;&nbsp;&nbsp;Quản lý học viên</a></li>

                                <li class="active"><a href="adminGuiMail.jsp" class="list-group-item active" style="z-index: 0"><i class="glyphicon glyphicon-envelope"></i>&nbsp;&nbsp;&nbsp;&nbsp; Gửi mail cho sinh viên</a></li>

                                <li class="active"><a href="admindanhsachhocvien.jsp" class="list-group-item"><i class="glyphicon glyphicon-list-alt"></i>&nbsp;&nbsp;&nbsp;&nbsp; Bài tập của học viên</a></li>

                                <li class="active"><a href="admindethitracnghiem.jsp" class="list-group-item"><i class="glyphicon glyphicon-pencil"></i> &nbsp;&nbsp;&nbsp;&nbsp;Đề thi trắc nghiệm</a></li>

                            </ul>
                        </div>
                    </div>
                </td>
                <td class="content-center">
                    <table>
                        <tr>
                            <td width="5%"></td>
                            <td>

                                <div class="panel panel-default">
                                    <div class="panel-heading" style="background:#0CC">
                                        <h4 style="font-family: verdana;color:#000">Gửi Mail</h4>
                                    </div>
                                    <div class="panel-body">

                                        <div class="panel-body">
                                            <form class="form" method="post" id="contactform" action="" role="form" onSubmit="return formaction()">
                                                <div class="form-group">
                                                    <label for="contactemail">Địa Chỉ Email</label>
                                                    <input type="email" class="form-control" id="contactemail" placeholder="Nhập địa chỉ Email" required autofocus>
                                                </div>

                                                <div class="form-group">
                                                    <label for="contactsubject">Gửi Tới</label>
                                                    <select name="" id="input" class="form-control">
                                                        <option value="">Khóa học lập trình c căn bản</option>
                                                        <option value="">Khóa học lập trình java</option>
                                                        <option value="">Khóa học lập trình web</option>
                                                    </select>
                                                </div>

                                                <div class="form-group">
                                                    <label for="contactsubject">Tiêu Đề</label>
                                                    <input type="subject" class="form-control" id="contactsubject" placeholder="Nhập tiêu đề" required autofocus>
                                                </div>
                                                <div class="form-group">
                                                    <label for="contactmessage">Nội dung tin nhắn</label><br>
                                                    <textarea class="form-group" id="contactmessage" rows="10" cols="75" placeholder="Nhập nội dung"></textarea>
                                                </div>
                                                <button type="submit" id="contracbtn" class="btn btn-info" >Gửi</button>
                                                <!-- kết thúc gửi mail-->
                                            </form>
                                        </div>
                                    </div>

                                </div>
                            </td>
                    </table>
                </td>
                <td width="5%"></td>
        </table>
        <footer>
            <div class="container">
                <div class="footer-info text-center">
                    <p>
                        Group 12 Copyright&copy; 2016 Designer</a><br>
                    </p>
                </div>
            </div>
        </footer>
    </div>
    
  <%--script thông báo --%>  
    
    <script type="text/javascript">
    function formaction(){
     return alert('Thao tác thành công');
        
    }</script>
    
      <%--script thông báo --%>  
</body>
</html>