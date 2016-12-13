package controller;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import connect.DBConnect;
import dao.UsersDAO;
import model.Users;

import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
@WebServlet("/ServletDownload")
public class ServletDownload extends HttpServlet {
	final String FILE_LOCATION ="C:/images";

	private static final int MEMORY_THRESHOLD = 1024 * 1024 * 3; // 3MB
	private static final int MAX_FILE_SIZE = 1024 * 1024 * 40; // 40MB
	private static final int MAX_REQUEST_SIZE = 1024 * 1024 * 50; // 50MB

	private static final String UPLOAD_DIRECTORY = "fileUpload";
	final String[][] contenTypes ={{"xml","text/xml"},{"pdf","application/pdf"},{"mp3","audio/mpeg"},{"pdf","application/ppt"}};
	private static final long serialVersionUID = 1L;
       
    public ServletDownload() {
        super();
    }

    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DiskFileItemFactory factory = new DiskFileItemFactory();
		// sets memory threshold - beyond which files are stored in disk
		factory.setSizeThreshold(MEMORY_THRESHOLD);
		// sets temporary location to store files
		factory.setRepository(new File(System.getProperty("java.io.tmpdir")));

		ServletFileUpload upload = new ServletFileUpload(factory);

		// sets maximum size of upload file
		upload.setFileSizeMax(MAX_FILE_SIZE);

		// sets maximum size of request (include file + form data)
		upload.setSizeMax(MAX_REQUEST_SIZE);

		// constructs the directory path to store upload file
		// this path is relative to application's directory

		/* Ã„ï¿½Ã¡Â»Æ’ upload lÃƒÂªn host internet */
		String uploadPath = getServletContext().getRealPath("") + File.separator + UPLOAD_DIRECTORY;
		
		// creates the directory if it does not exist
		File uploadDir = new File(uploadPath);
		if (!uploadDir.exists()) {
			uploadDir.mkdir();
		}
//		String name = request.getParameter("Userid");
//		Part part = request.getPart("file");
//		String fileName = extractFileName(part);
//		
		
		
		Object requestObject=request.getParameter("filename");
		if(requestObject!=null){
			String filename=(String) requestObject;
			String contentType=getContenType(filename.split("\\.")[1]);
			
			
			File file=new File(uploadPath+"/"+filename);
			response.setContentType(contentType);
			response.addHeader("Content-Disposition", "attachment:filename="+filename);
			response.setContentLength((int) file.length());
			ServletOutputStream servletoutputstream=response.getOutputStream();
			BufferedInputStream bufferdinputstream=new BufferedInputStream(new FileInputStream(file));
			int bytesRead=bufferdinputstream.read();
			while(bytesRead!=-1)
			{
				servletoutputstream.write(bytesRead);
				bytesRead=bufferdinputstream.read();
			}
			if(servletoutputstream!=null) servletoutputstream.close();
			if(bufferdinputstream!=null) bufferdinputstream.close();
			
			
		}
		
		
	}

	private String getContenType(String fileType){
		String returnType=null;
		for(int i=0;i<contenTypes.length;i++){
			
			if(fileType.equals(contenTypes[i][0])) returnType=contenTypes[i][1];
		}
		return returnType;
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
