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
                      <h1>Danh sách kiểm tra</h1>
                     <table class="table table-bordered">
                        <thead>
                          <tr style="background:#00a8d8">
                            <th>STT</th>
                            <th>Tên khóa học</th>
                            <th>Kiểm tra</th>
                            <th>Kết quả</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td>1</td>
                            <td>Lập trình c căn bản</td>
                           <td><a href="chitietkiemtra.jsp">bài kiểm tra</a></td>
                           <td><a href="xemdiem.jsp"> Xem kết quả </a></td>
                          </tr>
                          <tr>
                             <td>2</td>
                            <td>Lập trình web</td>
                           <td><a href="">bài kiểm tra</a></td>
                           <td><a href="">xem kết quả </a></td>
                          </tr>
                          <tr>
                             <td>3</td>
                            <td>Cơ sở dữ liệu</td>
                           <td><a href="">bài kiểm tra</a></td>
                           <td><a href=""> Xem kết quả </a></td>
                          </tr>
                        </tbody>
                  </table>
                    </div>
             </div>
                </div>
          </div>
                </div> 
                </div></div>
     <br><br><br>
	<jsp:include page="footer.jsp"></jsp:include>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>