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
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		Register reg=new Register();
		reg.setUsername(username);
		reg.setPassword(password);
		HttpSession session=request.getSession();
		registerDao regdao=new registerDaoImpl();
		 List<Register> lst=regdao.retrive(username,password);
		     boolean b=  regdao.Login(reg);
		     request.setAttribute("errorMessage", "Wrong credentials!");
		     String str;
		     if(b==true)
		     {
		    	 session.setAttribute("data",lst);
		    	 response.sendRedirect("Dashboard1.jsp");
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