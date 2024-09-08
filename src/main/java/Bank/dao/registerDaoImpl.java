package Bank.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

import Bank.db.connection;
import Bank.model.Register;

import Bank.model.credit;
import Bank.model.recharge;

public class registerDaoImpl implements registerDao {
	connection c=new connection();

	@Override
	public int createRecord(List<Register> reglst) {
		// TODO Auto-generated method stub
		Connection conn=null;
		Register robj=reglst.get(0);
		int i=0;
		try {
			conn=c.getconnection();
			PreparedStatement pstate=conn.prepareStatement("insert into MavenBank values(?,?,?,?,?)");
			pstate.setInt(1,robj.getRegNo() );
			pstate.setString(2, robj.getCustName());
			pstate.setString(3, robj.getUsername());
			pstate.setString(4, robj.getPassword());
			pstate.setFloat(5, robj.getAccBal());
			i=pstate.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return i;
	}

	@Override
	public List<Register> retrive(String username,String password) {
		// TODO Auto-generated method stub
		Connection conn=null;
		List<Register> lst=null;
		try {
			conn=c.getconnection();
			PreparedStatement pstate=conn.prepareStatement("SELECT * FROM MavenBank where username=? and password=?");
			pstate.setString(1, username);
			pstate.setString(2, password);;
			ResultSet result=pstate.executeQuery();
			if(result.next())
			{
				lst=new ArrayList<Register>();
				Register reg=new Register(result.getInt(1),result.getString(2),result.getString(3),result.getString(4),result.getFloat(5));
				lst.add(reg);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return lst;
	}
	

	@Override
	public boolean Login(Register reg) {
		// TODO Auto-generated method stub
		boolean b=false;
		Connection conn=null;
		
		try {
			conn=c.getconnection();
			PreparedStatement pstate=conn.prepareStatement("SELECT * FROM MavenBank where username=? and password=?");
			pstate.setString(1, reg.getUsername());
			pstate.setString(2, reg.getPassword());
			ResultSet result=pstate.executeQuery();
			if(result.next())
			{
				b=true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		return b;
	}

	@Override
	public int update(Register reg) {
		Connection conn=null;
		int i=0;
		List<Register> lst=null;
		try {
			conn=c.getconnection();
			PreparedStatement pstate=conn.prepareStatement("UPDATE MavenBank set accBal=? where regNo=?");
			pstate.setFloat(1, reg.getAccBal());
			pstate.setInt(2, reg.getRegNo());
			i=pstate.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		
		// TODO Auto-generated method stub
		return i;
	}

	@Override
	public int delete(int regNo) {
		Connection conn=null;
		int i=0;
		
		try {
			conn=c.getconnection();
			PreparedStatement pstate=conn.prepareStatement("delete from MavenBank  where regNo=?");
		
			pstate.setInt(1, regNo);
			i=pstate.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		
		return i;
	}

	@Override
	public List<Register> list() {
		 Connection conn=null;
		 List<Register> lst=new LinkedList<Register>();;
	  try {
		  conn=c.getconnection();
		  String str="SELECT * from MavenBank";
		
		Statement state=conn.createStatement();
		ResultSet result=state.executeQuery(str);
		
		while(result.next())
		{
			Register reg=new Register(result.getInt(1),result.getString(2), result.getString(3), result.getString(4), result.getFloat(5));
			lst.add(reg);
			
			
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally {
		try {
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
		return lst;
	}

	@Override
	public int AddMoney(credit cred) {
		Connection conn=null;
		float currentAmt=0;
		try {
			conn=c.getconnection();
			
			 PreparedStatement pstate=conn.prepareStatement("SELECT * FROM MavenBank WHERE regNo=? AND username=? AND password=?");
			 pstate.setInt(1, cred.getRegNo());
			 pstate.setString(2, cred.getUsername());
			 pstate.setString(3, cred.getPassword());
			 ResultSet res=pstate.executeQuery();
			 if(res.next())
			 {
				
				currentAmt=res.getFloat(5);
				 
			 }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			{
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		
		
		int i=0;
		float newBal=cred.getAccBal()+currentAmt;
		try {
			conn=c.getconnection();
			
			 PreparedStatement pstate=conn.prepareStatement("update MavenBank set accBal=? where regNo=?  AND username=? AND password=?");
			 pstate.setInt(2,cred.getRegNo());
			 pstate.setDouble(1, newBal);
			 pstate.setString(3, cred.getUsername());
			 pstate.setString(4, cred.getPassword());
			i=pstate.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			{
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return i;
	}

	@Override
	public int withdrawMoney(credit cred) {
		Connection conn=null;
		float currentAmt=0;
		try {
			conn=c.getconnection();
			
			 PreparedStatement pstate=conn.prepareStatement("SELECT * FROM MavenBank WHERE regNo=? AND username=? AND password=?");
			 pstate.setInt(1, cred.getRegNo());
			 pstate.setString(2, cred.getUsername());
			 pstate.setString(3, cred.getPassword());
			 ResultSet res=pstate.executeQuery();
			 if(res.next())
			 {
				
				currentAmt=res.getFloat(5);
				 
			 }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			{
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		int i=0;
		if(currentAmt>=cred.getAccBal())
		{
		
		float newBal=currentAmt-cred.getAccBal();
		try {
			conn=c.getconnection();
			
			 PreparedStatement pstate=conn.prepareStatement("update MavenBank set accBal=? where regNo=?");
			 pstate.setInt(2,cred.getRegNo());
			 pstate.setDouble(1, newBal);
			i=pstate.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			{
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		}
		return i;
	}

	@Override
	public int rechargePhone(recharge rech) {
		Connection conn=null;
		
		int i=0;
		float currentAmt=0;
		try {
			conn=c.getconnection();
			PreparedStatement pstate=conn.prepareStatement("SELECT * FROM MavenBank where username=? and password=?");
			pstate.setString(1, rech.getUsername());
			pstate.setString(2, rech.getPassword());
			ResultSet result=pstate.executeQuery();
			if(result.next())
			{
				currentAmt=result.getFloat(5);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(currentAmt>=rech.getPlan())
		{
			try {
				conn=c.getconnection();
				PreparedStatement pstate=conn.prepareStatement("insert into recharge values(?,?,?,?,?)");
				
				pstate.setString(1, rech.getUsername());
				pstate.setString(2, rech.getPassword());
				pstate.setString(3, rech.getMobile());
				pstate.setString(4, rech.getOperator());
				pstate.setFloat(5, rech.getPlan());
				pstate.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			float newBal=currentAmt-rech.getPlan();
			try {
				conn=c.getconnection();
				
				 PreparedStatement pstate=conn.prepareStatement("update MavenBank set accBal=? where username=? and password=?");
				 pstate.setFloat(1, newBal);
				 	pstate.setString(2, rech.getUsername());
					pstate.setString(3, rech.getPassword());
				i=pstate.executeUpdate();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		}
		else
		{
			System.out.println("Error");
		}
		return i;
	}

	@Override
	public List<recharge> rechlist() {
		 Connection conn=null;
		 List<recharge> lst=new LinkedList<recharge>();;
	  try {
		  conn=c.getconnection();
		  String str="SELECT * from recharge";
		
		Statement state=conn.createStatement();
		ResultSet result=state.executeQuery(str);
		
		while(result.next())
		{
			recharge reg=new recharge(result.getString(1),result.getString(2),result.getString(3),result.getString(4),result.getFloat(5));
			lst.add(reg);
			
			
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally {
		try {
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
		return lst;
	}

}