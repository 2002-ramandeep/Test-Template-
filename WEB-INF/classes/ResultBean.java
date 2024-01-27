package model;

import java.sql.*;
import connection.Connect;

public class ResultBean{
	private int physics;
	private int chemistry;
	private int maths;
	private String email;

	PreparedStatement ps;
	ResultSet rs;
	Connection con;

	public void setPhysics(int physics){
		this.physics = physics;
	}

	public void setChemistry(int chemistry){
		this.chemistry = chemistry;
	}

	public void setMaths(int maths){
		this.maths = maths;
	}

	public void setEmail(String email){
		this.email = email;
	}

	public void storeResult(){
		con = Connect.getConnection();
		try{
			ps = con.prepareStatement("insert into result values (?,?,?,?);");
			ps.setString(1,email);
			ps.setInt(2,physics);
			ps.setInt(3,chemistry);
			ps.setInt(4,maths);
			ps.executeUpdate();
		}
		catch(SQLException e){}
		finally{
			try{
				con.close();
			}
			catch(SQLException e){}
		}
	}

	public int[] getScore(){
		con = Connect.getConnection();
		int[] res = new int[3];
		try{
			ps = con.prepareStatement("select * from result where email=?;");
			ps.setString(1,email);
			rs = ps.executeQuery();
			
			if(rs.next()){
				res[0] = rs.getInt("physics");
				res[1] = rs.getInt("chemistry");
				res[2] = rs.getInt("maths");

				return res;
			}
		}
		catch(SQLException e){}
		finally{
			try{
				con.close();
			}
			catch(SQLException e){}
		}
		return res;
	}
}



		