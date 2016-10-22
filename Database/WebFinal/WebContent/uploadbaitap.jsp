<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Website Cá nhân hỗ trợ giáo viên dạy học</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/stylemenu.css">
    <link rel="stylesheet" type="text/css" href="css/thongtin.css">

 <link rel="shortcut icon" href="images/head.ico" type="image/x-icon" />
	<link rel="icon" href="images/head.ico" type="image/x-icon" />
</head>

<header>
    <div class="container">
        <div class="row">
            <div class="logo col-md-6 col-sm-6 col-xs-12"><h1><a href="#">Học lập trình</a></h1></div>
            <!-- /Đăng nhập-->
            <div class="navbar-right">
                 <div class="dropdown right">
                <a href="" class="dropntn">Học viên<span class="arrow"></span></a>
                <div class="dropdown-content">
                    <a href="#">Tên học viên</a>
                    <a href="thongtincanhan.jsp">Thông tin cá nhân</a>
                    <a href="doimatkhau.jsp">Đổi mật khẩu</a>
                    
                  </div> 
                  </div> 
                <img src="images/hoclaptrinh.jpg" align="bottom" width="40" height="40"/>
               <a href="index.jsp"><button class="btn btn-danger navbar-btn collapse-xs">Đăng xuất</button></a> 
            </div>
            <body>

                <body>
                    <img src="images/hoclaptrinh.jpg" align="bottom" width="1165" height="160" />

                </body>


                <div class="wrapper">
                    <nav class="menu">
                        <ul class="clearfix">
                            <li><a href="#">Trang chủ</a></li>
                            <li>
                            <li>
                                <a href="#">Khóa học<span class="arrow"> &#9660;</span> </a>
                                <ul class="sub-menu">
                                    <li><a href="chitietkhoahoc.jsp">Khoá học lập trinh C căn bản</a></li>
                                    <li><a href="#">Khóa học lập trình java</a></li>
                                    <li><a href="#">Khoá học lập trình PHP</a></li>
                                    <li><a href="#">Khoá học lập trình Web</a></li>
                                </ul>
                            </li>
                            <li><a href="khoahoccuartoi.jsp">Khóa học của tôi</a></li>
                            <li><a href="thread.jsp">Thảo luận</a></li>
                            <li><a href="kiemtra.jsp">Kiểm tra</a></li>
                            <li> <a href="guimail.jsp">Liên hệ</a></li>
                            <li> <a href="#">Giới thiệu</a></li>
                        </ul>
                    </nav>

                </div>
        </div>
    </div>
</header>

<div id="wrapper">
    <div class="container">
        <div class="row">
            <div class="content col-md-9 col-sm-9 col-xs-2">
                <div class="container">
                    <div class="row">


                        <div class="col-md-10">
                            <br><br>

                            <div class="panel panel-default">
                                <div class="panel-heading" style="background:#0CC">
                                    <h4 style="font-family: verdana;color:#000">Lập trình c căn bản</h4>
                                </div>


                                <p>
                                    <font size="5">
                                        Bài tập 1
                                    </font>
                                </p>
                                <div class="btn btn-default" style="text-align: left;width:100%;background-image:url(images/Untitled.png)">
                                    + Tìm hiểu ngôn ngữ C/C++<br>
                                    + yêu cầu: <br>
                                    - làm đầy đủ bài tập về nhà<br>
                                    - nén file.css nộp lại<br>

                                </div>
                                <h3 color="red">Trạng thái nộp bài tập</h3>
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                           <th>Trạng thái nộp</th>
                                            <th>Chưa</th>
                                        </tr>
        
                                        <tr>
                                            <th>Hạn chót</th>
                                            <th>thứ 4, 19 tháng 10 năm 2016, 12:00:00 pm </th>
                                        </tr>
                                         <tr>
                                            <th>Thời gian còn lại</th>
                                            <th><font color="red">Còn lại: 5 ngày 16 giờ </font> </th>
                                        </tr>

                                    </tbody>

                                </table>
                                
                            </div>
                             <div class="form-group">
                                            <label for="contactghichu">Ghi chú</label><br>
                                            <textarea class="form-group" id="contactghichu" rows="5" cols="132" name=""contactghichu></textarea>
                                            </div>
                            <label >Bài tập nộp</label><br>
                              <input id="file" type="file" name="files" class="multitle" multipleva />
                              <br><br>
                              <button class="btn btn-info navbar-btn" id="btnsubmit" name="btnsubmit" style="margin-left: 500px;">Nộp bài tập</button>
                    </div>
                        </div>

                    </div>
            
                    </div>

                </div>

            </div>

        </div>
    </div>
    <footer>
        <div class="container">
            <div class="footer-info text-center">
                <p>
                    Group 12 Copyright&copy; 2016 Designer</a><br>
                </p>
            </div>
        </div>
    </footer>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    </body>
</html>