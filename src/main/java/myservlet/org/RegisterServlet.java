package myservlet.org;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

//import dao.org.UserDao;
import dao.org.User;
import dao.org.UserDao;
import dao.org.UserDaoImpl;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static UserDao userDao = new UserDaoImpl();
       
    public RegisterServlet() {
        super();
        
    }

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String contact = request.getParameter("phone");
		String password = request.getParameter("password");
		
		
		User user = new User();
		user.setName(name);
		user.setEmail(email);
		user.setContact(contact);
		user.setPassword(password);
		
		

		
		if(userDao.addUser(user)) {
			response.sendRedirect("login.jsp?registration=successful");
		} else {
			response.sendRedirect("register.jsp?error=1");
		}
	}

}
