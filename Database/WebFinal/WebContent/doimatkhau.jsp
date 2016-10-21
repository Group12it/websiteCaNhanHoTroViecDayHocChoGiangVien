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
<link rel="shortcut icon" href="images/head.ico" type="image/x-icon" />
	<link rel="icon" href="images/head.ico" type="image/x-icon" />
    <!-- Bootstrap -->
    <link rel="stylesheet" type="text/css" href="js/vali.js">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/stylemenu.css">
    <link rel="stylesheet" type="text/css" href="css/thongtin.css">
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
               <img src="images/hoclaptrinh.jpg" align="bottom" width="1165" height="160"/>
               
              </body>

 <div class="wrapper">
                  <nav class="menu">
                   <ul class="clearfix">
                      <li><a href="indexuser.jsp">Trang chủ</a></li>
                      <li>
                          <li><a href="#">Khóa học<span class="arrow"> &#9660;</span> </a>
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
                            <li> <a href="guimail.jsp">Soạn mail</a></li>
                            <li> <a href="#">Giới thiệu</a></li>
                  </ul>
              </nav>
                  </div>   
         
        </div>
      </div>
      </div>

    </header>

  <div id="wrapper">
      <div class="container">
        <div class="row">
          <div class="content col-md-9 col-sm-9 col-xs-12"><br><br>
           <div class="container">
                <div class="row">
                <div class="col-md-1">
                          <ul class="nav navs-tabs-brand">
                        </ul>
                    </div>    
                     <div class ="col-md-7">
              <h1>Đổi mật khẩu</h1>
               <table class="table table-bordered" cols="100">
               <thead>
               <tr>
               <th>
                       <!-- start gửi mail-->
                    <div class="panel-body">
                    <form class="form" method="post" id="contactform" action="" role ="form">
                    <div class="form-group has-feedback">
                        <label for="tentaikhoan">Tên tài khoản/Email <font size="4" color="red">*</font> </label>
                        <input type="text" class="form-control" id="contactemail" placeholder="" >
                        </div>
                        <div class ="form-group">
                        <label for="contactmatkhauhientai">Mật khẩu hiện tại <font size="4" color="red">*</font></label>
                        <input type="password" class="form-control" id="contactmatkhauhientai" placeholder="">
                        </div>
                <div>
                 <label for="contactmatkhaumoi">Mật khẩu mới <font size="4" color="red">*</font></label>
                <input type="password" class="form-control" id="contactmatkhaumoi" placeholder="">
                <br>
                </div>
                <div>
                <label for="contactnhaplaimatkhaumoi">Nhập lại mật khẩu mới <font size="4" color="red">*</font></label>
                <input type="password" class="form-control" id="contactnhaplaimatkhaumoi" placeholder="">
                </div><br>
                        <button type="Submit" id ="contactluu" class="btn btn-info">Lưu</button>
                <button type="Submit" id ="contacthuy" class="btn btn-info">Hủy</button>
                        <!-- kết thúc gửi mail-->
                    </div>
                </form>
             </div>
             </div>

       </div>
       </th>
       </tr>
       </thead>
       </table>
   
        </div>
            <div class="sidebar col-md-3 col-sm-3 col-xs-12">
            <div class="sidebar-item">
              <h4 class="widget-title">Thiết kế web</h4>
              <div class="textwidget">
                <img src="images/sidebar1.jpg">
              </div>
            </div>
            
            
            </div>

    </div>
   <footer>
      <div class="container">
        <div class="footer-info text-center">
          <p>Group 12 Copyright&copy; 2016 Designer</a><br>
        </p>
        </div>
      </div>
    </footer>
<script type="js/jquery-3.1.1.js"></script>
<script type="js/bootstrap.min.js"></script>
  </body>
</html>