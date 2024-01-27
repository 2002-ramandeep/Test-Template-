package model;

import java.sql.*;
import connection.Connect;

public class CredentialsBean{
	private String email;
	private String phone;
	private String name;
	private String password;

	public boolean valid = false;

	PreparedStatement ps;
	ResultSet rs;
	Connection con;

	public void setEmail(String email){
		this.email = email;
	}
	public void setPhone(String phone){
		this.phone = phone;
	}
	public void setName(String name){
		this.name = name;
	}
	public void setPassword(String password){
		this.password = password;
	}

	public boolean register(){
		con = Connect.getConnection();
		int flag = 0;

		try{
			ps = con.prepareStatement("select * from students where email=?;");
			ps.setString(1,email);
			rs = ps.executeQuery();

			if(!rs.next()){
				ps = con.prepareStatement("insert into students values (?,?,?,?);");
				ps.setString(1,email);
				ps.setString(2,phone);
				ps.setString(3,name);
				ps.setString(4,password);
				ps.executeUpdate();

				flag = 1;
			}					
		}
		catch(Exception e){}
		finally{
			try{
				con.close();
			}
			catch(Exception e){}
		}

		if(flag==1){
			return true;
		}
		return false;
	}

	public boolean login(){
		con = Connect.getConnection();
		try{
			ps = con.prepareStatement("select * from students where email=?;");
			ps.setString(1,email);
			rs = ps.executeQuery();

			if(rs.next()){
				if(rs.getString("password").equals(password)){
					valid = true;						
					return true;	
      				}
				else{
					return true;
				}
			}

			return false;
		}
		catch(Exception e){}
		finally{
			try{
				con.close();
			}
			catch(Exception e){}
		}
		return false;
	}

	public boolean attempted(){
		con = Connect.getConnection();
		try{
			ps=con.prepareStatement("select * from result where email=?;");
			ps.setString(1,email);
			rs = ps.executeQuery();

			if(rs.next()){
				return true;
			}
			else{
				return false;
			}
		}
		catch(Exception e){}
		finally{
			try{
				con.close();
			}
			catch(Exception e){}
		}
		return true;
	}

}


				
			