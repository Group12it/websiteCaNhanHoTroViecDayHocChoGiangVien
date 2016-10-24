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
   <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/stylemenu.css">

 
  </head>
   <body>
   
   <jsp:include page="header.jsp"></jsp:include>
  
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
                    
                </form>
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
    </div></div></div></div></div>
  <jsp:include page="footer.jsp"></jsp:include>
<script type="js/jquery-3.1.1.js"></script>
<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>

  </body>
</html>