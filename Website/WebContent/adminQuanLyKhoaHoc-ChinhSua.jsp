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

	<jsp:include page="headeradmin.jsp"></jsp:include>
  
  
   <div id="wrapper">
      <div class="container">
        <div class="row">
         
            <div class="container">
                <div class="row">
                
                    <div class="col-md-3">
                       <div class="panel panel-primary" style="padding-top:0px ">
                           <div class ="panel-body"> 
                  
                         <ul class="nav navs-tabs-brand">
                                <li class="active"><a href="admin.jsp" class="list-group-item" style="z-index: 0;" ><i class="glyphicon glyphicon-home"></i> &nbsp;&nbsp;&nbsp;&nbsp;Trang chủ quản trị</a></li>
                               
                                <li class="active"><a href="quanlykhoahoc.jsp" class ="list-group-item active " style="z-index: 0"><i class="glyphicon glyphicon-education"></i>&nbsp;&nbsp;&nbsp;&nbsp; Quản lý khoá học</a></li>
                               
                                <li class="active"><a href="threadadmin.jsp" class="list-group-item" style="z-index: 0"><i class="glyphicon glyphicon-comment"></i> &nbsp;&nbsp;&nbsp;&nbsp;Thread thảo luận</a></li>
                             
                                <li class="active"><a href="admingiangday.jsp" class ="list-group-item" style="z-index: 0"><i class="glyphicon glyphicon-calendar"></i> &nbsp;&nbsp;&nbsp;&nbsp;Kế hoạch giảng dạy</a></li>
                              
                                <li class="active"><a href="adminQuanLyHocVien.jsp" class="list-group-item" style="z-index: 0"><i class="glyphicon glyphicon-user"></i> &nbsp;&nbsp;&nbsp;&nbsp;Quản lý học viên</a></li>
                              
                                <li class="active"><a href="adminGuiMail.jsp" class ="list-group-item" style="z-index: 0"><i class="glyphicon glyphicon-envelope"></i>&nbsp;&nbsp;&nbsp;&nbsp; Gửi mail cho sinh viên</a></li>
                              
                                <li class="active"><a href="admindanhsachhocvien.jsp" class ="list-group-item " style="z-index: 0"><i class="glyphicon glyphicon-list-alt"></i>&nbsp;&nbsp;&nbsp;&nbsp; Bài tập của học viên</a></li>
                               
                                <li class="active"><a href="admindethitracnghiem.jsp" class="list-group-item" style="z-index: 0"><i class="glyphicon glyphicon-pencil"></i> &nbsp;&nbsp;&nbsp;&nbsp;Đề thi trắc nghiệm</a></li>

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
                                    <div class="panel-body">

                                        <div class="col-md-12">

                                            <form action="quan-ly-khoa-hoc" method="post" >
                                                <div class="form-group">
                                                    <label>Tên khóa học</label>
                                                    <input type="text" class="form-control" id="tenkhoahoc" name="tenkh" placeholder=" Khoahoc" requied autofocus />
                                                </div>
                                                <div class="form-group">
                                                    <label>Ngày khai giảng</label>
                                                    <input type="date" class="form-control" id="ngaykhaigiang" name="ngaykhaigiang" />
                                                </div>
                                                <div class="form-group">
                                                    <label>Học phí</label>

                                                    <input name="hocphi" type="number" class="form-control" id="txt_hocphi" />
                                                </div>
                                                <div class="form-group">

                                                    <label>Khái quá khóa học</label>
                                                    <textarea name="khaiquat" class="form-control" rows="5" cols="20"></textarea>
                                                </div>
                                                <div class="form-group">
                                                    <label>Nội dung khóa học</label>
                                                    <textarea name="noidung" class="form-control" rows="5" cols="20"></textarea>
                                                </div>
                                                  <input type="hidden" name="command" value="update"></input>                  
                                                <button type="submit" class="btn btn-primary">Lưu Lại</button>
                                               <a href="quanlykhoahoc.jsp"><button type="button" class="btn btn-danger" action="quanlykhoahoc.jsp">Hủy Bỏ</button></a>
                                            </form>
                                           
                                        </div>

                                    </div>
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    
</body>
</html>