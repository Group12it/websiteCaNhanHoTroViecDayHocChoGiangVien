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
    <link href="css/banerchuyendong.css" rel="stylesheet">
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
                 <form action="index.jsp" >
                <div class="navbar-right">
                <a href="quanlytaikhoan.jsp">Học viên</a>
                <img src="images/hoclaptrinh.jpg" align="bottom" width="40" height="40"/>
                <button class="btn btn-danger navbar-btn">Đăng xuất</button>

               </form>

                </div>             

        <body>
            

           <img src="images/hoclaptrinh.jpg" align="bottom" width="1165" height="160"/>
               
          
      
      </div>
    </header>

    <section class="container" style="min-height:800px">
     


        <section class="row">
  

            
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
                           <li><a href="khoahoccuartoi.jsp">Khóa học của tôi</a></li>
                      </li>
                            <li><a href="thread.jsp">Thảo luận</a></li>
                            <li><a href="kiemtra.jsp">Kiểm tra</a></li>
                            <li> <a href="#">Gửi mail</a></li>
                            <li> <a href="#">Giới thiệu</a></li>
                  </ul>
              </nav>
          <!-- start tìm kiếm-->

                   <br><br><br>

                    <div class="clearfix"></div>
                
                    <!-- End Menu Bootstrap -->
                  </div>



        <div class="row">
  <!---->

        <div class="col-md-9 col-xs-1">

  
<br><br><br>
  <div class="container">
                <div class="row">
                
                    <div class="col-md-2 col-xs-1">
                          <ul class="nav navs-tabs-brand">
                               
                                <a style="background:#00a8d8" class ="list-group-item " href="chitietkhoahoccuatoi1.jsp">Quay lại</a>
                               

                        </ul>
                    </div>    
                    <div class="col-md-4">
                        <h3>Bài học số 1</h3>
                        <video id="myVideo" width="640" height="480" controls>
                        <source src="Video/movie.mp4" type="video/mp4">
                        <source src="movie.ogg" type="video/ogg">
                        Your browser does not support the video tag.
                        </video>

                    </div>
                        
 
                </div>
            </div>


    </div>

        </section>
    </section>

          

<!--Script chuyển động baner-->

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";
    }
    slideIndex++;
    if (slideIndex> slides.length) {slideIndex = 1}
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 2000); // Change image every 2 seconds
    }
</script>
<!--Script chuyển động baner-->

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>