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

 
</head>

<header>
    <div class="container">
           <div class="row">
            <div class="logo col-md-6 col-sm-6 col-xs-6 collapse-xs collapse-sm" ><h1><a href="#">Học lập trình</a></h1></div>
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
            <div class="content col-md-9 col-sm-9 col-xs-12">
                <div class="container">
                    <div class="row">
                        <div class="container">
                            <br>
                            <div class="panel panel-default">
                                <div class="panel-body"><font size="3" color="green">Cập nhật thông tin cá nhân</font> </div>
                            </div>
                        </div>

                        <div class="col-md-8">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <td style=" height:0px;" colspan="1" align="center">
                                           <h4> Ảnh đại diện</h4>
                                            <table class="table table-bordered">
                                                <thead>
                                                    <tr>
                                                        <img src="images/item2.jpg">
                                                    </tr>
                                                </thead>
                                            </table>
                                            <input type="file" name="file">
                                        </td>
                                        <th>
                                            <div class="panel-body">
                                                <form class="form" method="post" id="contactform" action="" role="form">
                                                 <div class="form-group has-feedback">
                                                        <label for="contactho">Họ</label>
                                                        <input type="text" class="form-control" id="contactho" placeholder="Enter Ho">
                                                    </div>
                                                     <div class="form-group has-feedback">
                                                        <label for="contactten">Tên</label>
                                                        <input type="text" class="form-control" id="contactten" placeholder="Enter Ten">
                                                    </div>
                                                    <div class="form-group has-feedback">
                                                        <label for="contactdienthoai">Điện thoại</label>
                                                        <input type="text" class="form-control" id="contactdienthoai" placeholder="Enter Dienthoai">
                                                    </div>
                                                        <div class="form-group">
                                                            <label for="contactemail">Email</label>
                                                            <input type="email" class="form-control" id="contactemail" placeholder="Enter Email">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="contactdiachi">Địa chỉ liên lạc</label>
                                                            <input type="text" class="form-control" id="contactdiachi" placeholder="Enter DiaChi">
                                                        </div>
                                                         <div class="form-group">
                                                            <label for="contacttinh">Tỉnh/Thành phố</label>
                                                            <input type="text" class="form-control" id="contacttinh" placeholder="Enter Tinh/Thanh pho">
                                                        </div>

                                                    <button type="Submit" id="btnluu" name="btnluu" class="btn btn-info">Lưu</button>
                                                     <button type="Submit" id="btnhuy" name="btnhuy" class="btn btn-default">Hủy</button>

                                               
                                            </form>
                        </div>
                        </th>
                        </tr>
                        </thead>

                        </table>
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