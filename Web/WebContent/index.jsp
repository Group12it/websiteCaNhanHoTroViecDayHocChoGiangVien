<%@ page import="java.lang.*" %>
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
    <link rel="shortcut icon" href="images/head.ico" type="image/x-icon" />
	<link rel="icon" href="images/head.ico" type="image/x-icon" />
      <link href="css/bootstrap.min.css" rel="stylesheet">
    
      <link href="ajax.aspnetcdn.com/ajax/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet"/>
      <link href="css/bootstrap.min.css" rel="stylesheet">
       <link href="css/banerchuyendong.css" rel="stylesheet">
         	 <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/stylemenu.css">
     <link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" media="all" type="text/css" href="css/font-awesome.min.css"/>
      <link rel="stylesheet" href="css/w3.css">
        <link href="js/bootstrap.min.js" rel="stylesheet">
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
		<script src="js/angular.min.js"></script>
      <script src="js/myUsers.js"></script>
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js" type="text/javascript"></script>
 
	<%--Kiểm tra mail đã trùng bằng ajax--%>
	<!-- <script type="text/javascript">

	$(document).ready(function(){
		var x_timer;
		$("#username").keyup(function (e){
			clearTimeout(x_timer);
			var user_name=$(this).val();
			x_timer=setTimout(function (){
				check_username_ajax(user_name);
			},1000);
			
		});
		
		function check_username_ajax(username){
			$("#user-result").html('<img src ="img/ajax-loader.gif"/>');
			$.post('CheckEmailServlet',{'username':username}, function (data){
				$("#user-result").html(data);
			});
		}
	});
	</script> -->
	<%--Kiểm tra mail đã trùng bằng ajax--%>
</head>

<body ng-app="myApp" ng-controller="userCtrl">

<sql:setDataSource var="conn" driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost/web" user="root" password="admin" />


    <header>
      <div class="container">
        <div class="row">
          <div class="logo col-md-6 col-sm-6 col-xs-12"><h1><a href="#">Học lập trình</a></h1></div>
                <p></p>
                <div class="navbar-right">
                
                
                <a style="cursor:pointer" id="myBtn"><button type="button" class="btn btn-info"">Đăng nhập</button> </a>
                <a style="cursor:pointer" id="myBtn"><button type="button" class="btn btn-warning"  style="margin-right: 30px;">Đăng ký</button> </a>
            </div>
    <!--End đăng nhập đăng ký-->
        </div>
        <p></p>
        <div class="col-md-13 ">
            <img src="images/hoclaptrinh.jpg" align="bottom" width="1165" height="160" class="img-responsive img-rounded"/>
            
           </div>
        
        <nav class="navbar navbar-default" role="navigation" style="color:blue;"> <!--navbar-default-->
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
					<span class="sr-only">Đây là menu mobile</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="http://congdongit.org"></a>
			</div>
			<div id="navbar" class="navbar-collapse collapse" aria-expanded="false" style="height: 1px; color: blue;">
				<ul class="nav navbar-nav" style="color:blue;"><!-- navbar-nav-->
					<li class=""><a href="./index.html" style="color:white;">Trang chủ</a></li>
					<li class="dropdown" style="color:white;">
						<a href="#" class="dropdown-toggle" style="color:white;" data-toggle="dropdown">Khoá học<span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">Lập trình C căn bản</a></li>
							<li><a href="#">Lập trình hướng đối tượng C++</a></li>
							<li><a href="#">Lập trình java</a></li>
						</ul>
					</li>
					<li><a href="#" style="color:white;">Khoá học của tôi</a></li>
					<li><a href="#" style="color:white;">Thảo luận</a></li>
					<li><a href="#" style="color:white;">Kiểm tra</a></li>	
					<li><a href="" style="color:white;">Liên hệ</a></li>
					<li><a href="" style="color:white;">Giới thiệu</a></li>				
				</ul>
			</div><!--/.nav-collapse -->
		</div>
	</nav>
	</div>
