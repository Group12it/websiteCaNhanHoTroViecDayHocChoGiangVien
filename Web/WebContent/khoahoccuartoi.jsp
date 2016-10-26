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
    <link rel="stylesheet" type="text/css" href="css/thongtin.css">

  
  </head>
  
   <body>
   
   <jsp:include page="header.jsp"></jsp:include>
   
  <div id="wrapper">
      <div class="container">
        <div class="row">
          <div class="content col-md-9 col-sm-9 col-xs-12">
           
            <div class="container">
                <div class="row">
                
                    <div class="col-md-2">
                          <ul class="nav navs-tabs-brand">
                        </ul>
                    </div>    
                     
                    <div class ="col-md-7">
                        <h1>Danh sách khoá học của bạn</h1>
                      <!-- tạo bảng khóa học của tôi-->
                      <table class="table table-bordered">
                        <thead>
                          <tr style="background:#00a8d8">
                            <th>STT</th>
                            <th>Tên khóa học</th>
                            <th>Xem khóa học</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td>1</td>
                            <td>Khóa học lập trình c căn bản</td>
                           <td><a href="chitietkhoahoccuatoi.jsp">vào khóa học</a></td>
                          </tr>
                          <tr>
                            <td>2</td>
                            <td>Khóa học lập trình web</td>
                            <td>vào khóa học</td>
                          </tr>
                          <tr>
                            <td>3</td>
                            <td>Lập trình window form</td>
                            <td>vào khóa học</td>
                          </tr>
                        </tbody>
                  </table>
                      <!-- kết thúc tạo bảng khóa học của tôi -->
                    </div>

                    </div>
                 
                </div>

            <!--<div class="slider"><img src="dimages/slider.jpg"></div>-->
            
            
          </div>

            </div>

          </div>
        </div>
        <br><br><br><br>
 <jsp:include page="footer.jsp"></jsp:include>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>