package myPkg;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MymemServlet
 */
//@WebServlet("*.mem")
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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("doGet()");
		process(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		System.out.println("doPost()");
		process(request,response);
	}

	private void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		System.out.println("process()");
		request.setCharacterEncoding("UTF-8"); 
		String uri = request.getRequestURI();
		String contextPath = request.getContextPath();
		int len = contextPath.length();
		
		System.out.println("uri:" + uri);
		System.out.println("contextPath:" + contextPath);
		System.out.println("len:" + len);
		
		String command =  uri.substring(len); // // /insert.mem or /select.mem 
		System.out.println("command : " + command);
		
		MymemDao dao = new MymemDao();
		String viewPage = null; 
		
		if(command.equals("/insert.mem")) {
			System.out.println("insert ��û ����");
			
			
			
			String name = request.getParameter("name");
			String password = request.getParameter("password");
			MymemBean bean = new MymemBean(0,name,password);
			int cnt = dao.insertMymem(bean);
			System.out.println("insert cnt : " + cnt );
			
			viewPage = "/select.mem";
		}
		else if(command.equals("/select.mem")) {
			System.out.println("select ��û ����");
			
			ArrayList<MymemBean> lists = dao.getMymemList();
			
			request.setAttribute("lists", lists);
			
			viewPage = "Ex01_mymemList.jsp";
		}
		else if(command.equals("/updateForm.mem")) {
	         System.out.println("updateForm ��û ����");
	         
	         String id = request.getParameter("id");
	         //id�� �ش��ϴ� ���ڵ带 �̾ƿ� ����� �����Ҽ� �ְ���
	         System.out.println("id" +id);
	         
	         MymemBean mb = dao.getOneSelect(id);
	         request.setAttribute("mb", mb); // 
	         viewPage = "Ex01_mymemUpdateForm.jsp";
	         
	         
	      }
		else if(command.equals("/update.mem")) {
			 
		    int id = Integer.parseInt(request.getParameter("id"));
		    String name = request.getParameter("name");
		    String password = request.getParameter("password");
			System.out.println("update ��û ����");
			MymemBean bean = new MymemBean(id, name, password);
			dao.updateMymem(bean);
			//viewPage = "Ex01_mymemList.jsp"; lists�� �ִ°� �ݺ��ؼ� �����ִµ� lists�� �����𸥴پƾ�?
			
			viewPage = "/select.mem";
		}
		else if(command.equals("/delete.mem")) {
			System.out.println("delete ��û ����");
			String id = request.getParameter("id");
			dao.deleteMymem(id);
			//viewPage="Ex01_mymemList.jsp" //�̰� �ȵǴ� ���� lists�� �𸣱� ������ ���� ���ܼ� �����Ѵ�?
			viewPage = "/select.mem";
		}
		
		RequestDispatcher dis = request.getRequestDispatcher(viewPage);
		dis.forward(request, response); 
		
		
	}
}


/*
 * 
 * doGet()
process()
uri:/08_ServletDB/delete.mem
contextPath:/08_ServletDB
len:13
command : /delete.mem
delete ��û ����
//delete ȣ�� �Ҷ�  �ٷ� �� ȣ��� �޼ҵ� get������� ȣ��ȴ�. 
doGet() 
process()
uri:/08_ServletDB/select.mem
contextPath:/08_ServletDB
len:13
command : /select.mem
select ��û ����



doPost()
process()
uri:/08_ServletDB/update.mem
contextPath:/08_ServletDB
len:13
command : /update.mem
update ��û ����
// update ȣ�� �Ҷ�  <a href="updateForm.mem?id=${lists[i].id}">����</a> get����ε� �ٷ� �� ȣ��� �޼ҵ� post������� ȣ��ȴ�.
doPost()
process()
uri:/08_ServletDB/select.mem
contextPath:/08_ServletDB
len:13
command : /select.mem
select ��û ����
 * 
 * 
 */










