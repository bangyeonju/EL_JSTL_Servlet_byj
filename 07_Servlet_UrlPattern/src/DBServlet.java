

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DBServlet
 */
//방법1 : WebServlet({"/insert.do","/select.do","/delete.do","/update.do"})
@WebServlet("*.do")
public class DBServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DBServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		System.out.println("init()");
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("service");
		String method = request.getMethod();
		if(method.equals("GET")) {
			doGet(request,response);
		}else {
			doPost(request, response);
		}
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("doGet()");
		process(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//	doGet(request, response);
		process(request,response);
	}
	
	private void process(HttpServletRequest request, HttpServletResponse response) {
		String uri = request.getRequestURI();
		StringBuffer url = request.getRequestURL();
		String contextPath = request.getContextPath();
		int len = contextPath.length();
		
		String day = "sunday";
		String sub = day.substring(2);
		System.out.println("sub :" +sub);//day
		
		System.out.println("uri :"+ uri );
		System.out.println("url :"+url);
		System.out.println("contextPath:"+contextPath);
		System.out.println("len :"+len);
		
		String command = uri.substring(len);
		System.out.println("command :"+command);//insert.do / select.do /delete.do / update.do
		System.out.println("--------------------------------------------");
		
		if(command.equals("/insert.do")) {
			System.out.println("insert.do요청이 들어왔습니다.");
		} else if(command.equals("/delete.do")) {
			System.out.println("delete.do요청이 들어왔습니다.");
			
		} else if(command.equals("/select.do")) {
			System.out.println("select.do요청이 들어왔습니다.");
			
		}else if(command.equals("/update.do")) {
			System.out.println("update.do요청이 들어왔습니다.");
			
		}
		
	}

}
