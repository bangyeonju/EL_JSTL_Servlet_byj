

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.Charset;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
//@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        System.out.println("LoginServlet");
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		System.out.println("init");
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charSet=UTF-8");
		PrintWriter pw = response.getWriter();
		
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String name = request.getParameter("name");
		String addr = request.getParameter("addr");
		String[] hobby = request.getParameterValues("hobby");
		
		System.out.println("id:"+id);
		System.out.println("passwd:"+passwd);
		System.out.println("name:"+name);
		System.out.println("addr :"+addr);
		for(int i=0;i<hobby.length;i++) {
			
			System.out.print("hobby :"+hobby[i]+" ");
		}
		
		
		
		pw.append("아이디 :" + id+"<br>");
		pw.print("비밀번호 : "+passwd+"<br>");
		pw.print("회원명:"+name +"<br>");
		pw.print("주소 : "+addr+"<br>");
		for(int i=0;i<hobby.length;i++) {
			pw.print("취미 :" +hobby[i]+" ");
		}
		pw.close();
	}

}
