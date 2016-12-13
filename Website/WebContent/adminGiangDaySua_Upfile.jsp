 <%@page import="java.*" %>
 <%@page import="dao.*" %>
   <%@page import="controller.*" %>
   <%@page import="model.*" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta content="charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <title>Website Cá nhân hỗ trợ giáo viên dạy học</title>
    <link rel="shortcut icon" href="images/head.ico" type="image/x-icon" />
	<link rel="icon" href="images/head.ico" type="image/x-icon" />
    

</head>

<body>
<jsp:include page="header.jsp" ></jsp:include>
    
    <%	
	ChiTietKhoaHocDAO chkhDAO=new ChiTietKhoaHocDAO();
    KhoaHocsDAO khDAO=new KhoaHocsDAO();
    String khid="";
    if(request.getParameter("khoahoc")!=null){
    	khid=request.getParameter("khoahoc");
    	
    }
    
    String khct="khct";
	if(request.getParameter("khct")!=null){
	khct= request.getParameter("khct");
	
	
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
												&nbsp;&nbsp;&nbsp;&nbsp;Trang chủ quản trị</a></li>

										<li class="active"><a href="quanly-khoa-hoc"
											class="list-group-item " style="z-index: 0"><i
												class="glyphicon glyphicon-education"></i>&nbsp;&nbsp;&nbsp;&nbsp;
												Quản lý khoá học</a></li>

										<li class="active"><a href="quan-ly-thread"
											class="list-group-item" style="z-index: 0"><i
												class="glyphicon glyphicon-comment"></i>
												&nbsp;&nbsp;&nbsp;&nbsp;Thread thảo luận</a></li>

										<li class="active"><a href="ke-hoach-giang-day"
											class="list-group-item active"><i
												class="glyphicon glyphicon-calendar"></i>
												&nbsp;&nbsp;&nbsp;&nbsp;Kế hoạch giảng dạy<i class="glyphicon glyphicon-menu-right text-right"></i> </a></li>

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
											class="list-group-item " style="z-index: 0"><i
												class="glyphicon glyphicon-bookmark"></i>
												&nbsp;&nbsp;&nbsp;&nbsp;Quản lý bài tập</a></li>
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
                                        <h4 style="font-family: verdana;color:#000">Tên Bài Giảng</h4>
                                    </div>
                                    <div class="panel-body">

                                        <div class="panel-body">
                                            <form class="form" method="post" action="sua-khoa-hoc-chi-tiet" enctype="multipart/form-data" >
                                              	
                                              	<%for(ChiTietKhoaHoc ctkh:chkhDAO.getChiTietKhoaHocByIDCT(khct)) {%>
                                                <div class="form-group">
                                                    <label for="contactemail">Tên Bài Giảng</label>
                                                    <input name="tieude" value="<%=ctkh.getTenBaiHoc() %>" type="text" class="form-control"   placeholder="Nhập Tên Bài Giảng" required autofocus></input>
                                                </div>
                                                  
                                               <div class="form-group">
                                                    <label for="contactemail">Slide Bài Giảng</label>
                                                    <input name="baigiang" value="<%=ctkh.getPathBaiGiang() %>" type="text" class="form-control"  placeholder="link Bài Giảng" required autofocus></input>
                                                </div>
                                                <div class="form-group">
                                                    <label for="contactemail">Ebook</label>
                                                    <input name="ebook" value="<%=ctkh.getPathEbook() %>" type="text" class="form-control"  placeholder="link ebook" required autofocus></input>
                                                </div> 
                                                <div class="form-group">
                                                    <label for="contactemail">Video</label>
                                                    <input name="video" type="text" value="<%=ctkh.getPathVideo() %>" class="form-control"  placeholder="link video" required autofocus></input>
                                                </div>

  												<div class="form-group">
                                                    <label for="contactmessage">Nội Dung Bài Giảng</label><br></br>
                                               	<div class="col-md-6">
                       							 <textarea rows="10" class="form-control" name="noidung" placeholder="Nội dung bài giảng" required autofocus><%=ctkh.getNoiDung() %></textarea>
                   								</div>
                                                </div>
                                                
                                                	<input type="file" value="<%=ctkh.getPathBaiTap() %>" id="file" name="file" required autofocus/> 
                                          		<br></br>
                                         			<input type="hidden" name="makhoc" value="<%=ctkh.getMakh()%>"/>
                                          	
                                          		<input type="hidden" name="machitiet" value="<%=ctkh.getChitietKhoaHocID() %>"/>
                                        
                                         		<%} %>
                                          	
                                          		

                                           
                                          	
                                          <center> <button type="submit"  class="btn btn-info" title="Tạo bài giảng!">Sửa bài giảng</button>
                                         			</center>								
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