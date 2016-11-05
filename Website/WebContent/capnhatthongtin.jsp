   <%@page import="dao.*" %>
   <%@page import="controller.*" %>
   <%@page import="model.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Website Cá nhân hỗ trợ giáo viên dạy học</title>

   <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap-filestyle.min.js"> </script>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/stylemenu.css">
    <link rel="stylesheet" type="text/css" href="css/thongtin.css">
	<link rel="shortcut icon" href="images/head.ico" type="image/x-icon" />
	<link rel="icon" href="images/head.ico" type="image/x-icon" />
 <link rel="shortcut icon" href="images/head.ico" type="image/x-icon" />
	<link rel="icon" href="images/head.ico" type="image/x-icon" />
</head>

<body>

     <%
           
            Users users = null;
            if (session.getAttribute("user") != null) {
                users = (Users) session.getAttribute("user");
            }
        %>


	<jsp:include page="header.jsp"></jsp:include>


 <div id="wrapper">
      <div class="container">
        <div class="row">
         
            <div class="container">
                <div class="row">
                
                    <div class="col-md-12">
                       <div class="panel panel-primary" style="padding-top:0px ">
               <div class="panel panel-default">
                                <div class="panel-body text-center"><font size="5" color="green" >Cập nhật thông tin cá nhân</font> </div>
                            </div>
                           <div class ="panel-body"> 
                  
              
                         <div class="col-md-4 " >
                            <table class="table table-bordered" style="overflow-x:auto;">
                                <thead>
                                    <tr>
                                        
                                             <td style=" height:0px;" colspan="1" align="center">
                                            <h4> Ảnh đại diện</h4>
                                            <table class="table table-bordered">
                                                <thead>
                                                    <tr>
        												 
        												 <img src="${msg}"  class="img-responsive img-circle" alt=""/>
                                                      <!--   <img src="images/item2.png" class="img-responsive img-circle" alt=""> -->
                                                    </tr>
                                                </thead>
                                            </table>
                                        		   <form method="post" action="UploadServlet" enctype="multipart/form-data">
            
            										<input type="file" name="file" value="Upload" class="filestyle" data-buttonName="btn-primary" data-input="false"  data-icon="glyphicon glyphicon-home"></input>
           										
           											 <br/><br/>
            										<input type="submit" value="Upload" />
        											</form>
                                        		   </td>
                         	 </tr>
                        </thead>

                        </table>
                        </div>
                        
                        
                        <div class="panel-body" style="overflow-x:auto;">
                                 
                                                <form class="form" method="post" id="contactform" action="Home" role="form">
                                                 <div class="form-group has-feedback" style="overflow-x:auto;">
                                                        <label for="contactho">ID:</label>
                                                        <input type="text" class="form-control" name="UserID" id="contactho" value="<%=users.getUserID() %>" readonly="readonly">
                                                    </div>
                                                    <div class="form-group has-feedback" style="overflow-x:auto;">
                                                        <label for="contactho">Email:</label>
                                                        <input type="text" class="form-control" id="contactho" value="<%=users.getUserEmail()%>" readonly="readonly">
                                                    </div>
                                                
                                                 <div class="form-group has-feedback" style="overflow-x:auto;">
                                                        <label for="contactho">Họ tên:</label>
                                                        <input type="text" class="form-control" name="hoten"  id="contactho" placeholder="Nhập họ tên" value="<%=users.getUserHoTen() %>" >
                                                    </div>
                                                   
                                                    <div class="form-group has-feedback">
                                                        <label for="contactdienthoai">Điện thoại:</label>
                                                        <input type="number" class="form-control" name="sodienthoai" value="<%=users.getUserSDT()%>" >
                                                    </div>
                                                       
                                                        <div class="form-group">
                                                            <label for="contactdiachi">Giới tính:</label>
                                                            <input type="text" class="form-control"  name="gioitinh" value="<%=users.getUserGioiTinh() %>">
                                                        </div>
                                                     
                                                       <div class="form-group">
                                                            <label for="contactdiachi">Ngày sinh:</label>
                                                            <input type="date" class="form-control" name="ngaysinh"  placeholder="" value="<%=users.getUserNgaySinh()%>">
                                                        </div>
													<input type="hidden" value="update" name="command"> 
                                                   	 <button type="submit" value="update" id="btnluu" name="btnluu" class="btn btn-info">Lưu</button>
                                                   <a href="thongtincanhan.jsp"><button type="button" id="btnhuy" name="btnhuy" class="btn btn-default">Hủy</button></a>

                                               
                                            </form>
                                          
                       				 </div>
                        
                        
                    </div>  
                    </div>
                    </div>    
             
  
      
            </div>
            </div>
            </div>
         </div></div>
    


             
 <script>
               
		$(":file").filestyle({iconName: "glyphicon-inbox"});
		


</script>
             
                  <jsp:include page="footer.jsp"></jsp:include>
                    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
                    <!-- Include all compiled plugins (below), or include individual files as needed -->
                    <script src="js/bootstrap.min.js"></script>
                    </body>
</html>