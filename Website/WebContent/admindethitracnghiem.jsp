<?xml version="1.0" encoding="utf-8" ?>
<%@ page import="java.lang.*" %>
<%@ page import="model.*" %>
<%@page import="controller.*" %>
<%@ page import="dao.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
  <head>
    <meta content="charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    
    <link rel="shortcut icon" href="images/head.ico" type="image/x-icon" />
	<link rel="icon" href="images/head.ico" type="image/x-icon" />
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
		
    <SCRIPT LANGUAGE="JavaScript">
      function confirmAction() {
        return confirm("Bạn Đã Thực Hiện Thao Tác Thành Công")
      }
 
      </SCRIPT>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Website Cá nhân hỗ trợ giáo viên dạy học</title>

      <script src="Script/Script.js"></script>
     </head>
   
<body>
<jsp:include page="header.jsp" ></jsp:include>
<% KhoaHocsDAO khoahocsDAO=new KhoaHocsDAO();
%>
  <div>
      <div class="container">
        <div class="row">
          <div id="wrapper">
      <div class="container">
        <div class="row">
     
           
            <div class="container">
                <div class="row">
                
                    <div class="col-md-3">
                          <div class="panel panel-primary" style="padding-top:0px ">
                           <div class ="panel-body"> 
                  
                        		<ul class="nav navs-tabs-brand">
										<li class="active"><a href="trang-chu-quan-tri" class="list-group-item " style="z-index: 0"><i class="glyphicon glyphicon-home"></i>
												&nbsp;&nbsp;&nbsp;&nbsp;Trang chủ quản trị </a></li>

										<li class="active"><a href="quanly-khoa-hoc"
											class="list-group-item " style="z-index: 0"><i
												class="glyphicon glyphicon-education"></i>&nbsp;&nbsp;&nbsp;&nbsp;
												Quản lý khoá học</a></li>

										<li class="active"><a href="quan-ly-thread"
											class="list-group-item" style="z-index: 0"><i
												class="glyphicon glyphicon-comment"></i>
												&nbsp;&nbsp;&nbsp;&nbsp;Thread thảo luận</a></li>

										<li class="active"><a href="ke-hoach-giang-day"
											class="list-group-item"><i
												class="glyphicon glyphicon-calendar"></i>
												&nbsp;&nbsp;&nbsp;&nbsp;Kế hoạch giảng dạy</a></li>

										<li class="active"><a href="quan-ly-hoc-vien"
											class="list-group-item" style="z-index: 0"><i
												class="glyphicon glyphicon-user"></i>
												&nbsp;&nbsp;&nbsp;&nbsp;Quản lý học viên</a></li>

										<li class="active"><a href="gui-mail"
											class="list-group-item" style="z-index: 0"><i
												class="glyphicon glyphicon-envelope"></i>&nbsp;&nbsp;&nbsp;&nbsp;
												Gửi mail cho sinh viên</a></li>

										<li class="active"><a href="xem-danh-sach-bai-tap"
											class="list-group-item" style="z-index: 0"><i
												class="glyphicon glyphicon-book"></i>&nbsp;&nbsp;&nbsp;&nbsp;
												Bài tập của học viên</a></li>
										
										
										<li class="active"><a href="danh-sach-hoc-vien-nop-bai"
											class="list-group-item" style="z-index: 0"><i
												class="glyphicon glyphicon-list-alt"></i>&nbsp;&nbsp;&nbsp;&nbsp;
												Bài thi của học viên</a></li>

										<li class="active"><a href="them-de-thi-trac-nghiem"
											class="list-group-item active" style="z-index: 0"><i
												class="glyphicon glyphicon-record"></i>
												&nbsp;&nbsp;&nbsp;&nbsp;Đề thi trắc nghiệm<i class="glyphicon glyphicon-menu-right text-right"></i></a></li>
										
										<li class="active"><a href="quan-ly-tai-khoan"
											class="list-group-item" style="z-index: 0"><i
												class="glyphicon glyphicon-user"></i>
												&nbsp;&nbsp;&nbsp;&nbsp;Quản lý tài khoản</a></li>
												
												<li class="active"><a href="danh-sach-khoa-hoc-khao-sat"
											class="list-group-item" style="z-index: 0"><i
												class="glyphicon glyphicon-stats"></i>
												&nbsp;&nbsp;&nbsp;&nbsp;Kết quả khảo sát KH</a></li>
										
											<li class="active"><a href="quan-ly-bai-tap"
											class="list-group-item " style="z-index: 0"><i
												class="glyphicon glyphicon-bookmark"></i>
												&nbsp;&nbsp;&nbsp;&nbsp;Quản lý bài tập</a></li>
									</ul>
                    </div>  
                    </div>
                    </div>    
                     <form method="post" action="dethi" enctype="multipart/form-data" >
                    <div class="col-md-9  ">
                    <ul class="nav navs-tabs-brand">
                             <a class="list-group-item text-center" href="#" style="font-size: 20px;color: blue;"
                        type="text/css" media="screen">
                                 Soạn Đề Thi Trắc Nghiệm</a> <br>  <label
                                 style="font-size: 15px" >Tên Đề Thi</label>
                                 
                                  <input type="text" class="form-control" name="tendethi" id="DeThiID" value ="" placeholder="Tên Đề Thi" required autofocus >
                                  
                                 
                                	 <div class="row">
                                 
                                
                                  
                                  <p align=""><font face="Arial">
                                  <div class="form-group">
                                   <label class="control-label col-md-2">Khoá học</label>
                                  <div class="col-md-12">
                                 	 <select name="mhoc" id="mhoc" class="form-control" style="font-size: 15px;width: 100%"  >
                                <%for (KhoaHocs kh :khoahocsDAO.getKhoaHocList()) { %>
                                	<option value="<%=kh.getAdMaKH() %>" selected ><%=kh.getAdTenKH() %></option>
                            
                                <%} %>
                                    </select>
                                    </div>
                                     </div>
                                    </div>
                                    <br></br>
							        <div class="form-group">
							       	<label class="control-label col-md-2">Tải đề thi lên</label>
							         <input type="file" id="fileContetnts" name="file"required autofocus title="Chỉ có đề thi dạng txt mới hiển thị được trên giao diện"/>
                                      </div>
                                     
                                     
                                        <div class="col-md-1">
                   
                                        <button class="btn btn-info" type="submit" onclick="return formaction()">Tạo đề thi</button>
                           			  </div>
                    
                                   <!--code hien file text đề thi -->                      
                              
                       </ul>
                     </div>
                     </form>
                </div>
                
            </div>
            </div>
         
              

            </div>

          </div>
        </div>
      </div>
    </div>
<br></br>
<jsp:include page="footer.jsp"></jsp:include>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript">
    function formaction(){
     return alert('Thao tác thành công');
        
    }</script>
    
  </body>
</html>