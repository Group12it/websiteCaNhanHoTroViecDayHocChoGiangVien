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
   
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/thongtin.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
 <style type="text/css">
            .example{
                margin: 20px;
            }
             
            .example p{
                padding: 10px;
            }
        </style>

  </head>
  

      


    <header>
      <div class="container">
        <div class="row">
          <div class="logo col-md-6 col-sm-6 col-xs-12"><h1><a href="#">Học lập trình</a></h1></div>
           <!-- /Đăng xuất-->
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


        <div class="header-menu">
          <!-- Menu do Bootstrap cung cấp có hỗ trợ menu trên di động -->
          <nav class="navbar navbar-blue">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="indexuser.jsp">Trang chủ<span class="glyphicon glyphicon-home"></span></a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              <ul class="nav navbar-nav">
                <li><a href="khoahoc.jsp">Khóa học </a></li>
                <li><a href="khoahoccuartoi.jsp">Khóa học của tôi</a></li>
                <li><a href="thread.jsp">Thảo luận</a></li>
                <li><a href="kiemtra.jsp">Kiểm tra</a></li>
                <li> <a href="#">Giới thiệu</li>
              </ul>
          </nav>
          <!-- End Menu Bootstrap -->
        </div>
    </header>

  <div id="wrapper">
      <div class="container">
        <div class="row">
          <div class="content col-md-9 col-sm-9 col-xs-12">
           
            <div class="container">
                <div class="row">
                   
                    <div class="item col-md-6 col-sm-6 col-xs-6 ">
                          <ul class="nav navs-tabs-brand">
                                    <h3><a  href="">Danh sách khoá học</a></h3>
                                   <p><a href="chitietkhoahoc.jsp">Lập trình C căn bản</a></p>
                                 
                                    <p class="bg-warning">Lập trình hướng đối tượng C++</p>
                                    <p class="bg-warning">Lập trình hướng đối tượng C#</p>
                                    <p class="bg-warning">Lập trình hướng đối tượng Java+</p>
                                    <p class="bg-warning">Lập trình IOS</p>
                                    <p class="bg-warning">Lập trình Web với APS.NET</p>
                                    <p class="bg-warning">Lập trình Web với Java</p>
                                    <p class="bg-warning">Lập trình Android</p>
                                    <p class="bg-warning">Lập trình Lập trình SQL</p>
 
                        </ul>
                    </div>    
                 
                   
                </div>
            </div>

            <!--<div class="slider"><img src="dimages/slider.jpg"></div>-->
            
            
          </div>



          <!-- bên phải-->
          <div class="sidebar col-md-3 col-sm-3 col-xs-12">
            <div class="sidebar-item">
              <h4 class="widget-title">Thiết kế web</h4>
              <div class="textwidget">
                <img src="images/sidebar1.jpg">
              </div>
            </div>
            
                </div> 
              </caption>

            </div>

          </div>
        </div>
      </div>
    </div>


    <jsp:include page="footer.jsp"></jsp:include>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>