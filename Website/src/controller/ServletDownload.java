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
@WebServlet("/ServletDownload")
public class ServletDownload extends HttpServlet {
	final String FILE_LOCATION ="C:/images";
	final String[][] contenTypes ={{"xml","text/xml"},{"pdf","application/pdf"},{"mp3","audio/mpeg"},{"pdf","application/ppt"}};
	private static final long serialVersionUID = 1L;
       
    public ServletDownload() {
        super();
    }

    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Object requestObject=request.getParameter("filename");
		if(requestObject!=null){
			String filename=(String) requestObject;
			String contentType=getContenType(filename.split("\\.")[1]);
			
			
			File file=new File(FILE_LOCATION+"/"+filename);
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