</div>
</header>
     


  </header>  


 <section class="container" style="min-height:500px">
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
                  <div class="account">
            
		                    <form action="UsersServlet" method="POST" class="form-horizontal"   data-bv-message="This value is not valid"
		            data-bv-feedbackicons-valid="glyphicon glyphicon-ok"
		            data-bv-feedbackicons-invalid="glyphicon glyphicon-remove"
		            data-bv-feedbackicons-validating="glyphicon glyphicon-refresh"
		            >
		                      
                      
                      
                      <form hiden="hidenform" class="form-horizontal">
                        <%if(request.getParameter("error")!=null){%>
                        <div>
                            <p style="color:red"><%=request.getParameter("error")%></p>
                        </div> 
                        <%}%>
                        	<label>Email:</label>
                            <input class="w3-input w3-border" type="email" name="email" ng-model="email"  placeholder="Email" >
                            <br>
                            <label>Password:</label>
                            <input class="w3-input w3-border" type="password" name="pass" ng-model="password" placeholder="Mật khẩu"
                              >
                           
                            <br>
                            <input  type="hidden" value="login" name="command">
                            <button value="login" class="w3-btn w3-green w3-ripple" ng-disabled="error || incomplete">&#10004; Đăng nhập</button>
                    </form>
                    </form>
                </div>
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

					<div class="account">
						
						<form action="UsersServlet" method="POST">
						
							  <div class="form-group">
                                  <label for="usrname"><span class="glyphicon glyphicon glyphicon-envelope"></span> Email <span class="batbuoc">(Bắt buộc)</span></label>
                                  <input class="form-control"  id="user-result" name="email" type="email" data-bv-notempty data-bv-notempty-message="Bạn không được bỏ trống Email"
                        />        <span id="user-result"></span>
                               
                                </div>
							
							 <div class="form-group">
                                  <label for="usrname"><span class="glyphicon glyphicon glyphicon-envelope"></span> Mật khẩu <span class="batbuoc">(Bắt buộc)</span></label>
                                  <input class="form-control"  id="pass" name="pass" type="password">
                                  <span id="user-result" class="field-validation-valid text-danger" data-valmsg-for="Pass" data-valmsg-replace="true"></span>
                            </div>
                       
							<input type="hidden" value="insert" name="command"> 
							   <button type="submit" value="Register" class="w3-btn w3-green w3-ripple" >&#10004; Đăng ký</button>
                       		
						</form>
					</div>



					<!-- <form action="UsersServlet" menthod="post">
                                     <!--  <div class="form-group">
                                          <label class="control-label"><span class="glyphicon glyphicon-user"> </span> Họ tên <span class="batbuoc">(Bắt buộc)</span></label>
                                          <input class="form-control" data-val="true" data-val-length="Họ tên không được phép quá ngắn hoặc quá dài!" data-val-length-max="100" data-val-length-min="10" data-val-required="Họ tên không được để trống!" id="FullName" name="FullName" placeholder="Họ tên" type="text" value="">
                                          <span class="field-validation-valid text-danger" data-valmsg-for="FullName" data-valmsg-replace="true"></span>
									
                                      </div>-->
					<!--  
                                      <div class="form-group">
                                          <label for="usrname"><span class="glyphicon glyphicon glyphicon-envelope"></span> Email <span class="batbuoc">(Bắt buộc)</span></label>
                                          <input class="form-control" data-val="true" data-val-email="Địa chỉ email không hợp lệ." data-val-required="Bạn chưa nhập Email." id="email" name="email" type="text" value="">
                                          <span id="user-result" class="field-validation-valid text-danger" data-valmsg-for="Email" data-valmsg-replace="true"></span>
                                      </div>
                                       <div class="form-group">
                                          <label><span class="glyphicon glyphicon-eye-open"> </span> Mật khẩu <span class="batbuoc">(Bắt buộc)</span></label>
                                          <input class="form-control" data-val="true" data-val-length="Mật khẩu phải tối thiếu 8 ký tự, tối đa 100 ký tự." data-val-length-max="100" data-val-length-min="8" data-val-required="Bạn chưa nhập mật khẩu." id="pass" name="pass" placeholder="Mật khẩu" type="password">
                                          <span class="field-validation-valid text-danger" data-valmsg-for="Password" data-valmsg-replace="true"></span>
                                      </div>-->
                                    <!--  <div class="form-group">
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
                          			<div class="g-recaptcha" data-sitekey="6LdjVRUTAAAAAIZngSeBDApHMnA_pKcxALxV4sMu"><div style="width: 304px; height: 78px;"><div><iframe src="https://www.google.com/recaptcha/api2/anchor?k=6LdjVRUTAAAAAIZngSeBDApHMnA_pKcxALxV4sMu&amp;co=aHR0cDovL2NodXllbmxhcHRyaW5oLm5ldDo4MA..&amp;hl=vi&amp;v=r20160926121436&amp;size=normal&amp;cb=yk1v9gsk006g" title="tiện ích con mã xác thực lại" width="304" height="78" role="presentation" frameborder="0" scrolling="no" name="undefined"></iframe></div><textarea id="g-recaptcha-response" name="g-recaptcha-response" class="g-recaptcha-response" style="width: 250px; height: 40px; border: 1px solid #c1c1c1; margin: 10px 25px; padding: 0px; resize: none;  display: none; "></textarea>
                       				   </div></div>-->
                                  <!--  <a style="cursor:pointer"id= "myMod">   <button type="submit" style="background:#5cb85c;color:#fff;" class="btn  btn-block">
                                          <span class="glyphicon glyphicon-ok"> </span> Đăng ký
                                      </button>
                                    </a>
                                    <input type="hidden" value="insert" name="command">
                                    <input type="submit" value="Register">
                     


                      </form>    
                      -->   
                      
                       </div>
                          </div>
                           </div>
                          </div>

  <!--End model đăng ký-->



        <section class="row">
  

        <div class="row">
  <!---->
  		<div class="">
  		<div class="">

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
    </div></div>
    </div>
    

        </section>
    </section>

	<jsp:include page="footer.jsp"></jsp:include>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<!-- <script src="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.2.0/js/bootstrap.min.js"></script> -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/js/bootstrapValidator.min.js" type="text/javascript"></script>
