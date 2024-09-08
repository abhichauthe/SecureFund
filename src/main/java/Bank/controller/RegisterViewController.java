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


/**
 * Servlet implementation class RegisterViewController
 */
@WebServlet("/RegisterViewController")
public class RegisterViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterViewController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int regNo=Integer.parseInt(request.getParameter("regNo"));
		String custName=request.getParameter("custName");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		float accBal=Float.parseFloat(request.getParameter("accBal"));
		Register acc=new Register(regNo, custName, username, password, accBal);
		registerDao regdao=new registerDaoImpl();
		List<Register> lst=new ArrayList<Register>();
		lst.add(acc);
		int i=regdao.createRecord(lst);
		String str;
		HttpSession session=request.getSession();
		if(i>0)
		{
			System.out.println("record saved");
			response.sendRedirect("loginView1.jsp");
		}else {
	    	 str="Invalid Details!";
				session.setAttribute("result", str);
	    	 response.sendRedirect("error.jsp");
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