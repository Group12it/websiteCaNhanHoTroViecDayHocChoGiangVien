<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <title>Website Cá nhân hỗ trợ giáo viên dạy học</title>
    <link rel="shortcut icon" href="images/head.ico" type="image/x-icon" />
	<link rel="icon" href="images/head.ico" type="image/x-icon" />
    

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
                         <li class="active"><a href="trang-chu-quan-tri" class="list-group-item active" style="z-index: 0"><i class="glyphicon glyphicon-home"></i> &nbsp;&nbsp;&nbsp;&nbsp;Trang chủ quản trị</a></li>
                               
                                <li class="active"><a href="quanly-khoa-hoc" class ="list-group-item " style="z-index: 0"><i class="glyphicon glyphicon-education"></i>&nbsp;&nbsp;&nbsp;&nbsp; Quản lý khoá học</a></li>
                               
                                <li class="active"><a href="quan-ly-thread" class="list-group-item" style="z-index: 0"><i class="glyphicon glyphicon-comment"></i> &nbsp;&nbsp;&nbsp;&nbsp;Thread thảo luận</a></li>
                             
                                <li class="active"><a href="ke-hoach-giang-day" class ="list-group-item" ><i class="glyphicon glyphicon-calendar"></i> &nbsp;&nbsp;&nbsp;&nbsp;Kế hoạch giảng dạy</a></li>
                              
                                <li class="active"><a href="quan-ly-hoc-vien" class="list-group-item" style="z-index: 0"><i class="glyphicon glyphicon-user"></i> &nbsp;&nbsp;&nbsp;&nbsp;Quản lý học viên</a></li>
                              
                                <li class="active"><a href="gui-mail" class ="list-group-item" style="z-index: 0"><i class="glyphicon glyphicon-envelope"></i>&nbsp;&nbsp;&nbsp;&nbsp; Gửi mail cho sinh viên</a></li>
                              
                            
                                <li class="active"><a href="danh-sach-hoc-vien-nop-bai" class ="list-group-item" style="z-index: 0"><i class="glyphicon glyphicon-list-alt"></i>&nbsp;&nbsp;&nbsp;&nbsp; Bài tập của học viên</a></li>
                               
                                <li class="active"><a href="them-de-thi-trac-nghiem" class="list-group-item" style="z-index: 0"><i class="glyphicon glyphicon-pencil"></i> &nbsp;&nbsp;&nbsp;&nbsp;Đề thi trắc nghiệm</a></li>

                        </ul>
                    </div>  
                    </div>
                    </div>   
    		 <div class="col-md-9">
                    <ul class="nav navs-tabs-brand">
                    <table class="ria">
                        <tr>
                           
                       

                                <div class="panel panel-default">
                                    <div class="panel-heading" style="background:#0CC">
                                        <h4 style="font-family: verdana;color:#000">Tải Bài Giảng</h4>
                                    </div>
                                    <div class="panel-body">

                                        <div class="panel-body">
                                            <form class="form" method="post" id="contactform" action="" role="form">
                                                <div class="form-group">
                                                    <label for="contactemail">Tên Bài Giảng</label>
                                                    <input type="email" class="form-control" id="contactemail" placeholder="Nhập Tên Bài Giảng" required autofocus>
                                                </div>

                                                <div class="form-group">
                                                    <label for="contactmessage">Nội Dung Bài Giảng</label><br>
                                               	<div class="col-md-6">
                       							 <textarea rows="6" class="form-control" id="comments" name="noidungbaigiang" placeholder="nội dung"></textarea>
                   								</div>
                                               
                                                </div>

                                         
   												<input type="file" class="filestyle" data-buttonName="btn-primary" data-input="false"  data-icon="glyphicon glyphicon-home"></input>
 												<br>
 												
                                   
                                                <button type="submit" id="contracbtn" class="btn btn-info">Tải Lên</button>
                                                </br>
                                                <!-- kết thúc gửi mail-->
                                            </form>
                                        </div>
                                    </div>

                                </div>
                      
                            </tr>
                    </table>
                    </ul>
               
    
    </div></div></div></div></div>
    
    </div>
    
    
    
    
    
    <script>
               
		$(":file").filestyle({iconName: "glyphicon-inbox"});
		


</script>
    
       <jsp:include page="footer.jsp" ></jsp:include>]
     <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    
</body>
</html>