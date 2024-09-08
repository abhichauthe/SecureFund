package Bank.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bank.dao.registerDao;
import Bank.dao.registerDaoImpl;
import Bank.model.recharge;

/**
 * Servlet implementation class rechargeController
 */
@WebServlet("/rechargeController")
public class rechargeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public rechargeController() {
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
		float plan=Float.parseFloat(request.getParameter("plans"));
		recharge rec=new recharge(username, password, mobile, operator, plan);
		registerDao reg=new registerDaoImpl();
		int i=reg.rechargePhone(rec);
		HttpSession session=request.getSession();
		String str;
		if(i>0)
		{
//			str="Recharge Succsesfull!";
			session.setAttribute("result", rec);
			response.sendRedirect("rechargeSuccess.jsp");
		}else {
			session.setAttribute("user", username);
			response.sendRedirect("rechargeUnsuccess.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}