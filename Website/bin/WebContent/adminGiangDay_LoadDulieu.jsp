<%@page import="java.lang.*" %>
<%@page import="model.*" %>
<%@page import="dao.*" %>
<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />


<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="shortcut icon" href="images/head.ico" type="image/x-icon" />
<link rel="icon" href="images/head.ico" type="image/x-icon" />
<title>Website Cá nhân hỗ trợ giáo viên dạy học</title>
<link href="css/bootstrap.min.css" rel="stylesheet" />


<link href="css/styleadmin.css" rel="stylesheet" />

<link rel="stylesheet" type="text/css" href="css/stylemenu.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" media="all" type="text/css"
	href="css/font-awesome.min.css" />


</head>


<body>


	<jsp:include page="headeradmin.jsp" ></jsp:include>
	<% ChiTietKhoaHocDAO chitietkhoahocDAO=new ChiTietKhoaHocDAO();
	KhoaHocsDAO khoahocDao=new KhoaHocsDAO();
	String khoahocid="";
	if(request.getParameter("khoahoc")!=null){
	khoahocid= request.getParameter("khoahoc");
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
                                <li class="active"><a href="admin.jsp" class="list-group-item " style="z-index: 0"><i class="glyphicon glyphicon-home"></i> &nbsp;&nbsp;&nbsp;&nbsp;Trang chủ quản trị</a></li>
                               
                                <li class="active"><a href="quanlykhoahoc.jsp" class ="list-group-item ""><i class="glyphicon glyphicon-education"></i>&nbsp;&nbsp;&nbsp;&nbsp; Quản lý khoá học</a></li>
                               
                                <li class="active"><a href="threadadmin.jsp" class="list-group-item"><i class="glyphicon glyphicon-comment"></i> &nbsp;&nbsp;&nbsp;&nbsp;Thread thảo luận</a></li>
                             
                                <li class="active"><a href="admingiangday.jsp" class ="list-group-item"><i class="glyphicon glyphicon-calendar"></i> &nbsp;&nbsp;&nbsp;&nbsp;Kế hoạch giảng dạy</a></li>
                              
                                <li class="active"><a href="adminQuanLyHocVien.jsp" class="list-group-item"><i class="glyphicon glyphicon-user"></i> &nbsp;&nbsp;&nbsp;&nbsp;Quản lý học viên</a></li>
                              
                                <li class="active"><a href="adminGuiMail.jsp" class ="list-group-item"><i class="glyphicon glyphicon-envelope"></i>&nbsp;&nbsp;&nbsp;&nbsp; Gửi mail cho sinh viên</a></li>
                              
                            
                                <li class="active"><a href="admindanhsachhocvien.jsp" class ="list-group-item active"><i class="glyphicon glyphicon-list-alt"></i>&nbsp;&nbsp;&nbsp;&nbsp; Bài tập của học viên</a></li>
                               
                                <li class="active"><a href="admindethitracnghiem.jsp" class="list-group-item"><i class="glyphicon glyphicon-pencil"></i> &nbsp;&nbsp;&nbsp;&nbsp;Đề thi trắc nghiệm</a></li>

                        </ul>
                    </div>  
                    </div>
                    </div>    
                    <div class="col-md-9">
                    <ul class="nav navs-tabs-brand">
                  <table class="ria">
						<tr>
							<div class="panel panel-default">
									  <div class="panel panel-default">
                        			       <%
                        			       for(KhoaHocs kh:khoahocDao.getKhoaHocListByID(khoahocid))
                        			       {
                        			    
                        			       %>
                        			        <div class="panel-heading" style="background:#0CC">
                                                <h3 style="font-family: verdana;color:#FFF">Bài giảng <%=kh.getAdTenKH() %>
                                                       <a href="khoa-hoc-cua-toi"> <button type="button" class="btn btn-danger navbar-btn pull-right" style="border-radius: 15px; margin-right: 30px;">Quay lại</button></a>
                                                <br></br>
                                                </h3>
                                            </div>
                                        <%} %>
                                        
                                        
                                        <%
                                        for(ChiTietKhoaHoc ctkh:chitietkhoahocDAO.getChiTietKhoaHocByID(khoahocid))
                                        {
                                        %>
                                            <p>
                                                <font size="6" color="red">
                                                    <%=ctkh.getTenBaiHoc() %>
                                                </font>
                                            </p>
      						             <div class="your-div" style="text-align: left;max-width:100%;background-image:">
                                             
                                             <div class="panel">
                               			 <ul>
                                          <li><a  href= "" class ="list-group-item " style="z-index: 0">
                                           <%=ctkh.getNoiDung() %>
                                          </a></li>
                                          
                                                <p style="word-wrap:break-word;" >
                                               
                                             </p>
                                             </ul>
                                             </div>
                                            </div>
                                            
                                           
                                            <br><br>
                                            <a href="<%=ctkh.getPathBaiGiang()%>" target="_blank">
	
                                                <img src="images/baigiang.png">
                                                <span class="instancename">Bài giảng: Bài 1<span class="accesshide "> Page</span></span>
                                                <br>
                                            </a>
                                            <br>

                                            <a href="bai-hoc-chi-tiet?chitietkhoahocs=<%=ctkh.getChitietKhoaHocID()%>">

                                                <img src="images/video.png">
                                                <span class="instancename"><span class="accesshide ">Video</span></span>
                                                <br><br>
                                            </a>
                                           
                                             
                                       	<a href="<%=ctkh.getPathEbook()%>" target="_blank">
                                                <input  type="hidden" name="idfilename" value="<%=ctkh.getPathEbook()%>"/>
                                                <button type="submit" style="background: transparent;background-color: transparent; border: none;">
                              				    <img src="images/pdf.png">
                                                <span class="instancename">Ebook</span>
                                                </button>
                                          </a>
                                          <br></br>
                                            <form action ="DownLoadFile" method="post">
                                            	<a href="DownLoadFile">
                                               <input  type="hidden" name="idfilename" value="<%=ctkh.getPathBaiTap()%>"/>
                                                <button type="submit" style="background: transparent;background-color: transparent; border: none;">
                              				    <img src="images/homework.png">
                                                <span class="instancename">Bài tập sau buổi học</span>
                                                </button>
                                          </a>
                                           <br>
                                             <a href="adminbaitap.jsp">
                                                <span class="instancename" ><h3>Thời gian nộp bài tập<i class="glyphicon glyphicon-paperclip"></i></h3></span>
                                            </a>
                                            </form>
                                            
                                            <%} %>
                                           
                                         </div>

							
							
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    
</body>


</html>