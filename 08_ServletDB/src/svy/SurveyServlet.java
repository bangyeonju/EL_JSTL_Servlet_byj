package svy;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myPkg.MymemDao;



/**
 * Servlet implementation class SurveyServlet
 */
//@WebServlet("*.sv")
public class SurveyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SurveyServlet() {
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
	//	response.getWriter().append("Served at: ").append(request.getContextPath());
		try {
			doProcess(request,response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

		public void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
			request.setCharacterEncoding("UTF-8");
			String uri = request.getRequestURI();
			String contextPath = request.getContextPath();
			int len = contextPath.length();
			String command = uri.substring(len);
			SurveyDao dao = new SurveyDao();
			String viewPage = null;
			
			System.out.println("command:"+command);
			
			if(command.equals("/insert.sv")) {
				System.out.println("insert.sv 요청 들어옴");
				String name = request.getParameter("name");
				String company = request.getParameter("company");
				String email = request.getParameter("email");
				String satisfaction = request.getParameter("satisfaction");
				String[] part_imsi = request.getParameterValues("part");
				String part= "";
				String  howto = request.getParameter("howto");
				String agree_imsi = request.getParameter("agree");
				int agree;
				if(agree_imsi== null) {
					agree=0;
				}
				else {
					agree =1;
				}
				if(part_imsi == null) {
					part = "선택한 관심분야가 없습니다.";
				}
				else {
				for(int i =0;i<part_imsi.length;i++) {
					part += part_imsi[i];
					if(i != part_imsi.length-1) {
						part += ",";
						}
					}
				}
				SurveyBean sb = new SurveyBean(0, name, company, email, satisfaction, part, howto, agree);
				dao.insertSurvey(sb);
				viewPage ="/list.sv";
						
				
			} else if(command.equals("/list.sv")) {
				System.out.println("list.sv 요청 들어옴");
				viewPage= "Ex02_surveyResult.jsp";
				ArrayList<SurveyBean> lists= dao.getselectAll();
				request.setAttribute("lists", lists);
		} /*
			 * else if(command.equals("/updateForm.sv")) {
			 * 
			 * } else if(command.equals("/update.sv")) {
			 * 
			 * } else if(command.equals("/delete.sv")) {
			 * 
			 * }
			 */
			RequestDispatcher dis = request.getRequestDispatcher(viewPage);
			dis.forward(request, response);
		}
}
