import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/Adminlogin")
public class adminlogin extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//super.doPost(req, resp);
	  String email,password;
	  email=req.getParameter("email");
	  password=req.getParameter("password");
	  if(email.equals("admin2508@gmail.com")&& password.equals("01082022")){
	  RequestDispatcher request=req.getRequestDispatcher("adminView.jsp");
	  request.forward(req,resp);
	  }
	  else{
		  req.setAttribute("error","adminName or Password is Something Wrong");
		  RequestDispatcher request=req.getRequestDispatcher("login.jsp");
		  request.include(req,resp);
	  }
	}
	

}
