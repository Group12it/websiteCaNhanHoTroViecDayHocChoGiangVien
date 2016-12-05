package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.omg.CORBA.Request;


@WebServlet("/TestST")
public class TestST extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public TestST() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String t=request.getParameter("testthu");
		if(t=="null"){
			t="d";
			System.out.println("FFF");
		}
		PrintWriter out=response.getWriter();
		out.println(t);
		
		//System.out.println(t);*/
		
		
		//		String str1=new String("ABCDA");
//		String str2=new String("ABCCD");
//		int dem=0;
//		for(int i =0;i<4;i++)
//		{
//			if(str1.charAt(i)==str2.charAt(i) ==true)
//				dem+=1;
//		}
//		
//		PrintWriter out=response.getWriter();
//		out.println(dem);
	}

	
	public static void main(String[] args) {
	
		String str1=new String("ABCDA");
		String str2=new String("ABCCD");
		
//		String[] strArray = new String[] {a};
//		String[] strArray2=new String[] {b};
		int dem=0;
		for(int i =0;i<4;i++)
		{
			if(str1.charAt(i)==str2.charAt(i) ==true)
				dem+=1;
		}
		System.out.println(dem);
	
		/*char ch=str1.charAt(3);
		System.out.println(ch);*/
		
	}
}
