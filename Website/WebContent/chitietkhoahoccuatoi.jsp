<%@page import="java.lang.*" %>
<%@page import="model.*" %>
<%@page import="dao.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta content="charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Website Cá nhân hỗ trợ giáo viên dạy học</title>
	<link rel="shortcut icon" href="images/head.ico" type="image/x-icon" />
	<link rel="icon" href="images/head.ico" type="image/x-icon" />
    <!-- Bootstrap -->
 
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<style>
        
#your-div {
word-wrap: break-word;
}
        
</style>
	
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>

<sql:setDataSource var="DBConnect" driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost/web" user="root" password="admin" />

      <%
            Users users = null;
            if (session.getAttribute("user") != null) {
                users = (Users) session.getAttribute("user");
            }
        %>
                       
<sql:query dataSource="${DBConnect }" var="result"> select * from users where Email="<%=users.getUserEmail()%>";</sql:query>
<% ChiTietKhoaHocDAO chitietkhoahocDAO=new ChiTietKhoaHocDAO();
	KhoaHocsDAO khoahocDao=new KhoaHocsDAO();
	String khoahocid="";
	if(request.getParameter("khoahoc")!=null){
	khoahocid= request.getParameter("khoahoc");
	}
%>
<section class="container" style="min-height:250px">
        <section class="row">
  <div id="wrapper">
      <div class="container">
       <div class="panel panel-primary hoidap">
                    <div class="panel-heading">
                       <center><b ><h2><span class="glyphicon glyphicon-education"> </span> KHOÁ HỌC CỦA BẠN</h2></b></center>
                    </div>
                    <div class="panel-body">
        <div class="row">
          <div class="content col-md-12 col-sm-9 col-xs-12">
            <div class="container">
                <div class="row">
                <div class="col-md-11">

                                        <div class="panel panel-default">
                        			       <%
                        			       for(KhoaHocs kh:khoahocDao.getKhoaHocListByID(khoahocid))
                        			       {
                        			    
                        			       %>
                        			        <div class="panel-heading" style="background:#0CC">
                                                <h3 style="font-family: verdana;color:#FFF">Bài giảng <%=kh.getAdTenKH() %>
                                                       <a href="trang-chu"> <button type="button" class="btn btn-danger navbar-btn pull-right" style="border-radius: 15px; margin-right: 30px;">Quay lại</button></a>
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
                                             <a href="nop-bai-tap?chitietkhoahocs=<%=ctkh.getChitietKhoaHocID()%>">
                                                <span class="instancename" ><h3>Nộp bài tập <i class="glyphicon glyphicon-paperclip"></i></h3></span>
                                            </a>
                                            </form>
                                            
                                            <%} %>
                                           
                                         </div>
                             </div>
                    </div>
                </div>
          
          </div></div></div>
        
            </div>
          </div>
        </div>
        </section></section>

<jsp:include page="footer.jsp"></jsp:include>
                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
                    <!-- Include all compiled plugins (below), or include individual files as needed -->
                    <script src="js/bootstrap.min.js"></script>
      </body>
</html>