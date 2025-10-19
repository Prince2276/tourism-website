package master.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import master.dto.RegisterDto;
import master.utilities.ConnectionFactory;

public class RegisterDao {
	private Connection cn = null;
	private Statement st = null;
	private PreparedStatement ps = null;
	private ResultSet rs = null;
	// private String select_sql="select * from product order by pname";
	private String insert_sql = "insert into register values(?,?,?,?,?)";

	public boolean checkLogin(String username, String password) {
		boolean flag = false;
		String check_sql = "select * from register where uname='" + username + "' and pass='" + password + "'";
		try {

			ConnectionFactory con = new ConnectionFactory();
			cn = con.getConn();
			st = cn.createStatement();
			rs = st.executeQuery(check_sql);
			if (rs.next()) {
				flag = true;
			}

		}

		/*
		 * catch(ClassNotFoundException ce) { ce.printStackTrace(); }
		 */
		catch (SQLException se) {
			se.printStackTrace();
		}
		return flag;
	}

	public void insertData(RegisterDto fdto) {
		try {

			ConnectionFactory con = new ConnectionFactory();
			cn = con.getConn();
			ps = cn.prepareStatement(insert_sql);
			ps.setString(1, fdto.getName());
			ps.setString(2, fdto.getEmail());
			ps.setString(3, fdto.getPhone());
			ps.setString(4, fdto.getUsername());
			ps.setString(5, fdto.getPassword());
			ps.executeUpdate();
		}

		/*
		 * catch(ClassNotFoundException ce) { ce.printStackTrace(); }
		 */
		catch (SQLException se) {
			se.printStackTrace();
		}
	}

}
