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
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/stylemenu.css">
    <link rel="stylesheet" type="text/css" href="css/thongtin.css">
   <link rel="shortcut icon" href="images/head.ico" type="image/x-icon" />
	<link rel="icon" href="images/head.ico" type="image/x-icon" />
	<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
   
  </head>
  
    <body>
    
    <jsp:include page="header.jsp"></jsp:include>
    
  <div id="wrapper">
      <div class="container">
        <div class="row">
          <div class="content col-md-9 col-sm-9 col-xs-12">
           
            <div class="container">
                <div class="row">
                
                    <div class="col-md-1">
                          <ul class="nav navs-tabs-brand">
                               
                              

                        </ul>
                    </div>    
                     
                    <div class ="col-md-7">
                      
                    
                          <h1>Điểm kiểm tra</h1>
                     <table class="table table-bordered">
                        <thead>
                          <tr style="background:#00a8d8">
                            <th>STT</th>
                            <th>Tên khóa học</th>
                            <th>Điểm kiểm tra quá trình</th>
                            <th>Điểm kiểm tra cuối khóa</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td>1</td>
                            <td>Lập trình C căn bản</td>
                           <td>8</td>
                           <td>9</td>
                        </tbody>
                  </table>
                    </div>

                    

 
                    </div>

                  

                 
                </div>

            <!--<div class="slider"><img src="dimages/slider.jpg"></div>-->
            
            
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
  
  
  
<jsp:include page="footer.jsp"></jsp:include>

  
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>