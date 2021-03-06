<?xml version="1.0" encoding="utf-8" ?>
<%@page import="dao.*" %>
<%@page import="model.*" %>

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.*" %>
<%@ page import="connect.DBConnect" %> 

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta content="charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix= "c" %>
		<%@ taglib uri= "http://java.sun.com/jsp/jstl/sql" prefix= "sql" %>
	
<link rel="shortcut icon" href="images/head.ico" type="image/x-icon" />
	<link rel="icon" href="images/head.ico" type="image/x-icon" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <title>Website Cá nhân hỗ trợ giáo viên dạy học</title>


</head>

<body>

<jsp:include page="header.jsp"></jsp:include>

<%
	ChiTietKhoaHocDAO ctkhDAO=new ChiTietKhoaHocDAO();
	AdminBaiTapDAO adbaitapDAO=new AdminBaiTapDAO();
	String baitap="";
	if(request.getParameter("baitap")!=null){
		baitap=request.getParameter("baitap");
	}
	String chitiet="";
	if(request.getParameter("chitiet")!=null){
		chitiet=request.getParameter("chitiet");
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
										<li class="active"><a href="trang-chu-quan-tri" class="list-group-item" style="z-index: 0"><i class="glyphicon glyphicon-home"></i>
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
											class="list-group-item" style="z-index: 0"><i
												class="glyphicon glyphicon-record"></i>
												&nbsp;&nbsp;&nbsp;&nbsp;Đề thi trắc nghiệm</a></li>
										
										<li class="active"><a href="quan-ly-tai-khoan"
											class="list-group-item" style="z-index: 0"><i
												class="glyphicon glyphicon-user"></i>
												&nbsp;&nbsp;&nbsp;&nbsp;Quản lý tài khoản</a></li>
												
												<li class="active"><a href="danh-sach-khoa-hoc-khao-sat"
											class="list-group-item" style="z-index: 0"><i
												class="glyphicon glyphicon-stats"></i>
												&nbsp;&nbsp;&nbsp;&nbsp;Kết quả khảo sát KH</a></li>
										
											<li class="active"><a href="quan-ly-bai-tap"
											class="list-group-item active" style="z-index: 0"><i
												class="glyphicon glyphicon-bookmark"></i>
												&nbsp;&nbsp;&nbsp;&nbsp;Quản lý bài tập<i class="glyphicon glyphicon-menu-right text-right"></i></a></li>
									</ul>
                    </div>  
                    </div>
                    </div>    
                    <div class="col-md-9">
                         <ul class="nav navs-tabs-brand">
                   
                             <div class="panel panel-default" style="max-height:100%">
                                    <div class="panel-heading" style="background:#0CC">
                                       <center> <h2 style="font-family: 'Times New Roman';size:15; color:#FFF">Quản lý bài tập</h2>
                                    </center>
                                    </div>
                                    <div class="panel-body">

                                        <br/>
                                        <a href="" class="btn btn-info btn" style="background: #59b300">
                                            <span class="glyphicon glyphicon-plus"></span> 
                                        </a>
                                        <p></p>
                                           <%for(AdminBaiTap adbt:adbaitapDAO.getAdminBaiTapListByIDBT(Long.parseLong(baitap))){ %>
                                      
                                     	 <ul>
                                         <li> <label>Tên bài tập:  </label> <%=adbt.getTenBaiTap() %> </li>
                                          <li><label>Hạn nộp:  </label> 	<%=adbt.getHanNop() %> <%=adbt.getGioNop() %>  </li>  
                                           <li><label>Nội dung bài tập</label> <br><%=adbt.getNoiDungBaiTap() %></li>
                                           
                                           <%} %>
                                           
                                           <%for(ChiTietKhoaHoc ct: ctkhDAO.getChiTietKhoaHocByIDCT(chitiet)){ %>
                                          
                                          <form action="DownLoadFile" method="post">
                                          <a href="DownLoadFile"><button type="submit" style="background-color: white;border: none;font-style: italic;"> <input name="idfilename" type="hidden" value="<%=ct.getPathBaiTap()%>"/>File bài tập</button></a>
                                          </form>
                                          
                                           <%} %>
                                           
                                           
                                         </ul>
                                                                           </div>
                                </div>
                    </ul>
                     </div>
            </div>
            </div>
            </div>
         </div></div>
    
   
    <jsp:include page="footer.jsp"></jsp:include> 

    <script src="js/bootstrap.min.js"></script>
</body>
</html>