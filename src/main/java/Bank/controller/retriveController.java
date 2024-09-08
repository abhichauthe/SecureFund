package Bank.controller;

import java.io.IOException;
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

/**
 * Servlet implementation class retriveController
 */
@WebServlet("/retriveController")
public class retriveController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public retriveController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		registerDao regdao=new registerDaoImpl();
		 List<Register> lst=regdao.retrive(username,password);
		 HttpSession session=request.getSession();
		 String str;
		 System.out.println("Outside"+username);
		 if(lst!=null)
		 {
			 session.setAttribute("data",lst);
			 response.sendRedirect("balance.jsp");
//			 response.sendRedirect("checkBalanceView.jsp");
		 }
		 else {
			 System.out.println(username);
			 session.setAttribute("data",username);
				
				response.sendRedirect("checkBalanceView.jsp");
			}
//		 else {
//			 session.setAttribute("data","Invalid record");
//			 response.sendRedirect("RetriveView.jsp");
//		 }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}