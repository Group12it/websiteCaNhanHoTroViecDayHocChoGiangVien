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

<link rel="stylesheet" href="css/multiChoice.css" type="text/css">

<script type="text/javascript" src="js/time_olympic.js"></script>

  </head>
   <header>
    <div class="container">
        <div class="row">
            <div class="col-xs-2 col-sm-6 col-md-8"></div>
            <div class="col-xs-6 col-md-4"></div>
        </div>
        <div class="row">
            <div class="logo col-md-6 col-sm-6 col-xs-12"><h1><a href="#">Học lập trình</a></h1></div>
            <div class="navbar-right">
                <a href="#">Học Viên</a>
                <img src="images/hoclaptrinh.jpg" align="bottom" width="40" height="40" />
               <a href="index.jsp"><button class="btn btn-danger navbar-btn collapse-xs">Đăng xuất</button></a> 
            </div>
          </div>
        <body>
            <img src="images/hoclaptrinh.jpg" align="bottom" width="1165" height="160" />
        </body>
       <div class="wrapper">
            <nav class="menu">
                <ul class="clearfix">
                    <li><a href="indexuser.jsp">Trang chủ</a></li>
                    <li>
                    <li>
                        <a href="#">Khóa học<span class="arrow"> &#9660;</span> </a>
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
        </nav>
    </div>
    </div>
</header>


  <div id="wrapper">
      <div class="container">
        <div class="row">
          <div class="content col-md-12 col-sm-12 col-xs-12">
           
            <div class="container">
                <div class="row">
                  
                  





       <!--  <section class="container" style="min-height:800px">-->
        <!-- Modal -->
      
      <div style="padding:0" >
    <div class="panel panel-primary lambaikiemtra">
        <div class="panel-heading">
            <b><span class="glyphicon glyphicon-question-sign"> </span> Làm bài kiểm tra</b>
        </div>
        <div class="panel-body" style="padding:0">
            <div class="panel ">
            <div class="col-md-9">
                <div class="panel-body">
                   
                        <div class="form">
                            <div class="alert alert-info"><span class="glyphicon glyphicon-envelope"></span>Làm bài thi và nộp bài trước khi thời gian kết thúc. Nếu thời gian kết thúc thì bài thi sẽ tự động được dừng lại và nộp</div>
                        <div id="ctl15_div_time" class="time-remain">
                            
                            <span class="sp-text">Thời gian còn lại</span> 
                            <br></br>
                            <span class="sp-time" id="aTime" class="timeCount">

                                        <script type="text/javascript">
                                            timeDisplay('aTime',0,0,1,01,5,'ctl15_btn');
                                        </script>

                                        </span>
                        </div>
                        </div>
                          <!--đồng hồ-->
                          
                      
<!--kết thúc đồng hồ-->
                        <!--lấy đề bài-->
                      <!--  <div id="div1"><h2>bài kiểm tra</h2>

                        <button id="btnnop" type="submit" class="btn btn-info">Show đề bài</button><br><br>-->
                       <!-- <div id="demo"><h2>hiện đề bài</h2></div>

                        <button type="button" class="btn btn-info" onclick="loadDoc()">Show đề bài</button>
                        <!-- kết thúc lấy đề bài-->
                       <embed src="baikiemtra.txt" type="" width="100%"></embed>
                        <br><br><br>
                        </div>
                        <!-- câu trả lời -->    
                        <div>
                        <div class="alert alert-info">Bạn chỉ được điền một đáp án vào từng câu</div>
                        <span class="label label-default">Câu 1 :</span>  <input type="" name="">  <br><br>
                        <span class=" label label-default">Câu 2 :</span>  <input type="" name="">  <br><br>
                        <span class="label label-default">Câu 3 :</span>  <input type="" name="">  <br><br>
                        <span class="label label-default">Câu 4 :</span>  <input type="" name="">  <br><br>
                        <span class="label label-default">Câu 5 :</span>  <input type="" name="">  
                        </div>  
                        <!-- kết thúc câu trả lời-->
                   
                </div>
                </div>
               
            </div>
            
            <div class="form-group text-center">
                           <a href="kiemtra.jsp"> <button id="btnnop" type="submit" class="btn btn-info">Nộp bài</button></a>
                        </div>
        </div>
    </div>
</div>

<!--        </section>-->
    
                    </div>

                  
                </div>

            <!--<div class="slider"><img src="dimages/slider.jpg"></div>-->
            
            
          </div>
                </div> 
              </caption>

            </div>

          </div>
        </div>
      </div>
    </div>

  <!-- bắt đầu script chèn file text -->
      <script>
      function loadDoc() {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
          if (this.readyState == 4 && this.status == 200) {
            document.getElementById("demo").innerHTML = this.responseText;
          }
        };
        xhttp.open("GET", "demo.txt", true);
        xhttp.send();
      }
      </script>
        <!-- kết thúc script chèn file text -->
   
   <footer>
      <div class="container">
        <div class="footer-info text-center">
          <p>Group 12 Copyright&copy; 2016 Designer</a><br>
        </p>
        </div>
      </div>
    </footer>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>