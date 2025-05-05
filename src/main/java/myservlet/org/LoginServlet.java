package myservlet.org;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import dao.org.UserDao;


import java.io.IOException;

import dao.org.UserDaoImpl;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static UserDao userDao = new UserDaoImpl();
       
    
    public LoginServlet() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		if(userDao.isValidUser(email, password)) {
			
//			session is used for sending data to welcome page
			HttpSession session = request.getSession();
			session.setAttribute("userEmail", email);

			response.sendRedirect("Welcome.jsp");
		} else {
			response.sendRedirect("login.jsp?error=1");
			System.out.println("error during login");
		}
		
	}

}
