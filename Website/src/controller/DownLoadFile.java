package controller;


import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/DownLoadFile")
public class DownLoadFile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DownLoadFile() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    }
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	Object requestObject=request.getParameter("filename");
	String path=(String) requestObject;
	//String path = (String) request.getParameter("hinhdown");

	//String fileName = extractFileName(part);
		String filePath=getServletContext().getRealPath("")+"//fileUpload//"+path;
		System.out.println(filePath);
		File downloadFile=new File(filePath);
		FileInputStream inStream =new FileInputStream(downloadFile);
		ServletContext  context=getServletContext();
		String mimeType=context.getMimeType(filePath);
		if(mimeType==null){
			mimeType="application/octet-stream";
		}
		response.setContentType(mimeType);
		response.setContentLength((int) downloadFile.length());
		String headerKey="Content-Disposition";
		String headerValue=String.format("attachment; filename=\"%s\"",downloadFile.getName());
		response.setHeader(headerKey, headerValue);
		OutputStream outStream=response.getOutputStream();
		byte[] buffer=new byte[1024*4];
		int bytesRead=-1;
		while((bytesRead=inStream.read(buffer))!=-1){
			outStream.write(buffer,0,bytesRead);
		}
		inStream.close();
		outStream.close();
		}
	@SuppressWarnings("unused")
	private String extractFileName(Part part) {
		String contentDisp = part.getHeader("content-disposition");
		String[] items = contentDisp.split(";");
		for (String s : items) {
			if (s.trim().startsWith("filename")) {
				return s.substring(s.indexOf("=") + 2, s.length() - 1);
			}
		}
		return "";
	}
    
 
}
 
