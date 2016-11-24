<%@ page import="java.lang.*" %>
<%@ page import="model.*" %>
<%@ page import="dao.*" %>
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
    <link href="css/dropdown.css" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="css/thongtin.css">
    <link href="ajax.aspnetcdn.com/ajax/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/banerchuyendong.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/stylemenu.css">
     <link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" media="all" type="text/css" href="css/font-awesome.min.css"/>
      <link rel="stylesheet" href="css/w3.css">
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
		<script src="js/angular.min.js"></script>
      <script src="js/myUsers.js"></script>
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js" type="text/javascript"></script>
 
</head>

<body ng-app="myApp" ng-controller="userCtrl">

<sql:setDataSource var="DBConnect" driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost/web" user="root" password="admin" />

      <%
           
            Users users = null;
            if (session.getAttribute("user") != null) {
                users = (Users) session.getAttribute("user");
            }
        %>
       
<sql:query dataSource="${DBConnect }" var="result"> select * from users where Email="";</sql:query> 

<% KhoaHocsDAO khoahocsDAO=new KhoaHocsDAO();
%>
  
    <header>
      <div class="container">
        <div class="row">
           <div class="logo col-md-6 col-sm-6 col-xs-12" ><h1><a href="#">Học lập trình</a></h1></div>
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
				<a class="navbar-brand" href="home"></a>
			</div>
			<div id="navbar" class="navbar-collapse collapse" aria-expanded="false" style="height: 1px; color: blue;">
				<ul class="nav navbar-nav" style="color:blue;"><!-- navbar-nav-->
					<li class=""><a href="home" style="color:white;">Trang chủ</a></li>
					<li class="dropdown" style="color:white;">
						<a href="#" class="dropdown-toggle" style="color:white;" data-toggle="dropdown">Khoá học<span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
						<%
                            for (KhoaHocs kh :khoahocsDAO.getKhoaHocList()) {
                        %>
                           	<li><a href="chi-tiet-khoa-hoc-xem?khoahoc=<%=kh.getAdMaKH()%>"><%=kh.getAdTenKH()%></a></li>
                        <%
                            }
                        %>
						</ul>
					</li>
					<li><a href="yeu-cau-dang-nhap" style="color:white;">Khoá học của tôi</a></li>
					<li><a href="yeu-cau-dang-nhap" style="color:white;">Thảo luận</a></li>
					<li><a href="yeu-cau-dang-nhap" style="color:white;">Kiểm tra</a></li>	
					<li><a   href="" style="color:white;cursor:pointer" id="btnguimail" >Liên hệ</a></li>
					<li><a href="" style="color:white;">Giới thiệu</a></li>				
				</ul>
			</div><!--/.nav-collapse -->
		</div>
	</nav>
	</div>
</header>
     
 <section class="container" style="min-height:000px">
        <!-- Modal đăng nhập-->
       
       
       <!-- Modal đăng nhập-->
        <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog">
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
                            <a href="quen-mat-khau">Quên mật khẩu?</a>
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
                                          <label class="radio-inline"><input checked="checked" data-val="true" id="Gender1" name="Gender" type="radio" value="Nam" required> Nam </label>
                                          <label class="radio-inline"><input id="Gender2" name="Gender" type="radio" value="Nữ">Nữ</label>
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
        <div class="modal fade" id="myModal2" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                   
      		        <div class="modal-header" style="padding:15px 40px;background:#0CC;height:40px;">
                                
                                  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                 
                                     <h4 class="modal-title" style="color: white">Contact Form</h4>
                               
                     </div>
                   	<div class="modal-body" style="padding:40px 50px; background:#6cc ">

					<div class="account">
						
						 <form class="form-horizontal" id="contactform" name="commentform" method="post" action="indexuser.jsp"
            data-bv-message="This value is not valid"
            data-bv-feedbackicons-valid="glyphicon glyphicon-ok"
            data-bv-feedbackicons-invalid="glyphicon glyphicon-remove"
            data-bv-feedbackicons-validating="glyphicon glyphicon-refresh">
			  <div class="form-group">
                    <label class="control-label col-md-4" for="email">Địa chỉ Email</label>
                    <div class="col-md-6">
           				 <input type="email" value="nhom12it@gmail.com" class="form-control" id="email" name="email" placeholder="Địa chỉ Email"
                        data-bv-notempty data-bv-notempty-message="An email address is mandatory"
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
                    <label class="control-label col-md-4" for="comment">Nội dung</label>
                    <div class="col-md-6">
                        <textarea rows="6" class="form-control" id="comments" name="comments" placeholder="nội dung"></textarea>
                    </div>
                </div>
                  <div class="form-group">
                    <label class="control-label col-md-4" for="comment">Đính kèm file</label>
                    <div class="col-md-6" class="form-control">
                       <input type="file" value="No file" placeholder="No file">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-6">
                        <button type="submit" value="Submit" class="btn btn-custom pull-right" style="color:white;background:#0cc">Send</button>
                    </div>
                </div>
                </Form>
					</div>
					</div>
					</div>
					</div>
					</div>
    </section>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/js/bootstrapValidator.min.js" type="text/javascript"></script>
<script>
$('#contactform').bootstrapValidator();
</script>
<script src="ajax.aspnetcdn.com/ajax/jQuery/jquery-2.1.4.min.js"></script>
<script src="ajax.aspnetcdn.com/ajax/jquery.ui/1.10.3/jquery-ui.min.js"></script>
<script src="Scripts/respond.min.js"></script>
<script src="Scripts/jssocials.min.jsp"></script>
<script src= "myUsers.js"></script>
<script src="Scripts/dangnhapdangky.js"></script>
    <script src="Scripts/jquery.unobtrusive-ajax.min.js"></script>
    <script src="Scripts/jquery.bxslider.min.js"></script>
   <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
<!--  <script src="js/bootstrap.min.js"></script> -->
  </body>
</html>