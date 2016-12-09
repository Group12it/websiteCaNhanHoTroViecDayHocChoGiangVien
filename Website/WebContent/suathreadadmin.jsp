<%@page import="dao.ChiTietThreadsDAO"%>
<%@page import="model.*" %>
<%@page import="dao.ThreadsDAO"%>
<?xml version="1.0" encoding="utf-8" ?>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
  <head>
    <meta content="charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Website Cá nhân hỗ trợ giáo viên dạy học</title>
	<link rel="shortcut icon" href="images/head.ico" type="image/x-icon" />
	<link rel="icon" href="images/head.ico" type="image/x-icon" />
   
     <SCRIPT LANGUAGE="JavaScript">
      function confirmAction() {
        return confirm("Bạn Đã Thực Hiện Thao Tác Thành Công")
      }
 
      </SCRIPT>
    
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

</head>
   
<body>
	<jsp:include page="header.jsp" ></jsp:include>
  
  
<sql:setDataSource var="DBConnect" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/web" user="root" password="admin"/>

<sql:query dataSource="${DBConnect }" var="result"> select * from thread;</sql:query>

	<%
	Users user = null;
	if (session.getAttribute("user") != null) {
		user = (Users) session.getAttribute("user");
	}
	
		ThreadsDAO threadsDao=new ThreadsDAO();ChiTietThreadsDAO chitietthreadDAO=new ChiTietThreadsDAO();
		String threadid="";
		if(request.getParameter("thread")!=null){
		threadid= request.getParameter("thread");
		
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
                             <li class="active"><a href="trang-chu-quan-tri" class="list-group-item " style="z-index: 0"><i class="glyphicon glyphicon-home"></i> &nbsp;&nbsp;&nbsp;&nbsp;Trang chủ quản trị</a></li>
                               
                                <li class="active"><a href="quanly-khoa-hoc" class ="list-group-item " style="z-index: 0"><i class="glyphicon glyphicon-education"></i>&nbsp;&nbsp;&nbsp;&nbsp; Quản lý khoá học</a></li>
                               
                                <li class="active"><a href="quan-ly-thread" class="list-group-item active" style="z-index: 0"><i class="glyphicon glyphicon-comment"></i> &nbsp;&nbsp;&nbsp;&nbsp;Thread thảo luận</a></li>
                             
                                <li class="active"><a href="ke-hoach-giang-day" class ="list-group-item" ><i class="glyphicon glyphicon-calendar"></i> &nbsp;&nbsp;&nbsp;&nbsp;Kế hoạch giảng dạy</a></li>
                              
                                <li class="active"><a href="quan-ly-hoc-vien" class="list-group-item" style="z-index: 0"><i class="glyphicon glyphicon-user"></i> &nbsp;&nbsp;&nbsp;&nbsp;Quản lý học viên</a></li>
                              
                                <li class="active"><a href="gui-mail" class ="list-group-item" style="z-index: 0"><i class="glyphicon glyphicon-envelope"></i>&nbsp;&nbsp;&nbsp;&nbsp; Gửi mail cho sinh viên</a></li>
                              
                            
                                	<li class="active"><a href="xem-danh-sach-bai-tap"
											class="list-group-item" style="z-index: 0"><i
												class="glyphicon glyphicon-book"></i>&nbsp;&nbsp;&nbsp;&nbsp;
												Bài tập của học viên</a></li>
										
										
										<li class="active"><a href="danh-sach-hoc-vien-nop-bai"
											class="list-group-item" style="z-index: 0"><i
												class="glyphicon glyphicon-list-alt"></i>&nbsp;&nbsp;&nbsp;&nbsp;
												Bài thi của học viên</a></li>
                                <li class="active"><a href="them-de-thi-trac-nghiem" class="list-group-item" style="z-index: 0"><i class="glyphicon glyphicon-pencil"></i> &nbsp;&nbsp;&nbsp;&nbsp;Đề thi trắc nghiệm</a></li>
<li class="active"><a href="quan-ly-tai-khoan"
											class="list-group-item" style="z-index: 0"><i
												class="glyphicon glyphicon-pencil"></i>
												&nbsp;&nbsp;&nbsp;&nbsp;Quản lý tài khoản</a></li>
												
												<li class="active"><a href="danh-sach-khoa-hoc-khao-sat"
											class="list-group-item" style="z-index: 0"><i
												class="glyphicon glyphicon-pencil"></i>
												&nbsp;&nbsp;&nbsp;&nbsp;Kết quả khảo sát KH</a></li>
                        </ul>
                    </div>  
                    </div>
                    </div>  
                     <div class="panel panel-default">
                     <div class="col-md-9">
              	 
                   <form action ="Thaoluan" method="post" onSubmit="return confirmAction()">
                    <a class ="list-group-item text-center " href="#" style="font-size: 20px;color: blue;background: #0CC">Sửa Thread Thảo Luận</a><br> 
                	
                     <%
                        for (Threads thr : threadsDao.getThreadsListByID(threadid)){
                        %>
                   
                        			<input type="hidden" name="mathread" value="<%=thr.getThreadID()%>"> 
                       <label style="font-size: 15px">Tên Đề Tài Thảo Luận</label>
                    <br>
                    <input value="<%=thr.getTenThread() %>" class="form-control" type="text" name="tenthread"  size="50% " style="font-size: 15px">
                    <br>  
                    <label style="font-size: 15px">Thời Gian Tạo Thread</label>
 
 					   <input value="<%=thr.getNgayThread() %>" class="form-control valid" data-val="true"  name="ngaytao"  type="date"  />
                                  
                        <%} %> 
                          <input type="hidden" name="command" value="update"/>                  
                    <button type="submit" class="btn btn-info">OK</button>
                        </form>  
                     </div>      
                                       <div class="col-md-1"></div>    
                                             
                </div>
                </div>
            </div>
  
      </div>
    </div>
</div></div>

    <jsp:include page="footer.jsp" ></jsp:include>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!--     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> -->
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    
     
    <script type="text/javascript">
    function formaction(){
     return alert('Thao tác thành công');
        
    }</script>
    
     <SCRIPT LANGUAGE="JavaScript">
      function confirmAction() {
        return confirm("Chắc chắn sửa?")
      }
 
      </SCRIPT>
  </body>
</html>