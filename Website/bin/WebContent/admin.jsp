<%@page import="java.io.PrintWriter"%>
<?xml version="1.0" encoding="utf-8" ?>
<%@page import="dao.UsersDAO"%>
<%@page import="model.Users"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
  <head>
    <meta content="charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
     <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;"/>
	<link rel="shortcut icon" href="images/head.ico" type="image/x-icon" />
	<link rel="icon" href="images/head.ico" type="image/x-icon" />
    <title>Website Cá nhân hỗ trợ giáo viên dạy học</title>
  
  </head>
    <body>
    	<jsp:include page="header.jsp"></jsp:include>
    	
    	
    	<%	
    	Users users=null;
    	if(session.getAttribute("user")!=null)
    	{
    		users=(Users) session.getAttribute("user");
    	}
    	UsersDAO userDAO=new UsersDAO();
    	String t="";
    	
    	if(userDAO.checkQuyen(users.getUserEmail(),users.getUserRole())==false){
     			 
    		 PrintWriter outt=response.getWriter();
 			 response.setContentType("text/html");
 			 outt.println("<!DOCTYPE html><head><title>Không có quyền truy cập</title></head><body></body></html>");
     			
     	 }else 
     	 
     	 {
     		 t="khongloi";
     	 }
     	%>
    	
    	
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
                          
            </div>
            </div>
            </div>

          </div>
        </div>
 <jsp:include page="footer.jsp" ></jsp:include>
     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!--     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> -->
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>