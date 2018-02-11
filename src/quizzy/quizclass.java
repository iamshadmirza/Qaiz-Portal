package quizzy;
import java.sql.*;
public class quizclass {
	public int anscheck(String[] a,int counter){
		
		String[] ans= new String[counter];
		int marks = 0;
				try{  
					Class.forName("com.mysql.jdbc.Driver");  
					Connection con=DriverManager.getConnection(  
					"jdbc:mysql://localhost:3306/quizdata","root","root");  
					  
					Statement stmt=con.createStatement();  
					ResultSet rs=stmt.executeQuery("select * from quesans"); 
					int p=0;
					while(rs.next()){
						ans[p]=rs.getString(7);
						p++;
					}
					rs.beforeFirst();
					for (int j = 0; j < ans.length; j++) {
						if(a[j]==null)
							continue;
						if(a[j].equalsIgnoreCase(ans[j])){
							
							marks+=10;
						}	
					}
					
					
				}
				catch(Exception e){} 
	
				return marks;
		
	}
}
