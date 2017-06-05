package com.demo.servlet;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class DeptBean {
	int deptno;
	String deptname,loc;
	public int getDeptno() {
		return deptno;
	}
	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}
	public String getDeptname() {
		return deptname;
	}
	public void setDeptname(String deptname) {
		this.deptname = deptname;
	}
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
	
	//Insert new dept
	public void addDept(){
		try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@1521:xe","SYSTEM","tiger");
		PreparedStatement ps=con.prepareStatement("insert into dept values(?,?,?)");
		ps.setInt(1, deptno);
		ps.setString(2, deptname);
		ps.setString(3, loc);
		ps.executeUpdate();
		con.close();
		
	} //end try
		catch (Exception ex){
		System.out.println(ex);
	}
	
   } // end of newDept
}// end of bean
