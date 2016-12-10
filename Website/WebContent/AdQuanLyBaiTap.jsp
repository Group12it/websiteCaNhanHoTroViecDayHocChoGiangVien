<%@ page import="java.sql.*"%>
<%@ page import="connect.*"%>
<%@ page import="java.util.*"%>
<%@page import="java.*"%>
<%@page import="dao.*"%>
<%@page import="controller.*"%>
<%@page import="model.*"%>

<%
	Class.forName("com.mysql.jdbc.Driver");
%>
<?xml version="1.0" encoding="utf-8" ?>


<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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

<%AdminBaiTapDAO adbaitapDAO=new AdminBaiTapDAO(); %>   
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

                                        <form method="post" name="frm" action="tim-bai-tap"
											class="form-inline">
											<div class="form-group form-group-sm">

												<div class="form-group">
													<label for="tukhoa">Tìm kiếm:</label> <input type="text"
														class="form-control" id="pid" name="pid"
														data-autocomplete-source="/CauHoi/QuickSearch?MaChuDe=LT"
														placeholder="Nhập câu hỏi ở đây!">
												</div>
												<span class="glyphicon glyphicon-search"></span><input
													type="submit" name="submit" value="Tìm kiếm"
													class="btn btn-warning ">
											</div>

										</form>
                                        <p></p>
                                        
                                        
                                        
                                        
                                        <table class="table table-bordered table-hover">
                                            <thead style="background:#09F">
                                           <tr>
                                            <th>Tên bài tập</th>
                                            <th>Ngày nộp</th>
                                            <th>Giờ nộp</th>
                                            <th>Tuỳ chọn</th>
                                            </tr>
                                            </thead>
                                           
                                            <tbody>
                                       
                                       			<%
									if (request.getAttribute("piList") == null) {
									for(AdminBaiTap adbt:adbaitapDAO.getAdminBaiTapList()){ %>
                                           	<tr>
                                           	<td><%=adbt.getTenBaiTap() %></td>
                                           	<td><%=adbt.getHanNop() %></td>
                                           	<td><%=adbt.getGioNop() %></td>
                                           	<td>
                                           	<a href="quan-ly-bai-tap-xem-chi-tiet?baitap=<%=adbt.getIDBaiTap() %>&chitiet=<%=adbt.getMaChiTietKH() %>" class="btn btn-info btn" style="background: #59b300">Xem chi tiết</a>
                                           	</td>
                                           	</tr>
                                           
                                           
                                           <%} %>
								<%
									}

									
								%>
                                       			
												
												
												
												<%
													int count = 0;
													String color = "#F9EBB3";

													if (request.getAttribute("piList") != null) {
														ArrayList al = (ArrayList) request.getAttribute("piList");
														System.out.println(al);
														Iterator itr = al.iterator();
														while (itr.hasNext()) {

															if ((count % 2) == 0) {
																color = "#eeffee";
															}
															count++;
															ArrayList pList = (ArrayList) itr.next();
															long makh = (Long) (request.getAttribute("makh"));
												%>
												<tr>
 													
													<td><%=pList.get(1)%></td>
													<td><%=pList.get(3)%></td>
													<td><%=pList.get(4)%></td>
													<td>	<a href="quan-ly-bai-tap-xem-chi-tiet?baitap=<%=pList.get(0)%>&chitiet=<%=pList.get(5)%>" class="btn btn-info btn" style="background: #59b300">Xem chi tiết</a>
                                           			</td>
                                           		</tr>
												
												<%
													}
													}
													if (count == 0 && request.getAttribute("piList") != null) {
												%>
												<b>Không tìm thấy!!!</b>
												<%
													}
												%>
                                       
                                       
                                         
                                            </tbody>
                                        </table>
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