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


    <link href="css/styleadmin.css" rel="stylesheet" />

    <link rel="stylesheet" type="text/css" href="css/stylemenu.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link rel="stylesheet" media="all" type="text/css" href="css/font-awesome.min.css" />

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
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
            <tr style="height:600px">
                <td class="content-left" width="25%">

                    <div class="panel panel-primary" style="padding-top:0px ">
                        <div class="panel-body">

                            <ul class="nav navs-tabs-brand">
                                <li class="active"><a href="admin.jsp" class="list-group-item" style="z-index: 0"><i class="glyphicon glyphicon-home"></i> &nbsp;&nbsp;&nbsp;&nbsp;Trang chủ quản trị</a></li>

                                <li class="active"><a href="quanlykhoahoc.jsp" class="list-group-item"><i class="glyphicon glyphicon-education"></i> &nbsp;&nbsp;&nbsp;&nbsp;Quản lý khóa học</a></li>

                                <li class="active"><a href="threadadmin.jsp" class="list-group-item"><i class="glyphicon glyphicon-comment"></i> &nbsp;&nbsp;&nbsp;&nbsp;Thread thảo luận</a></li>

                                <li class="active"><a href="admingiangday.jsp"  class="list-group-item"><i class="glyphicon glyphicon-calendar"></i> &nbsp;&nbsp;&nbsp;&nbsp;Kế hoạch giảng dạy</a></li>

                                <li class="active"><a href="adminQuanLyHocVien.jsp" class="list-group-item active" style="z-index: 0"><i class="glyphicon glyphicon-user"></i> &nbsp;&nbsp;&nbsp;&nbsp;Quản lý học viên</a></li>

                                <li class="active"><a href="adminGuiMail.jsp" class="list-group-item"><i class="glyphicon glyphicon-envelope"></i>&nbsp;&nbsp;&nbsp;&nbsp; Gửi mail cho sinh viên</a></li>

                                <li class="active"><a href="admindanhsachhocvien.jsp" class="list-group-item"><i class="glyphicon glyphicon-list-alt"></i>&nbsp;&nbsp;&nbsp;&nbsp; Bài tập của học viên</a></li>

                                <li class="active"><a href="admindethitracnghiem.jsp" class="list-group-item"><i class="glyphicon glyphicon-pencil"></i> &nbsp;&nbsp;&nbsp;&nbsp;Đề thi trắc nghiệm</a></li>

                            </ul>
                        </div>
                    </div>
                </td>
                <td class="content-center">
                    <table id="tbform">
                        <tr>
                            <td width="5%"></td>
                            <td>

                                <div class="panel panel-default">
                                    <div class="panel-heading" style="background:#0CC">
                                        <h4 style="font-family: verdana;color:#000">Danh sách khóa lập trình c căn bản</h4>
                                    </div>
                                    <div class="panel-body">

                                        <form class="form-horizontal" role="form">
                                            <div class="form-group form-group-sm">
                                                <label class="col-sm-2 control-lable" for="fromGroupInputSmall">Email:</label>
                                                <div class="col-sm-4">
                                                    <input type="text" class="form-control" id="fromGroupInputSmal" />
                                                </div>
                                                <label class="col-sm-2 control-lable" for="fromGroupInputSmall">Họ Tên:</label>
                                                <div class="col-sm-4">
                                                    <input type="text" class="form-control" id="fromGroupInputSmal" />
                                                </div>
                                            </div>
                                            <div class="form-group form-group-sm">
                                                <label class="col-sm-2 control-lable" for="fromGroupInputSmall">Số điện thoại:</label>
                                                <div class="col-sm-4">
                                                    <input type="text" class="form-control" id="fromGroupInputSmal" />
                                                </div>
                                                <a href="#" class="btn btn-info btn-lg">
                                                    <span class="glyphicon glyphicon-search"></span> Search
                                                </a>
                                            </div>

                                        </form>


                                        <table class="table table-bordered">
                                            <thead style="background:#09F">
                                                <tr>
                                                    <th width=20%><center>Email</center></th>
                                                    <th width=30%><center>Họ Và Tên</center></th>
                                                    <th width=10%><center>Ngày sinh</center></th>
                                                    <th width=20%><center>Số điện thoại</center></th>
                                                    <th width=20%><center>Thao tác</center></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr id="index1">
                                                    <td>vanA@gmail.com</td>
                                                    <td>Nguyễn Văn A</td>
                                                    <td>20/10/1996</td>
                                                    <td>01627637208</td>
                                                    <td>
                                                        <a href="#" style="text-decoration:underline">Xóa Khỏi Danh Sách</a>
                                                    </td>
                                                </tr>
                                                <tr id="index2">
                                                    <td>Hang@gmail.com</td>
                                                    <td>Trần Hằng</td>
                                                    <td>20/10/1996</td>
                                                    <td>01627637208</td>
                                                    <td>
                                                        <a href="#" style="text-decoration:underline">Xóa Khỏi Danh Sách</a>
                                                    </td>
                                                </tr>
                                                <tr id="index3">
                                                    <td>Le@gmail.com</td>
                                                    <td>Lê Kiệm</td>
                                                    <td>19/09/1996</td>
                                                    <td>01634537203</td>
                                                    <td>
                                                        <a href="#" style="text-decoration:underline">Xóa Khỏi Danh Sách</a>
                                                    </td>
                                                </tr>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>




                            </td>




                        </tr>
                    </table>


                </td>
                <td class="content-right"></td>

            </tr>
        </table>
        <footer>
            <div class="container">
                <div class="footer-info text-center">
                    <p>
                        Group 12 Copyright&copy; 2016 Designer</a><br />
                    </p>
                </div>
            </div>
        </footer>
    </div>
    <script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
    <script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script src="menu_js/javajquery.js"></script>
</body>
</html>