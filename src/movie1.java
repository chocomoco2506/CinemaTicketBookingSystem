import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/moviecheck")
public class movie1 extends HttpServlet{
	
	
	public static String username;
	public static String email;
	public static String phone;
	public static String date;
	public static String movie;
	public static String seat[];
	public static int amount=0;
	public static int ticket;
    public static int movie_id;
    public static String movie_name;
  
	

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//super.doPost(req, resp);
		 username=req.getParameter("username");
		 email=req.getParameter("email");
		 phone=req.getParameter("phone");
		 date=req.getParameter("date");
		 seat=req.getParameterValues("seat");
		 movie_name="Avengers: End Game";
		 ticket=seat.length;
		
		 int count=0;
		
		try{ 
			Class.forName("com.mysql.jdbc.Driver");  
			
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cinematicket","root","root");  
			Statement stmt  =con.createStatement();
			
			ResultSet rs1=stmt.executeQuery("select * from movie");
			while(rs1.next())
			{
			
				if(rs1.getString(2).equals(movie_name)){
					movie_id=rs1.getInt(1);
				}
				
			
				
				
			
		   }
					
			ResultSet rs=stmt.executeQuery("select * from seat");
			while(rs.next())
			{
			for(int i=0;i<seat.length;i++)
				if( rs.getInt(2)==movie_id && rs.getString(3).equals(date)&& rs.getInt(5)==Integer.parseInt(seat[i]))
			{
				count++;
				
			}
		   }
			
			for(int i=0;i<seat.length;i++){
				if(Integer.parseInt (seat[i])<=10){
					amount+=3000;
				}
				
				else if(Integer.parseInt (seat[i])>10 && Integer.parseInt(seat[i])<16 ){
					amount+=4000;
				}
				else{
					amount+=6000;
				}
				
			}
			
			if(count==0){
				req.setAttribute("amount", amount);
				RequestDispatcher request=req.getRequestDispatcher("payment.jsp");
				request.forward(req, resp) ;
			}
				   
			else if(count>0){
				req.setAttribute("message", "You order is not avalible");
				RequestDispatcher request=req.getRequestDispatcher("not.jsp");
				request.forward(req, resp) ;
			}
			con.close();
		   }catch(Exception e){  e.printStackTrace();}
		
		
			
		
	}

	
	

}
