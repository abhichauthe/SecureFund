package Bank.controller;

import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.RequestDispatcher;
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
 * Servlet implementation class DisplayController
 */
@WebServlet("/DisplayController")
public class DisplayController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DisplayController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		registerDao regdao=new registerDaoImpl();
		List<Register> lst=new LinkedList<Register>();
		lst=regdao.list();
		HttpSession session =request.getSession();
		
//			session.setAttribute("data", lst);
//			response.sendRedirect("DisplayView.jsp");
		    
		
//		}else {
//			System.out.println("error cooured!");
//		}
		
		
		request.setAttribute("empList", lst);
		RequestDispatcher view=request.getRequestDispatcher("list2.jsp");
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}