import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/Userlogin")
public class userlogin extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//super.doPost(req, resp);
		String email,password;
		email=req.getParameter("email");
		password=req.getParameter("password");
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			
			Connection con=DriverManager.getConnection(  
				"jdbc:mysql://localhost:3306/cinematicket","root","root");  
		   
			PreparedStatement ps=con.prepareStatement(  
					"insert into login(email,password) values(?,?)");  
			
			
				
				ps.setString(1, email);	
				ps.setString(2, password);	
				ps.executeUpdate();
				RequestDispatcher request=req.getRequestDispatcher("home.jsp");
				request.forward(req, resp) ;
		}catch (Exception e2) {System.out.println(e2);}  
	}

}
