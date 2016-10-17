<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link href="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.2.0/css/bootstrap.css" rel="stylesheet" media="screen">
  <link href="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/css/bootstrapValidator.min.css" rel="stylesheet"/>
  <link rel="stylesheet" href="css/stylevadidating.css">
   
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
                    <li><a href="indexuser.jsp">Trang chủ</a></li>
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
                     <li> <a href="#myModal"   data-toggle="modal" >Liên hệ</a></li>
                    <li> <a href="#">Giới thiệu</a></li>
                </ul>
            </nav>
        </div>
        </nav>
    </div>
    </div>
</header>
<body>

<!-- Modal -->
    <div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
        <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title">Contact Form</h4>
        </div>
        <div class="modal-body">
            <form class="form-horizontal" id="contactform" name="commentform" method="post" action="indexuser.html"
            data-bv-message="This value is not valid"
            data-bv-feedbackicons-valid="glyphicon glyphicon-ok"
            data-bv-feedbackicons-invalid="glyphicon glyphicon-remove"
            data-bv-feedbackicons-validating="glyphicon glyphicon-refresh"
            >
               <div class="form-group">
                    <label class="control-label col-md-4" for="first_name">First Name</label>
                    <div class="col-md-6">
                        <input type="text" class="form-control" id="first_name" name="first_name" placeholder="First Name"
                        data-bv-notempty data-bv-notempty-message="You're required to fill in a first name!"
                        />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-4" for="last_name">Tiêu đề</label>
                    <div class="col-md-6">
                        <input type="text" class="form-control" id="last_name" name="last_name" placeholder="Tiêu đề"
                        data-bv-notempty data-bv-notempty-message="You've forgotten to provide your last name!"
                        />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-4" for="email">Email Address</label>
                    <div class="col-md-6">
            <input type="email" class="form-control" id="email" name="email" placeholder="Email Address"
                        data-bv-notempty data-bv-notempty-message="An email address is mandatory"
                        />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-4" for="comment">Question or Comment</label>
                    <div class="col-md-6">
                        <textarea rows="6" class="form-control" id="comments" name="comments" placeholder="Your question or comment here"></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-6">
                        <button type="submit" value="Submit" class="btn btn-custom pull-right" id="send_btn">Send</button>
                    </div>
                </div>
            </form>
        </div><!-- End of Modal body -->
        </div><!-- End of Modal content -->
        </div><!-- End of Modal dialog -->
    </div><!-- End of Modal -->
<!-- End of Container -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/js/bootstrapValidator.min.js" type="text/javascript"></script>
<script>
$('#contactform').bootstrapValidator();
</script>


   
        <div class ="container">
        <div class="row">
  <!---->

        <div class="col-md-9">
		<br><br>
                  <div class="slideshow-container">

                              <div class="mySlides fade">
                               
                                <img src="images/banner1.jpg" style="width:100%">
                                <div class="text">Caption Text</div>
                              </div>

                              <div class="mySlides fade">
                                
                                <img src="images/banner2.jpg" style="width:100%">
                                <div class="text">Caption Two</div>
                              </div>

                              <div class="mySlides fade">
                              
                                <img src="images/banner3.jpg" style="width:100%">
                                <div class="text">Caption Three</div>
                              </div>
                            </div>
                            <br>

                            <div style="text-align:center">
                              <span class="dot"></span>
                              <span class="dot"></span>
                              <span class="dot"></span>
                            </div>

                        


</div>

 

<!--Thông báo-->
   <!--Thông báo-->
   <div class="sidebar col-md-3 col-sm-3 col-xs-12">
      <br><br>
              <div class="panel panel-default">
                                <div class="panel-body" align="center"><font size="3" color="green">Thông báo mới </font> </div>
                            </div>
             <table class="table table-bordered">
             <thead>
             <tr>
             <th>
             <marquee SCROLLDELAY = 150 width ="110%" height = "300" direction="up" style ="font:arial" scrollamount="2" id="bannerthongbao" name="bannerthongbao" onmouseover="this.stop()" onmouseout="this.start()">
             <ul>
                 <li><a href="chitietkhoahoc.jsp">Thông tin khóa học C căn bản</a></li>
                 <br>
                 <li>Thông tin học lập trình C# </li>
                 <br>
                 <li>Lâp trình java</li>
             </ul>
             </marquee>
             </th>
             </tr>
             </thead>
             </table>

    </div>
  <!--End thông báo--> 
    </div>
    <!--end row-->
    </div>


  
    <footer>
      <div class="container">
        <div class="footer-info text-center">
          <p>Group 12 Copyright&copy; 2016 Designer</a><br>
        </p>
        </div>
      </div>
    </footer>

          

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