<script>
$('#contactform').bootstrapValidator();
</script>
<!--Script chuyển động baner-->
<script src="Scripts/bannerchuyendong.js"></script>
<!--Script chuyển động baner-->
<script src="ajax.aspnetcdn.com/ajax/jQuery/jquery-2.1.4.min.js"></script>
<script src="ajax.aspnetcdn.com/ajax/jquery.ui/1.10.3/jquery-ui.min.js"></script>
<!-- <script src="ajax.aspnetcdn.com/ajax/bootstrap/3.3.5/bootstrap.min.js"></script> -->
<script src="Scripts/respond.min.js"></script>
<script src="Scripts/jssocials.min.jsp"></script>
<script src= "myUsers.js"></script>
<script src="Scripts/dangnhapdangky.js"></script>

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
<!-- 
<script>
    $(document).ready(function () {
        $('[data-toggle="tooltip"]').tooltip();
    });
</script>
 -->

  <!-- <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                var x_timer;
                $("#email").keyup(function (e) {
                    clearTimeout(x_timer);
                    var user_name = $(this).val();
                    x_timer = setTimeout(function () {
                        check_username_ajax(user_name);
                    }, 1000);
                });
                function check_username_ajax(username) {
                    $("#user-result").html('<img src="img/ajax-loader.gif" />');
                    $.post('CheckEmailServlet', {'username': username}, function (data) {
                        $("#user-result").html(data);
                    });
                }
            });
        </script> -->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>