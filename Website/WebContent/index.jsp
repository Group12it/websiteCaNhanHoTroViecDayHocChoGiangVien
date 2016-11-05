<%@ page import="java.lang.*" %>
<%@ page import="model.*" %>
<%@page import="controller.*" %>
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


  <%
  	String error="";
  if(request.getAttribute("error")!=null)
  {
	  error=(String) request.getAttribute("error");
  }
  %>
  
    <header>
      <div class="container">
        <div class="row">
          <div class="logo col-md-6 col-sm-6 col-xs-12"><h1><a href="#">Học lập trình</a></h1></div>
                <p></p>
                <div class="navbar-right">
                <%if(request.getAttribute("error")!=null){%>
                        <div class="">
                            <p style="color:red"><%=request.getAttribute("error")%></p>
                        </div> 
                <%}%>
                <a style="cursor:pointer" id="myBtn"><button type="button" class="btn btn-info"">Đăng nhập</button> </a>
                <a style="cursor:pointer" id="btndangky"><button type="button" class="btn btn-warning"  style="margin-right: 30px;">Đăng ký</button> </a>
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
                    <div class="modal-header" style="padding:10px 20px;background:#0CC;">
                        <button type="button" class="close" data-dismiss="modal">
                            &times;
                        </button>
                        <h2 style="color:white"><span class="glyphicon glyphicon-log-in"></span> Đăng nhập</h2>
                    </div>
                    <div class="modal-body" style="padding:40px 50px;">
                  <div class="account">
            
		                    <form id="frm-login" action="Home
		                    " method="POST" class="form-horizontal"   data-bv-message="This value is not valid"
		            data-bv-feedbackicons-valid="glyphicon glyphicon-ok"
		            data-bv-feedbackicons-invalid="glyphicon glyphicon-remove"
		            data-bv-feedbackicons-validating="glyphicon glyphicon-refresh"
		            >
		            <%--Loi --%>        
                      <div id="err_login"></div>
                        <%if(request.getAttribute("error")!=null){%>
                        <div class="">
                            <p style="color:red"><%=request.getAttribute("error")%></p>
                        </div> 
                        <%}%>
                     <div class="form-group">
                    <label class="control-label col-md-3" for="email">Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                    <div class="col-md-8">
           				 <input class="w3-input w3-border" type="email" name="email" ng-model="email"  placeholder="Email" requied autofocus>
                        
                    </div>
                	</div>
               
               		 <div class="form-group">
                    <label class="control-label col-md-3" for="email">Mật khẩu:</label>
                    <div class="col-md-8">
           				  <input class="w3-input w3-border" type="password" name="pass" ng-model="password" placeholder="Mật khẩu"
                              >        
                    </div>
                	</div>
               		 
               		  <div class="form-group">
                   <label class="control-label col-md-4" for="email"></label>
                    <div class="col-md-6">
           			     <input  type="hidden" value="login" name="command">
                            <button  style="border-radius: 15px; margin-right: 30px;" value="login" class="w3-btn w3-green w3-ripple text-center" ng-disabled="error || incomplete">&#10004; Đăng nhập</button>
   
                    </div>
                	</div>
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
      
                              <div class="modal-header" style="padding:15px 50px;background:orange; height:70px;">
                                  <button type="button" class="close" data-dismiss="modal">
                                      ×
                                  </button>
                                  <h2 style="color:white;"><span class="glyphicon glyphicon glyphicon-user"> </span> Đăng ký thành viên</h2>
                              </div>
                              <div class="modal-body" style="padding:20px 20px">

					<div class="account">
						
						<form action="Home" method="POST"  class="form-horizontal"   data-bv-message="This value is not valid"
		            data-bv-feedbackicons-valid="glyphicon glyphicon-ok"
		            data-bv-feedbackicons-invalid="glyphicon glyphicon-remove"
		            data-bv-feedbackicons-validating="glyphicon glyphicon-refresh"
		            >
								  <%if(request.getAttribute("trung")!=null){%>
                        <div class="">
                            <p style="color:red"><%=request.getAttribute("trung")%></p>
                        </div> 
                        <%}%>
						<%--email --%>
							  <div class="form-group">
                                  <label class="control-label col-md-4" for="usrname">Email <span class="batbuoc">(*)</span><span class="glyphicon glyphicon glyphicon-envelope"></span> </label>
                                 <div class="col-md-8">
                                  <input  class="form-control" type="email"  id="user-result" name="email" ng-model="email" placeholder="Nhập Email"  requied autofocus/><span id="user-result"  ></span>
                               </div>
                                </div>
               				<%--Password --%>
							 <div class="form-group">
                                  <label class="control-label col-md-4" for="usrname"> Mật khẩu <span class="batbuoc">(*)</span><span class="glyphicon glyphicon glyphicon-envelope"></span></label>
                                 <div class="col-lg-8">
                                  <input class="form-control"  id="pass" name="pass" type="password" placeholder="Mật khẩu" requied  ng-model="password">
                                  <span id="user-result" class="field-validation-valid text-danger" data-valmsg-for="Pass" data-valmsg-replace="true"></span>
                           	</div>
                            </div>
                            	
                            	
                             <div class="form-group">
                                  <label class="control-label col-md-4" for="usrname">Họ tên <span class="batbuoc">(*)</span></label>
                                 <div class="col-md-8">
                                  <input class="form-control"  id="pass" name="hovaten" type="text"  placeholder="Nhập họ tên" >
                                  <span id="user-result" class="field-validation-valid text-danger" data-valmsg-for="Pass" data-valmsg-replace="true"></span>
                            </div>
                            </div>
                         
                       	  <div class="form-group">
                                          <label class="control-label col-md-4">Ngày sinh <span class="batbuoc">(*)</span><span class="glyphicon glyphicon-time" ng-model="password"> </span></label>
                                          <div class="col-md-8">
                                         
                                          <input class="form-control valid" data-val="true" data-val-required="Ngày sinh không được bỏ trống!" id="datepicker" name="ngaysinh" placeholder="Ngày sinh của bạn" type="date" value="">
                                          <span class="text-danger field-validation-valid" data-valmsg-for="BirthDate" data-valmsg-replace="true"></span>
                                          <span class="field-validation-valid text-danger" data-valmsg-for="CustomError" data-valmsg-replace="true"></span>
                            </div>
                            </div>
                       
                          
                            <div class="form-group">
                                        
                                         
                                          <label class="control-label col-md-4">Giới tính:</label>
                                        <select name="Gender">
                                        <option value="Nam">Nam</option>
                                        <option value="Nữ" >Nữ</option>
                                        </select>
                                          <label class="radio-inline"><input checked="checked" data-val="true" data-val-required="Bạn chưa chọn giới tính." id="Gender1" name="Gender" type="radio" value="true" required> Nam </label>
                                          <label class="radio-inline"><input id="Gender2" name="Gender" type="radio" value="false">Nữ</label>
                            </div>
                            	
                             <div class="form-group">
                                          <label class="control-label col-md-4">Điện thoại<span class="glyphicon glyphicon-phone"> </span></label>
                                       <div class="col-md-8" >
                                          <input class="form-control" data-val="true" data-val-regex="Số điện thoại không hợp lệ" data-val-regex-pattern="^[0]\d{9,}$" id="PhoneNumber" name="sodienthoai" placeholder="Số điện thoại liên hệ" type="text" value="0">
                                          <span class="field-validation-valid text-danger" data-valmsg-for="PhoneNumber" data-valmsg-replace="true"></span>
                               </div></div>
                       	
							<hr>
								<input type="hidden" value="insert" name="command"> 
							   <div class="col-md-5"></div>
							   <button type="submit" value="Register" class="w3-btn w3-green w3-ripple"  style="border-radius: 15px; margin-right: 30px;" ng-disabled="error || incomplete">&#10004; Đăng ký</button>
                       		
						</form>
						  
					</div>
                       </div>
                          </div>
                           </div>
                          </div>
  <!--End model đăng ký-->
        <section class="row">
  <div class="container">
        <div class="row">
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
             <marquee SCROLLDELAY = 150 width ="100%" height = "300" direction="up" style ="font:arial" scrollamount="2" id="bannerthongbao" name="bannerthongbao" onmouseover="this.stop()" onmouseout="this.start()">
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

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>