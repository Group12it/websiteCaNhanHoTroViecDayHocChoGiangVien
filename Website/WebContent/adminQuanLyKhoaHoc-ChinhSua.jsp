<%@page import="dao.*"%>
<%@page import="model.*" %>
<%@page import="java.*"%>
<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
 	 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Website Cá nhân hỗ trợ giáo viên dạy học</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
<link rel="shortcut icon" href="images/head.ico" type="image/x-icon" />
	<link rel="icon" href="images/head.ico" type="image/x-icon" />

</head>

<body>

	<jsp:include page="header.jsp"></jsp:include>
  <%
	Users user = null;
	if (session.getAttribute("user") != null) {
		user = (Users) session.getAttribute("user");
	}
	
		KhoaHocsDAO khoahocDAO =new KhoaHocsDAO();
		String khoahocID="";
		if(request.getParameter("khoahoc")!=null){
		khoahocID= request.getParameter("khoahoc");
		
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
                               
                                <li class="active"><a href="quan-ly-thread" class="list-group-item" style="z-index: 0"><i class="glyphicon glyphicon-comment"></i> &nbsp;&nbsp;&nbsp;&nbsp;Thread thảo luận</a></li>
                             
                                <li class="active"><a href="ke-hoach-giang-day" class ="list-group-item " ><i class="glyphicon glyphicon-calendar"></i> &nbsp;&nbsp;&nbsp;&nbsp;Kế hoạch giảng dạy</a></li>
                              
                                <li class="active"><a href="quan-ly-hoc-vien" class="list-group-item active" style="z-index: 0"><i class="glyphicon glyphicon-user"></i> &nbsp;&nbsp;&nbsp;&nbsp;Quản lý học viên</a></li>
                              
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
                    <div class="col-md-9">
                         <ul class="nav navs-tabs-brand">
                               <td class="content-center">
                              <div class="panel panel-default" style="max-height:100%">
                                    <div class="panel-heading" style="background:#0CC">
                                        <h4 style="font-family: verdana;color:#000">Quản lý Khóa học</h4>
                                    </div>
                              <form action="quan-ly-khoa-hoc" method="post" > 
                                    <div class="panel-body">

                                        <div class="col-md-12">

                 		<%
                        for (KhoaHocs kh :khoahocDAO.getKhoaHocListByID(khoahocID)){
                        %>
                   					
                   					<input type="hidden" name="makh" value="<%=kh.getAdMaKH()%>"></input>
                                                <div class="form-group">
                                                    <label>Tên khóa học</label>
                                                    <input type="text" class="form-control" value="<%=kh.getAdTenKH() %>" name="tenkh" requied autofocus />
                                                </div>
                                                <div class="form-group">
                                                    <label>Ngày khai giảng</label>
                                                    <input type="date" class="form-control" value="<%=kh.getAdNgayKhaiGiang() %>" name="ngaykhaigiang" />
                                                </div>
                                                <div class="form-group">
                                                    <label>Học phí</label>

                                                    <input name="hocphi" type="number" class="form-control"  value="<%=kh.getAdHocPhi() %>" />
                                                </div>
                                                <div class="form-group">
                                                    <label>Khái quá khóa học</label>
                                                    <textarea name="khaiquat"  class="form-control" rows="5" cols="20"><%=kh.getAdKhaiQuat() %></textarea>
                                                </div>
                                                <div class="form-group">
                                                    <label>Nội dung khóa học</label>
                                                    <textarea name="noidung"  class="form-control" rows="5" cols="20"><%=kh.getAdNoiDung() %></textarea>
                                                </div>
                                                
                                                  <div class="form-group">

                                                    <label>Trailer(Link youtube)</label>
                                                    <input value="<%=kh.getAdShowtester() %>" name="showtester" class="form-control" />
                                                </div>
                                             
                                                  <input type="hidden" name="command" value="update"></input>                  
                                        		<button type="submit" class="btn btn-primary">Lưu Lại</button>
                                               <a href="quanly-khoa-hoc"><button type="button" class="btn btn-danger" >Hủy Bỏ</button></a>
                                                  
                                            <%} %> 
                                        </div>

                                    </div>
                                    </form>
                                </div>

                            </td>
                   
                    </ul>
                                            

                     </div>
  
      
            </div>
            </div>
            </div>
         </div></div>
    <jsp:include page="footer.jsp" ></jsp:include>
    
   <%--Thông báo --%> 
   
    <script type="text/javascript">
    function formaction(){
     return alert('Thao tác thành công');
        
    }</script>
    
      <%--Thông báo --%> 
      
         <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!--     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> -->
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    
</body>
</html>