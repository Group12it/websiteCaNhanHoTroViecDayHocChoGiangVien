<%@page import="java.lang.*" %>
<%@page import="model.*" %>
<%@page import="dao.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Website Cá nhân hỗ trợ giáo viên dạy học</title>
 <link rel="shortcut icon" href="images/head.ico" type="image/x-icon" />
	<link rel="icon" href="images/head.ico" type="image/x-icon" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap-timepicker.min.js"></script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div id="wrapper">
    <div class="container">
        <div class="row">
            <div class="content col-md-12 col-sm-9">
                <div class="container">
                    <div class="row">


                        <div class="col-md-12">
                           <div class="panel panel-default" >
                              
                        			        <div class="panel-heading" style="background:#0CC">
                                                <h3 style="font-family: verdana;color:#FFF">Bài tập
                                                       <a href="khoa-hoc-cua-toi"> <button type="button" class="btn btn-danger navbar-btn pull-right" style="border-radius: 15px; margin-right: 30px;">Quay lại</button></a>
                                                <br></br>
                                                </h3>
                                            </div>
                                        
                                <p>
                                <br><br>
                                    <font size="5">
                                    
                                    <lable>Tên bài tâp:</lable>
                                        
                                        
                                    </font>
                                </p>
                                
					</div>
					</div>
                                 <div class="form-group">
                                            <label for="contactghichu">Yêu cầu bài tập</label><br>
                                            <textarea class="form-group" id="yeucaubaitap" rows="5" cols="125" name="yeucaubaitap"></textarea>
                                   </div>
                        <form class="form-horizontal">
                                <div class="col-md-7">
       								 <div class="form-group">
       								 
                                            <lable>Ngày kết kết thúc :</lable><br><br>
                                             <div class="input-group date" id="datetimepicker1">
						                    <input type="date" class="form-control" name="ngayketthuc" id="ngayketthuc"/>
						                    <span class="input-group-addon">
						                        <span class="glyphicon glyphicon-calendar"></span>
						                    </span>
						                     </div>
						                     </div>
                                      
						                     <div class="form-group">
                                            <lable>Thời gian kết thúc :</lable><br><br>
                                            <div class="input-group bootstrap-timepicker timepicker">
									            <input id="timepicker1" type="time" class="form-control input-small" name="thoigianketthuc">
									            <span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span>
									        </div>
									    </div>
									</div>
									</form>
                    </div>
            
                    </div>
			<button class="btn btn-info navbar-btn" id="btnsubmit" name="btnsubmit" style="margin-left: 500px;">Cập nhật</button>
                    
                </div>

            </div>

        </div>
        </div>
     
   <script type="text/javascript">
            $('#timepicker1').timepicker();
        </script>
        
        <script type="text/javascript">
            $(function () {
                $('#datetimepicker1').datetimepicker();
            });
        </script>
   <jsp:include page="footer.jsp"></jsp:include>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    </body>
</body>
</html>