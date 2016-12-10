<?xml version="1.0" encoding="utf-8" ?>
<%@page import="dao.KhoaHocsDAO"%>
<%@page import="model.KhoaHocs"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
  <head>
    <meta content="charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Website Cá nhân hỗ trợ giáo viên dạy học</title>
	<link rel="shortcut icon" href="images/head.ico" type="image/x-icon" />
	<link rel="icon" href="images/head.ico" type="image/x-icon" />
   </head>
<body>
	<jsp:include page="header.jsp" ></jsp:include>
  <%KhoaHocsDAO khoahocsDAO =new KhoaHocsDAO();
  	String makh="";
  	if(request.getParameter("khoahoc")!=null){
  		makh=request.getParameter("khoahoc");
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
										<li class="active"><a href="trang-chu-quan-tri" class="list-group-item active" style="z-index: 0"><i class="glyphicon glyphicon-home"></i>
												&nbsp;&nbsp;&nbsp;&nbsp;Trang chủ quản trị<i class="glyphicon glyphicon-menu-right text-right"></i> </a></li>

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
											class="list-group-item " style="z-index: 0"><i
												class="glyphicon glyphicon-bookmark"></i>
												&nbsp;&nbsp;&nbsp;&nbsp;Quản lý bài tập</a></li>
									</ul>
                    </div>  
                    </div>
                    </div>  
                     <div class="panel panel-default">
                     <div class="col-md-9">
                  <form class="form" action ="" method="post" onSubmit="return formaction()">
                    <a class ="list-group-item text-center " href="#" style="font-size: 20px;color: blue;background: #0CC">Tạo Thread Thảo Luận</a><br> </br>
                  
                    <input  type="hidden" name="makh" value="<%=makh%>"/>
                    
                    <label style="font-size: 15px">Tên thông báo</label>
                    <br></br>
                    <input class="form-control" type="text" name="Tên thông báo"  placeholder="Nhập tên thông báo" size="50% " style="font-size: 15px" requied autofocus></input>
                    <br></br> 
                     
                    <label style="font-size: 15px">Nội dung thông báo</label>
                   <br></br>
                    
                    <textarea rows="" cols="" class="form-control" name="noidungthongbao" requied autofocus></textarea> 
               	     <input type="hidden" name="command" value="insert"></input>                  
                     <button type="submit" class="btn btn-info">OK</button>
                    </form>
                         </div>      
                </div>
                </div>
            </div>
      </div>
    </div>
</div>

    <jsp:include page="footer.jsp" ></jsp:include>
    <script src="js/bootstrap.min.js"></script>
    
    <SCRIPT LANGUAGE="JavaScript">
      function confirmAction() {
        return confirm("Tạo thông báo?")
      }
 
      </SCRIPT>
    
     <script type="text/javascript">
    function formaction(){
     return alert('Thao tác thành công');
        
    }</script>
  </body>
</html>