<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
  <head>
       <title>Website Cá nhân hỗ trợ giáo viên dạy học</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width = device-width, initial-scale=1">
      <link href="css/bootstrap.min.css" rel="stylesheet">
      <link rel="stylesheet" type="text/css" href="css/stylemenu.css">
      <link href="ajax.aspnetcdn.com/ajax/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet"/>
      <link href="css/bootstrap.min.css" rel="stylesheet">
       <link href="css/banerchuyendong.css" rel="stylesheet">
      <link rel="stylesheet" href="css/w3.css">
      <script src="js/angular.min.js"></script>
      <script src="js/myUsers.js"></script>
</head>


<body ng-app="myApp" ng-controller="userCtrl">

    <header>
      <div class="container">
        <div class="row">
          <div class="logo col-md-6 col-sm-6 col-xs-12"><h1><a href="#">Học lập trình</a></h1></div>
 
<!-- /Đăng nhập-->   
              <div class="navbar-right">
               
                <div class="container-fluid">
                   <div class="collapse navbar-collapse" id="myNavbar">
                      <ul class="nav navbar-nav navbar-right">
                       <li> <a style="cursor:pointer"id= "btndangky"> <button type="button" class="btn btn-danger">Đăng ký</button></a>
                       </li>
                       <li>
                        <a style="cursor:pointer" id="myBtn"><button type="button" class="btn btn-info">Đăng nhập</button> </a>
                        </li>
                      </ul>

                    </div>
                  </div>
             
            </div>

    <!--End đăng nhập đăng ký-->
        </div>
     </div>


  </header>  


 <section class="container" style="min-height:800px">
        <!-- Modal đăng nhập-->
        <div class="modal fade" id="myModal" role="dialog">

            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header" style="padding:15px 50px;background:#4CAF50;">
                        <button type="button" class="close" data-dismiss="modal">
                            &times;
                        </button>
                        <h2><span class="glyphicon glyphicon-log-in"></span> Đăng nhập</h2>
                    </div>
                    <div class="modal-body" style="padding:40px 50px;">
                    <form action="indexuser.jsp" method="post" role="form"> 

                        <form hiden="hidenform">

                            <label>Email:</label>
                            <input class="w3-input w3-border" type="text" ng-model="email"  placeholder="Email">
                            <br>
                            <label>Password:</label>
                            <input class="w3-input w3-border" type="password" ng-model="password" placeholder="Password">

                            <br>
                            <button class="w3-btn w3-green w3-ripple" ng-disabled="error || incomplete">&#10004; Đăng nhập</button>
                        </form>

                    
                   
                    </form>                  
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal">
                            <span class="glyphicon glyphicon-remove"></span> Đóng
                        </button>
                        <p>
                            <a href="../../TaiKhoan/LayLaiMatKhau.jsp">Quên mật khẩu?</a>
                        </p>
                    </div>
                </div>

            </div>
        </div>
        <!-- end Modal đăng nhập-->
  <!-- Model Đăng ký-->
 <div class="modal fade" id="myModal1" role="dialog">

            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
      
                              <div class="modal-header" style="padding:15px 50px;background:#5cb85c;height:100px;">
                                  <button type="button" class="close" data-dismiss="modal">
                                      ×
                                  </button>
                                  <h2><span class="glyphicon glyphicon glyphicon-user"> </span> Đăng ký thành viên</h2>
                              </div>
                              <div class="modal-body" style="padding:40px 50px">
                                  <form action="">
                                      <div class="form-group">
                                          <label class="control-label"><span class="glyphicon glyphicon-user"> </span> Họ tên <span class="batbuoc">(Bắt buộc)</span></label>
                                          <input class="form-control" data-val="true" data-val-length="Họ tên không được phép quá ngắn hoặc quá dài!" data-val-length-max="100" data-val-length-min="10" data-val-required="Họ tên không được để trống!" id="FullName" name="FullName" placeholder="Họ tên" type="text" value="">
                                          <span class="field-validation-valid text-danger" data-valmsg-for="FullName" data-valmsg-replace="true"></span>

                                      </div>
                                      <div class="form-group">
                                          <label for="usrname"><span class="glyphicon glyphicon glyphicon-envelope"></span> Email <span class="batbuoc">(Bắt buộc)</span></label>
                                          <input class="form-control" data-val="true" data-val-email="Địa chỉ email không hợp lệ." data-val-required="Bạn chưa nhập Email." id="Email" name="Email" type="text" value="">
                                          <span class="field-validation-valid text-danger" data-valmsg-for="Email" data-valmsg-replace="true"></span>
                                      </div>
                                      <div class="form-group">
                                          <label><span class="glyphicon glyphicon-eye-open"> </span> Mật khẩu <span class="batbuoc">(Bắt buộc)</span></label>
                                          <input class="form-control" data-val="true" data-val-length="Mật khẩu phải tối thiếu 8 ký tự, tối đa 100 ký tự." data-val-length-max="100" data-val-length-min="8" data-val-required="Bạn chưa nhập mật khẩu." id="Password" name="Password" placeholder="Mật khẩu" type="password">
                                          <span class="field-validation-valid text-danger" data-valmsg-for="Password" data-valmsg-replace="true"></span>
                                      </div>
                                      <div class="form-group">
                                          <label><span class="glyphicon glyphicon-eye-open"> </span>Nhập lại mật khẩu <span class="batbuoc">(Bắt buộc)</span></label>
                                          <input class="form-control" data-val="true" data-val-equalto="Nhập lại mật khẩu không khớp." data-val-equalto-other="*.Password" id="ConfirmPassword" name="ConfirmPassword" placeholder="Nhập lại mật khẩu" type="password">
                                          <span class="field-validation-valid text-danger" data-valmsg-for="ConfirmPassword" data-valmsg-replace="true"></span>
                                      </div>
                                      <div class="form-group">
                                          <label><span class="glyphicon glyphicon-time"> </span>Ngày sinh <span class="batbuoc">(Bắt buộc)</span></label>
                                          <input class="form-control valid" data-val="true" data-val-required="Ngày sinh không được bỏ trống!" id="datepicker" name="BirthDate" placeholder="Ngày sinh của bạn" type="date" value="">
                                          <span class="text-danger field-validation-valid" data-valmsg-for="BirthDate" data-valmsg-replace="true"></span>
                                          <span class="field-validation-valid text-danger" data-valmsg-for="CustomError" data-valmsg-replace="true"></span>
                                      </div>
                                      <div class="form-group">
                                          <label>Giới tính:</label>
                                          <label class="radio-inline"><input checked="checked" data-val="true" data-val-required="Bạn chưa chọn giới tính." id="Gender1" name="Gender" type="radio" value="True"> Nam </label>
                                          <label class="radio-inline"><input id="Gender2" name="Gender" type="radio" value="False">Nữ</label>
                                      </div>
                                      <div class="form-group">
                                          <label><span class="glyphicon glyphicon-phone"> </span>Điện thoại</label>
                                          <input class="form-control" data-val="true" data-val-regex="Số điện thoại không hợp lệ" data-val-regex-pattern="^[0]\d{9,}$" id="PhoneNumber" name="PhoneNumber" placeholder="Số điện thoại liên hệ" type="text" value="">
                                          <span class="field-validation-valid text-danger" data-valmsg-for="PhoneNumber" data-valmsg-replace="true"></span>
                                      </div>
                          <div class="g-recaptcha" data-sitekey="6LdjVRUTAAAAAIZngSeBDApHMnA_pKcxALxV4sMu"><div style="width: 304px; height: 78px;"><div><iframe src="https://www.google.com/recaptcha/api2/anchor?k=6LdjVRUTAAAAAIZngSeBDApHMnA_pKcxALxV4sMu&amp;co=aHR0cDovL2NodXllbmxhcHRyaW5oLm5ldDo4MA..&amp;hl=vi&amp;v=r20160926121436&amp;size=normal&amp;cb=yk1v9gsk006g" title="tiện ích con mã xác thực lại" width="304" height="78" role="presentation" frameborder="0" scrolling="no" name="undefined"></iframe></div><textarea id="g-recaptcha-response" name="g-recaptcha-response" class="g-recaptcha-response" style="width: 250px; height: 40px; border: 1px solid #c1c1c1; margin: 10px 25px; padding: 0px; resize: none;  display: none; "></textarea></div></div>
                                    <a style="cursor:pointer"id= "myMod">   <button type="submit" style="background:#5cb85c;color:#fff;" class="btn  btn-block">
                                          <span class="glyphicon glyphicon-ok"> </span> Đăng ký
                                      </button>
                                    </a>
                     


                      </form>       
                       </div>
                          </div>
                           </div>
                          </div>

  <!--End model đăng ký-->



        <section class="row">
  

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
                              <li><a href="#">Khóa học lập hướng đối tượng C++</a></li>
                              <li><a href="#">Khoá học lập trình Web Java</a></li>
                              <li><a href="#">Khoá học lập trình Web PHP</a></li>
                          </ul>
                      </li>
                            <li><a href="thread.jsp">Thảo luận</a></li>
                             <li> <a href="#myModal2"   data-toggle="modal" >Liên hệ</a></li>
                            <li> <a href="#">Giới thiệu</a></li>
                  </ul>
              </nav>
         
                    <!-- End Menu Bootstrap -->
        </div>



        <div class="row">
  <!---->

        <div class="col-md-9">
        <br><br>

                  <div class="slideshow-container">

                              <div class="mySlides fade">
                               <!-- <div class="numbertext">1 / 3</div>-->
                                <img src="images/banner1.jpg" style="width:100%">
                                <div class="text">Caption Text</div>
                              </div>

                              <div class="mySlides fade">
                               
                                <img src="images/banner2.jpg" style="width:100%">
                                <div class="text">Caption Two</div>

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

 </div>

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

        </section>
    </section>






   <div id="myModal2" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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




          

    <footer>
      <div class="container">
        <div class="footer-info text-center">
          <p>Group 12 Copyright&copy; 2016 Designer</a><br>
        </p>
        </div>
      </div>
    </footer>

    <script src="ajax.aspnetcdn.com/ajax/jQuery/jquery-2.1.4.min.js"></script>
    <script src="ajax.aspnetcdn.com/ajax/jquery.ui/1.10.3/jquery-ui.min.js"></script>
    <script src="ajax.aspnetcdn.com/ajax/bootstrap/3.3.5/bootstrap.min.js"></script>
    <script src="Scripts/respond.min.js"></script>
    <script src="Scripts/jssocials.min.jsp"></script>
 

<script src= "myUsers.js"></script>

   <!--Đăng nhập-->
    <script>
        $(document).ready(function () {
            $.ajaxSetup({ cache: false });
            $("#myBtn").click(function () {
                $("#myModal").modal();

            });
        });
    </script>

    <!--End đăng nhập-->
   <!--đăng ký--> 
    <script>
        $(document).ready(function () {
            $.ajaxSetup({ cache: false });
            $("#btndangky").click(function () {
                $("#myModal1").modal();

            });
        });
    </script>
  <!--End scr đăng ký-->
    <script src="Scripts/jquery.unobtrusive-ajax.min.js"></script>
    <script src="Scripts/jquery.bxslider.min.js"></script>
    <script>
        $(function () {
            $('.slider1').bxSlider({
                slideWidth: 200,
                minSlides: 1,
                maxSlides: 10,
                slideMargin: 25
            });
            $(".bx-default-pager").remove();
        });
    </script>

<script>
    $(document).ready(function () {
        $('[data-toggle="tooltip"]').tooltip();
    });
</script>




    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>