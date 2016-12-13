<%@ page language="java" contentType="text/html; charset=UTF-8"
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
  
    <link rel="stylesheet" type="text/css" href="css/stylemenu.css">
     <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" media="all" type="text/css" href="css/font-awesome.min.css"/>
</head>

<body>

<jsp:include page="header.jsp"></jsp:include>

  <div id="wrapper">
      <div class="container">
        <div class="row">
          <div class="content col-md-9 col-sm-9 col-xs-12">
           
            <div class="container">
                <div class="row">
              
<div class="col-md-2"></div>

<div class="col-md-6">
<section class="row">
          


<div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
        <div class="modal-header bg-primary" style="padding:15px 50px;min-height:15px;">
            <button type="button" class="close" data-dismiss="modal">
                ×
            </button>
            <h2><span class="glyphicon glyphicon glyphicon-user"> </span> Đăng ký ghi danh khóa học "Lập trình c"</h2>
        </div>
        <div class="modal-body" style="padding:40px 50px">
            
               

                <form action="khoahoccuartoi.jsp" method="post" role="form" novalidate="novalidate">


                    <div class="form-group">
                    <label class="control-label"><span class="glyphicon glyphicon-envelope"> </span> Email <span class="batbuoc">(Bắt buộc)</span></label>
                      <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus><br>
                

                </div>
                <div class="form-group">
                    <label for="usrname"><span class="glyphicon glyphicon-user"></span> Họ tên <span class="batbuoc">(Bắt buộc)</span></label>
                     <input type="email" id="inputEmail" class="form-control" placeholder="Họ tên" required autofocus><br>
                    <span class="field-validation-valid text-danger" data-valmsg-for="HoTen" data-valmsg-replace="true"></span>
                </div>
                <div class="form-group">
                    <label><span class="glyphicon glyphicon-phone"> </span> Số điện thoại <span class="batbuoc">(Bắt buộc)</span></label>
                    <input type="number" id="inputSDT" class="form-control" placeholder="Phone number" required autofocus><br>
                </div>
                <div class="form-group">
                    <label><span class="glyphicon glyphicon-home"> </span> Địa chỉ <span class="batbuoc">(Bắt buộc)</span></label>
                    <input class="form-control" id="DiaChi" name="DiaChi" placeholder="Địa chỉ của bạn" type="text" value="">
                    <span class="field-validation-valid text-danger" data-valmsg-for="DiaChi" data-valmsg-replace="true"></span>
                </div>
               
                <div class="form-group">
                    <label><span class="glyphicon glyphicon-time"> </span>Mã lớp đăng ký <span class="batbuoc">(Bắt buộc)</span></label>
                    <select class="form-control valid" id="MaLop" name="MaLop"><option selected="selected" value="LopC">L_MVC5</option>
</select> 
                    <span class="field-validation-valid text-danger" data-valmsg-for="MaLop" data-valmsg-replace="true"></span>
                </div>
                <div class="form-group">
                  
                    <button type="submit" style="color:#fff;" class="btn btn-primary btn-lg btn-block">
                        Đăng ký
                    </button>
                </div>
			</form>        </div>
		    </div>
		</div>
		    </section>
		</div>
		                </div>
            </div>
          </div>
          <div class="sidebar col-md-3 col-sm-3 col-xs-12">
            
            </div>

                </div> 
           

            </div>

          </div>
    

  <jsp:include page="footer.jsp"></jsp:include>

  <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>