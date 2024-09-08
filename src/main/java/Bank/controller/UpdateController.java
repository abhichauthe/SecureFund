package Bank.controller;

import java.io.IOException;
import java.util.ArrayList;
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
import Bank.model.credit;

/**
 * Servlet implementation class UpdateController
 */
@WebServlet("/UpdateController")
public class UpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int regNo=Integer.parseInt(request.getParameter("regNo"));
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		float accBal= Float.parseFloat(request.getParameter("accBal"))  ;
		credit cred=new credit(regNo, username, password, accBal);
		registerDao regdao=new registerDaoImpl();
				HttpSession session=request.getSession();
		int i=regdao.AddMoney(cred);
		if(i>0)
		{
			session.setAttribute("result",cred);
			response.sendRedirect("AddMoneySuccesss.jsp");
		}else {
			session.setAttribute("user",username);
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