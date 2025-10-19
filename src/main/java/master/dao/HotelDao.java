package master.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import master.dto.HotelDto;
import master.utilities.ConnectionFactory;

public class HotelDao {
	private Connection cn = null;
	private Statement st = null;
	private PreparedStatement ps = null;
	private ResultSet rs = null;

	private String select_sql = "select * from hotel order by hid";
	private String insert_sql = "insert into hotel values(?,?,?,?)";
	private String delete_sql = "delete from hotel where hid=?";
	private String update_sql = "update hotel set hname=? hplace=? hprice=? where hid=?";

	public ResultSet getData() {
		try {

			ConnectionFactory con = new ConnectionFactory();
			cn = con.getConn();
			st = cn.createStatement();
			rs = st.executeQuery(select_sql);
		}

		/*
		 * catch(ClassNotFoundException ce) { ce.printStackTrace(); }
		 */
		catch (SQLException se) {
			se.printStackTrace();
		}

		return rs;
	}

	public void insertData(HotelDto hdto) {
		try {

			ConnectionFactory con = new ConnectionFactory();
			cn = con.getConn();
			ps = cn.prepareStatement(insert_sql);
			ps.setString(1, hdto.getHid());
			ps.setString(2, hdto.getHname());
			ps.setString(3, hdto.getHplace());
			ps.setString(4, hdto.getHprice());

			ps.executeUpdate();
		}

		/*
		 * catch(ClassNotFoundException ce) { ce.printStackTrace(); }
		 */
		catch (SQLException se) {
			se.printStackTrace();
		}
	}

	public void deleteData(HotelDto hdto) {
		try {
			// Class.forName("com.mysql.cj.jdbc.Driver");//REGISTER AND LOAD THE JDBC DRIVER
			// ESTABLISH THE CONNECTION
			// cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbfoodapp","root","bishal");
			ConnectionFactory con = new ConnectionFactory();
			cn = con.getConn();
			ps = cn.prepareStatement(delete_sql);
			ps.setString(1, hdto.getHid());

			ps.executeUpdate();
		}

		/*
		 * catch(ClassNotFoundException ce) { ce.printStackTrace(); }
		 */
		catch (SQLException se) {
			se.printStackTrace();
		}
	}

	public void updateData(HotelDto hdto) {
		Connection cn = null;
		PreparedStatement ps = null;
		try {
			ConnectionFactory con = new ConnectionFactory();
			cn = con.getConn();
			String update_sql = "UPDATE hotel SET hname = ?, hplace = ?, hprice = ? WHERE hid = ?";

			ps = cn.prepareStatement(update_sql);
			ps.setString(1, hdto.getHname());
			ps.setString(2, hdto.getHplace());
			ps.setString(3, hdto.getHprice());
			ps.setString(4, hdto.getHid());

			ps.executeUpdate();

		} catch (SQLException se) {
			se.printStackTrace();
		} finally {
			try {
				if (ps != null)
					ps.close();
				if (cn != null)
					cn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

}
