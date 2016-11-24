<%@page import="model.*" %>
<%@page import="dao.*" %>
<%@page import="java.*" %>
<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta content="charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="shortcut icon" href="images/head.ico" type="image/x-icon" />
<link rel="icon" href="images/head.ico" type="image/x-icon" />
<title>Website Cá nhân hỗ trợ giáo viên dạy học</title>
</head>


<body>


	<jsp:include page="headeradmin.jsp" ></jsp:include>
	<%
	ChiTietKhoaHocDAO chitietkhoahocDAO=new  ChiTietKhoaHocDAO();
	KhoaHocsDAO khoahocsDAO=new KhoaHocsDAO();
	ThreadsDAO threadsDao=new ThreadsDAO();ChiTietThreadsDAO chitietthreadDAO=new ChiTietThreadsDAO();
	String khoahocid="";
	if(request.getParameter("khoahoc")!=null){
	khoahocid= request.getParameter("khoahoc");
} %>
		

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
                             
                                <li class="active"><a href="ke-hoach-giang-day" class ="list-group-item active" ><i class="glyphicon glyphicon-calendar"></i> &nbsp;&nbsp;&nbsp;&nbsp;Kế hoạch giảng dạy</a></li>
                              
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
                                    
                                    <td>
         					 <form action ="CTKHServlet" method="post">
                                        <div class="panel panel-default">
                                            <div class="panel-heading" style="background:#0CC">
                                                <h4 style="font-family: verdana;color:#000"> Bài giảng
                                              <%
                                                 for (KhoaHocs kh :khoahocsDAO.getKhoaHocListByID(khoahocid)){
                      						  %>
                        					<%=kh.getAdTenKH()%>
                        					<input type="hidden" name="makh"  value="<%=kh.getAdMaKH()%>"></input>
                        			 	<%} %>
                                                
                                                </h4>
                       
                                            </div>
                          
								               <font size="6" color="red">
                                                 <%
                                                 for (ChiTietKhoaHoc ctkh :chitietkhoahocDAO.getChiTietKhoaHocByID(khoahocid)){
                      						  %>
                                                   <%=ctkh.getTenBaiHoc() %>
                                                </font>
                                                <br></br>
                                            <div class="btn btn-default" style="text-align: left;min-hight:50%;width:100%;background-image:url(images/Untitled.png)">
                                           <%=ctkh.getNoiDung() %>
                                              
                                            </div>
                                                  
                                              
                                              <textarea rows="1" class="form-control"  name="tieude" placeholder="Tiêu đề"></textarea><br></br>
                                              <textarea rows="6" class="form-control"  name="noidung" placeholder="Nội dung"></textarea><br></br>
                                     			<input type="hidden" name="command" value="them"/> 
                                           	
                                           	 <button type="submit" class="btn btn-info navbar-btn"  style="margin-left:">Lưu</button>
              								
              								<br />
                                                <img src="images/baigiang.png"/>
                                                <span class="instancename">Bài giảng: Bài 1<span class="accesshide "> Page</span></span>
                                                
                                				<input id="file" type="file" name="baigiang" />
					                            <br></br>
					                            <button class="btn btn-info navbar-btn" id="btnbaigiang" name="btnsubmit" style="margin-left: 500px;">Upload bài giảng</button>
                                            <br></br>

                                           
                                                <img src="images/video.png"/>
                                                <span class="instancename">Video: Bài 1<span class="accesshide "><a href="chitietbaihoc.jsp">Page</a></span></span>
                                                <br></br>
                                                <input  type="file" name="video"  />
					                            <br></br>
					                            <button class="btn btn-info navbar-btn" id="btnvideo" name="btnvideo" style="margin-left: 500px;">Upload video</button>
					                            <br></br>
                                               <img src="images/pdf.png"/>
                                                <span class="instancename">Ebook Ngôn ngữ lập trình C</span><br></br>
                             					<input type="file" name="ebook" ></input>
					                            <br></br>
					                            <button class="btn btn-info navbar-btn" id="btnebook" name="btnebook" style="margin-left: 500px;">Upload ebook</button>
                                            
                                            <br></br>
                                          
                                                <img src="images/homework1.png"/>
                                                <span class="instancename">Bài tập 1</span>
                                 				
					                          <br></br>
					                            <label>Yêu cầu bài bài tập</label>
					                              <div class="btn btn-default" style="text-align: left;width:100%;background-image:url(images/Untitled.png)">
			                                    + Tìm hiểu ngôn ngữ C/C++<br></br>
			                                    + yêu cầu: <br></br>
			                                    - làm đầy đủ bài tập về nhà<br></br>
			                                    - nén file.css nộp lại<br></br>

                                                </div>
                                                <br></br>
                                                <label>Thời hạn nộp bài :</label> 
                                                <input type="date" name="thoihannopbai"></input>
                                                <br></br>
                                                 <label>Yêu cầu bài bài tập</label><br></br>
                                                 <textarea rows="6" class="form-control"  name="yeucau" placeholder="Yêu cầu"></textarea><br></br>
                                                 <input id="file" type="file" name="baitap" class="multitle" multipleva />
					                            <button class="btn btn-info navbar-btn" id="btnebook" name="btnbaitap" style="margin-left: 500px;">Upload bài tập</button>
                                            <br></br>
                                            <%} %>
                                        </div>
                                         </form>
                                    </td>
                                    
                                                                   
                                </tr>
                              
                            </table>
						      </ul>
                                            

                     </div>

            </div>
            
          </div>
       </div>
       </div>
     </div>
	
	

		<jsp:include page="footer.jsp"></jsp:include>

	
	   <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
   <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    
</body>


</html>