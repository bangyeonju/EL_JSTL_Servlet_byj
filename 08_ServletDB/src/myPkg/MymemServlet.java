package myPkg;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.management.MemoryManagerMXBean;
import java.lang.reflect.Member;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MymemServlet
 */
//@WebServlet("/MymemServlet")
public class MymemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MymemServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("doGet");
		process(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);
		System.out.println("doPost()");
		process(request, response);
	}

	private void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		StringBuffer url = request.getRequestURL();
		String contextPath = request.getContextPath();
		int len = contextPath.length();

		String command = uri.substring(len);
		System.out.println("command :" + command);

		String viewPage= null;
		
		MymemDao dao = MymemDao.getInstance();
		if (command.equals("/insert.mem")) {
			
			request.setCharacterEncoding("utf-8");
			System.out.println("insert 요청 들어옴.");
			String name =request.getParameter("name");
			String password =request.getParameter("password");
			MymemBean bean = new MymemBean(0, name, password);
			int cnt = dao.insertMymem(bean);
			System.out.println("cnt : "+ cnt);
			
			
		viewPage  = "Ex01_mymemVia.jsp";
			

		} else if (command.equals("/select.mem")) {
			System.out.println("select 요청 들어옴.");
			ArrayList<MymemBean> lists = dao.getMymemList();
			
			request.setAttribute("lists", lists);
			
			viewPage  = "Ex01_mymemList.jsp";

		} else if (command.equals("/delete.mem")) {
			System.out.println("delete 요청 들어옴.");

		}else if(command.equals("/update.mem")) {
			System.out.println("update 요청 들어옴.");
		}
		RequestDispatcher dis = request.getRequestDispatcher(viewPage);
		dis.forward(request, response);
	}
}
