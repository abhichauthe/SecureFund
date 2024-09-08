package Bank.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bank.dao.registerDao;
import Bank.dao.registerDaoImpl;
import Bank.model.Register;
import Bank.model.recharge1;

/**
 * Servlet implementation class recharge1Controller
 */
@WebServlet("/recharge1Controller")
public class recharge1Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public recharge1Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String mobile=request.getParameter("mobile");
		String operator=request.getParameter("operator");
		PrintWriter pw=response.getWriter();
		pw.println("pass"+password);
		Register reg=new Register();
		reg.setUsername(username);
		reg.setPassword(password);
		HttpSession session=request.getSession();
		registerDao regdao=new registerDaoImpl();
		     boolean b=  regdao.Login(reg);
		     if(b==true)
		     {
		    	 recharge1 rec=new recharge1(username, password, mobile, operator);
		 		session.setAttribute("result", rec);

		 		if(operator.equals("Jio"))
		 		{
		 		pw.println("working");
		 			response.sendRedirect("JioPlans.jsp");
		 		}else if(operator.equals("Vi")) {
		 			response.sendRedirect("ViPlans.jsp");
		 		}else if(operator.equals("Airtel")) {
		 			response.sendRedirect("airtelPlans.jsp");
		 		}
		 		}else{
		 			session.setAttribute("user", username);
		 			response.sendRedirect("rechargeUnsuccess.jsp");
		 		}
		
//		if(password.equals(checkPassword))
//		{
//		
		
//		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}