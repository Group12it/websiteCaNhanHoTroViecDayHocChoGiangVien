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
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width = device-width, initial-scale=1">
    <link rel="shortcut icon" href="images/head.ico" type="image/x-icon" />
	<link rel="icon" href="images/head.ico" type="image/x-icon" />
      <link href="css/bootstrap.min.css" rel="stylesheet">
    	<link href="css/dropdown.css" type="text/css"/>
    	 <link rel="stylesheet" type="text/css" href="css/thongtin.css">
      <link href="ajax.aspnetcdn.com/ajax/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet"/>
      <link href="css/bootstrap.min.css" rel="stylesheet">
       <link href="css/banerchuyendong.css" rel="stylesheet">
         	 <link href="css/bootstrap.min.css" rel="stylesheet">
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
                       
<sql:query dataSource="${DBConnect }" var="result"> select * from users where Email="<%=users.getUserEmail()%>";</sql:query> 
        
<% KhoaHocsDAO khoahocsDAO=new KhoaHocsDAO();
%>

    <header>
      <div class="container">
           <div class="row">
            <div class="logo col-md-6 col-sm-6 col-xs-12" ><h1><a href="#">Học lập trình</a></h1></div>
            <div class="navbar-right">
        
                   <a href="thong-tin-ca-nhan" class="dropntn" style="margin-left: 5px;"><%=users.getUserHoTen()%></a>
                    <div class="dropdown right">
                	<c:forEach var="rows" items="${result.rows }">
                	<img src="<%=request.getContextPath()%>/fileUpload/${rows.HinhAnh }" atl="Không có hình đại diện" class="img-circle img-thumbnail" align="bottom" width="40" height="40" />
              		</c:forEach>
                    <span class="arrow"></span>
               	 <div class="dropdown-content" style="z-index: 1">
               	   <%if(users!=null){%>
                	<a href="#" class="dropntn" style="z-index: 1"><%=users.getUserHoTen()%></a> </li>
                                <%}%><span class="arrow"></span></a>
                    <a href="thong-tin-ca-nhan" style="z-index: 1">Thông tin cá nhân</a>
                    <a href="doi-mat-khau"  style="z-index: 1">Đổi mật khẩu</a>
                  </div> 
                  </div>
                  
           
                  
                <from aciton ="Home" menthod="POST"></from>
                <input type="hidden" name="command" value="logout">
                <a href="logout.jsp"> <button type="submit" class="btn btn-danger navbar-btn" style="border-radius: 15px; margin-right: 30px;">Đăng xuất</button></a>
            </div>
          </div>
        <div class="col-md-13 ">
            <img src="images/hoclaptrinh.jpg" align="bottom" width="1165" height="160" class="img-responsive img-rounded"/>
            
           </div>
        
        <nav class="navbar navbar-default" role="navigation" style="color:blue;"> <!--navbar-default-->
		<div class="container" style="z-index: 0">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar" style="z-index: 0">
					<span class="sr-only"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="trang-chu"></a>
			</div>
			<div id="navbar" class="navbar-collapse collapse" aria-expanded="false" style="height: 1px; color: blue;">
				<ul class="nav navbar-nav" style="color:blue;"><!-- navbar-nav-->
					<li class=""><a href="trang-chu" style="color:white;">Trang chủ</a></li>
					<li class="dropdown" style="color:white;">
						<a href="#" class="dropdown-toggle" style="color:white;" data-toggle="dropdown">Khoá học<span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
						<%
                            for (KhoaHocs kh :khoahocsDAO.getKhoaHocList()) {
                        %>
                           	<li><a href="khoa-hoc-chi-tiet?khoahoc=<%=kh.getAdMaKH()%>"><%=kh.getAdTenKH()%></a></li>
                        <%
                            }
                        %>
						</ul>
					</li>
					<li><a href="khoa-hoc-cua-toi" style="color:white;">Khoá học của tôi</a></li>
					<li><a href="thread-thao-luan" style="color:white;">Thảo luận</a></li>
					<li><a href="kiem-tra" style="color:white;">Kiểm tra</a></li>	
					<li><a href="" style="color:white;cursor:pointer" id="btnguimail">Liên hệ</a></li>
					<li><a href="" style="color:white;">Giới thiệu</a></li>				
				</ul>
			</div><!--/.nav-collapse -->
		</div>
	</nav>
	</div>

</header>
     


 <section class="container" style="min-height:000px">
       
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
						
						 <form class="form-horizontal" id="contactform" name="commentform" method="post" action="trang-chu"
            data-bv-message="This value is not valid"
            data-bv-feedbackicons-valid="glyphicon glyphicon-ok"
            data-bv-feedbackicons-invalid="glyphicon glyphicon-remove"
            data-bv-feedbackicons-validating="glyphicon glyphicon-refresh">
						
						
						  <div class="form-group">
                    <label class="control-label col-md-4" for="email">Địa chỉ Email</label>
                    <div class="col-md-6">
           				 <input readonly type="email" class="form-control" id="email" name="email" value="nhom12it@gmail.com" placeholder="Địa chỉ Email"
                        data-bv-notempty data-bv-notempty-message="Vui lòng nhập địa chỉ email"
                        />
                    </div>
                	</div>
                 <div class="form-group">
                    <label class="control-label col-md-4" for="">Mật khẩu </label>
                    <div class="col-md-6">
                        <input type="password" class="form-control" id="" name="matkhau	" placeholder="Mật khẩu mail"
                        data-bv-notempty data-bv-notempty-message="Vui lòng nhập mật khẩu email của bạn!"
                        />
                    </div>
                </div>
              
                <div class="form-group">
                    <label class="control-label col-md-4" for="last_name">Tiêu đề</label>
                    <div class="col-md-6">
                        <input type="text" class="form-control" id="last_name" name="tieude" placeholder="Tiêu đề"
                        data-bv-notempty data-bv-notempty-message="Tiêu đề không được bỏ trống!"
                        />
                    </div>
                </div>
        
                <div class="form-group">
                    <label class="control-label col-md-4" for="comment">Nội dung</label>
                    <div class="col-md-6">
                        <textarea rows="6" class="form-control" id="comments" name="noidung" placeholder="nội dung"></textarea>
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
  <!--   <script src="js/bootstrap.min.js"></script> -->
  </body>
</html>