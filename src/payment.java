
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

@WebServlet("/payment")
public class payment extends HttpServlet {
	String username,email,phone,date,card_id,card_password,movie,se;
	int ticket,amount,movie_id;
	String seat[];
	int id=0;
	int a=0;
	@Override
	protected void doPost(HttpServletRequest req1, HttpServletResponse resp1) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		username=movie1.username;
		movie_id=movie1.movie_id;
		email=movie1.email;
		phone=movie1.phone;
		date=movie1.date;
		seat=movie1.seat;
		ticket=movie1.ticket;
		card_id=req1.getParameter("card_id");
		card_password=req1.getParameter("card_password");
		amount=movie1.amount;
		se="";
		movie=movie1.movie_name;
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			
			Connection con=DriverManager.getConnection(  
				"jdbc:mysql://localhost:3306/cinematicket","root","root");  
		   
			Statement stmt1  =con.createStatement();
			ResultSet rs1=stmt1.executeQuery("select * from user");
			while(rs1.next())
			{  
				
				
			if(rs1.getString(2).equals(username)&& rs1.getString(3).equals(email)&& rs1.getString(4).equals(phone)){
				a++;
			}
			}
			if(a==0){
			PreparedStatement ps=con.prepareStatement(  
					"insert into user(username,email,phone) values(?,?,?)");  
			
				ps.setString(1, username);	
				ps.setString(2, email);	
				ps.setString(3, phone);
				ps.executeUpdate();
				
			}
			
			
				
				Statement stmt  =con.createStatement();
				ResultSet rs=stmt.executeQuery("select * from user");
				while(rs.next())
				{
				
					if(rs.getString(2).equals(username) && rs.getString(3).equals(email)&& rs.getString(4).equals(phone))
					{
						id=rs.getInt(1);
					}
					
				
			   }
				
			PreparedStatement ps1=con.prepareStatement(  
						"insert into payment(user_id,card_id,card_password,total_amount) values(?,?,?,?)"); 
				ps1.setInt(1, id);	
				ps1.setString(2,card_id);
				ps1.setString(3,card_password);
				ps1.setInt(4, amount);
				ps1.executeUpdate();
				
				for(int i=0;i<seat.length;i++){
				PreparedStatement ps3=con.prepareStatement(  
						"insert into seat(movie_id,date,user_id,seatNo) values(?,?,?,?)"); 	
				ps3.setInt(1,movie_id);
				ps3.setString(2,date);
				ps3.setInt(3,id);
				ps3.setInt(4,Integer.parseInt(seat[i]));
				ps3.executeUpdate();
				}
				
							
				for(int i=0;i<seat.length;i++){
					se+=seat[i]+"   ";
				}
				
		
				
		}catch (Exception e2) {System.out.println(e2);} 
		req1.setAttribute("username", username);
		req1.setAttribute("email", email);
		req1.setAttribute("phone", phone);
		req1.setAttribute("movie", movie);
		req1.setAttribute("date", date);
		req1.setAttribute("seat", se);
		RequestDispatcher request1=req1.getRequestDispatcher("detail.jsp");
		request1.forward(req1, resp1) ;
	}
	

}
