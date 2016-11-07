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
   <body>
   <jsp:include page="header.jsp"></jsp:include>

  
  <div id="wrapper">
      <div class="container">
        <div class="row">
         
            <div class="container">
                <div class="row">
                
                    <div class="col-md-12">
                       <div class="panel panel-primary" style="padding-top:0px ">
              			 <div class="panel panel-default">
                                <div class="panel-body text-center" style="background:Blue; "><font size="5"  color="white" >Làm bài kiểm tra</font> </div>
                            </div>
                           <div class ="panel-body"> 
                  
                           <div class="panel panel-primary lambaikiemtra">
      
        <div class="panel-body" style="padding:0">
            <div class="panel ">
            <div class="col-md-12">
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
                          
                      <!-- kết thúc lấy đề bài-->
                      
                      <table> <embed src="baikiemtra.txt"  high="100%" type="" width="100%"></embed></table>
                      
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
      
                        
                    </div>  
                    </div>
                    </div>    
                    </div>
            </div>
            </div>
         </div></div>
    
  
  
  
  
  
  
  
  <div id="wrapper">
      <div class="container">
        <div class="row">
          <div class="content col-md-12 col-sm-12 col-xs-12">
            <div class="container">
                <div class="row">
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
   
   <jsp:include page="footer.jsp"></jsp:include>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>