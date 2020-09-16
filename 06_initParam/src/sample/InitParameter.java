package sample;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InitParameter
 */
//@WebServlet("/initParameter")
public class InitParameter extends HttpServlet {
   private static final long serialVersionUID = 1L;
   String company;
   String singer;
   String manager;
   String title;
   String title_config;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InitParameter() {
        super();
    }

   /**
    * @see Servlet#init(ServletConfig)
    */
   public void init(ServletConfig config) throws ServletException {
      System.out.println("init");
      
     
      // ServletContext 객체 : 프로젝트당 1개 생성
      ServletContext context = config.getServletContext();
      
      company = context.getInitParameter("company");
      singer = context.getInitParameter("singer");
      manager = context.getInitParameter("manager");
      title = context.getInitParameter("title");
      
      // ServletConfig :서블릿당 1개 생성
      title_config = config.getInitParameter("title");
      System.out.println("company : " + company);
      System.out.println("singer : " + singer);
      System.out.println("manager : " + manager);
      System.out.println("title : " + title);
      System.out.println("title2 : " + title_config);
      
   }

   /**
    * @see Servlet#destroy()
    */
   public void destroy() {
   }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   //   response.getWriter().append("Served at: ").append(request.getContextPath());
	   request.setCharacterEncoding("utf-8");
	   response.setContentType("text/html; charSet=UTF-8");
	   PrintWriter pw = response.getWriter();
	   pw.print("�쉶�궗紐�:"+company +"<br>");
	   pw.print("媛��닔紐�:" + singer+"<br>");
	   pw.print("留ㅻ땲��:"+manager+"<br>");
	   pw.print("�젣紐�:"+title+"<br>");
	   pw.print("�젣紐�2:"+title_config+"<br>");
	   pw.close();
   }

   /**
    * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doGet(request, response);
   }

}