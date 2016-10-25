<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />


    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <title>Website Cá nhân hỗ trợ giáo viên dạy học</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />

<link rel="shortcut icon" href="images/head.ico" type="image/x-icon" />
	<link rel="icon" href="images/head.ico" type="image/x-icon" />
    <link href="css/styleadmin.css" rel="stylesheet" />

    <link rel="stylesheet" type="text/css" href="css/stylemenu.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link rel="stylesheet" media="all" type="text/css" href="css/font-awesome.min.css" />

   
</head>
<body>
	
	<jsp:include page="headeradmin.jsp" ></jsp:include>
    
    
    <div id="wrapper">
      <div class="container">
        <div class="row">
         
            <div class="container">
                <div class="row">
                
                    <div class="col-md-3">
                       <div class="panel panel-primary" style="padding-top:0px ">
                           <div class ="panel-body"> 
                  
                         <ul class="nav navs-tabs-brand">
                                <li class="active"><a href="admin.jsp" class="list-group-item" style="z-index: 0"><i class="glyphicon glyphicon-home"></i> &nbsp;&nbsp;&nbsp;&nbsp;Trang chủ quản trị</a></li>
                               
                                <li class="active"><a href="quanlykhoahoc.jsp" class ="list-group-item ""><i class="glyphicon glyphicon-education"></i>&nbsp;&nbsp;&nbsp;&nbsp; Quản lý khoá học</a></li>
                               
                                <li class="active"><a href="threadadmin.jsp" class="list-group-item"><i class="glyphicon glyphicon-comment"></i> &nbsp;&nbsp;&nbsp;&nbsp;Thread thảo luận</a></li>
                             
                                <li class="active"><a href="admingiangday.jsp" class ="list-group-item"><i class="glyphicon glyphicon-calendar"></i> &nbsp;&nbsp;&nbsp;&nbsp;Kế hoạch giảng dạy</a></li>
                              
                                <li class="active"><a href="adminQuanLyHocVien.jsp" class="list-group-item"><i class="glyphicon glyphicon-user"></i> &nbsp;&nbsp;&nbsp;&nbsp;Quản lý học viên</a></li>
                              
                                <li class="active"><a href="adminGuiMail.jsp" class ="list-group-item"><i class="glyphicon glyphicon-envelope"></i>&nbsp;&nbsp;&nbsp;&nbsp; Gửi mail cho sinh viên</a></li>
                              
                                <li class="active"><a href="admindanhsachhocvien.jsp" class ="list-group-item active"><i class="glyphicon glyphicon-list-alt"></i>&nbsp;&nbsp;&nbsp;&nbsp; Bài tập của học viên</a></li>
                               
                                <li class="active"><a href="admindethitracnghiem.jsp" class="list-group-item"><i class="glyphicon glyphicon-pencil"></i> &nbsp;&nbsp;&nbsp;&nbsp;Đề thi trắc nghiệm</a></li>

                        </ul>
                    </div>  
                    </div>
                    </div>    
                    <div class="col-md-9">
                         <ul class="nav navs-tabs-brand">
                   
                                <div class="panel panel-default">
                                    <div class="panel-heading" style="background:#0CC">
                                        <h4 style="font-family: verdana;color:#000">Gửi Mail</h4>
                                    </div>
                                    <div class="panel-body">

                                        <div class="panel-body">
                                            <form class="form" method="post" id="contactform" action="" role="form" onSubmit="return formaction()">
                                                <div class="form-group">
                                                    <label for="contactemail">Địa Chỉ Email</label>
                                                    <input type="email" class="form-control" id="contactemail" placeholder="Nhập địa chỉ Email" required autofocus>
                                                </div>

                                                <div class="form-group">
                                                    <label for="contactsubject">Gửi Tới</label>
                                                    <select name="" id="input" class="form-control">
                                                        <option value="">Khóa học lập trình c căn bản</option>
                                                        <option value="">Khóa học lập trình java</option>
                                                        <option value="">Khóa học lập trình web</option>
                                                    </select>
                                                </div>

                                                <div class="form-group">
                                                    <label for="contactsubject">Tiêu Đề</label>
                                                    <input type="subject" class="form-control" id="contactsubject" placeholder="Nhập tiêu đề" required autofocus>
                                                </div>
                                                <div class="form-group">
                                                    <label for="contactmessage">Nội dung tin nhắn</label><br>
                                          
                       							 <textarea rows="6" class="form-control" id="comments" name="noidungbaigiang" placeholder="nội dung"></textarea>
                   								</div>    
                                                <button type="submit" id="contracbtn" class="btn btn-info" >Gửi</button>
                                                <!-- kết thúc gửi mail-->
                                            </form>
                                        </div>
                                    </div>

                    </ul>
                                            

                     </div>
  
      
            </div>
            </div>
            </div>
         </div></div>
    
    
    
    
    
    
    
    
     <jsp:include page="footer.jsp"></jsp:include>
  <%--script thông báo --%>  
    
    <script type="text/javascript">
    function formaction(){
     return alert('Thao tác thành công');
        
    }</script>
    
      <%--script thông báo --%>  
      
         <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    
</body>
</html>