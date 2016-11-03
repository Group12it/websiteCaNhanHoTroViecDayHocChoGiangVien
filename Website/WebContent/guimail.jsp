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
    <link rel="stylesheet" type="text/css" href="js/vali.js">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/stylemenu.css">
    <link rel="stylesheet" type="text/css" href="css/thongtin.css">
<link rel="shortcut icon" href="images/head.ico" type="image/x-icon" />
	<link rel="icon" href="images/head.ico" type="image/x-icon" />
     <link href="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.2.0/css/bootstrap.css" rel="stylesheet" media="screen">
  <link href="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/css/bootstrapValidator.min.css" rel="stylesheet"/>
  
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
                            <li> <a href="guimail.jsp">Liên hệ</a></li>
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
	          <h1>Gửi mail</h1>
	           <table class="table table-bordered" cols="100">
	           <thead>
	           <tr>
	           <th>
	                   <!-- start gửi mail-->
	         		<div class="panel-body">
<!-- 	                 <div class="modal-body">
			            <form class="form-horizontal" id="contactform" name="commentform" method="post" action="indexuser.html"
			            data-bv-message="This value is not valid"
			            data-bv-feedbackicons-valid="glyphicon glyphicon-ok"
			            data-bv-feedbackicons-invalid="glyphicon glyphicon-remove"
			            data-bv-feedbackicons-validating="glyphicon glyphicon-refresh"
			            >
               
                 	  <div class="form-group">
                   	 <label class="control-label col-md-2" for="email">Email</label>
                    	<div class="col-md-9">
           				 <input type="email" class="form-control" id="email" name="email" placeholder="Email Address"
                        data-bv-notempty data-bv-notempty-message="An email address is mandatory"
                        />
                    </div>
              		  </div>
               
               <div class="form-group">
                    <label class="control-label col-md-2" for="">Tiêu Đề</label>
                    <div class="col-md-9">
                        <input type="text" class="form-control" id="first_name" name="f" placeholder="Tiêu đề"
                        data-bv-notempty data-bv-notempty-message="You're required to fill in a first name!"
                        />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-2 text="left" for="last_name">Nội dung</label>
                    <div class="col-md-9">
                        <textarea class="form-group" id="contactmessage" rows="10" cols="50"></textarea>
                    </div>
                </div>
                
                
                <div class="form-group">
                    <div class="col-md-6">
                        <button type="submit" value="Submit" class="btn btn-custom pull-right" id="send_btn">Send</button>
                    </div>
                </div>
            </form>
 <!-- End of Container -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/js/bootstrapValidator.min.js" type="text/javascript"></script>
<script>
$('#contactform').bootstrapValidator();
</script>
	         	
	         	
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
    </div>
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