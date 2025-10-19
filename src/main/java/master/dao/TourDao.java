package master.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import master.dto.TourDto;
import master.utilities.ConnectionFactory;

public class TourDao {
	private Connection cn = null;
	private Statement st = null;
	private PreparedStatement ps = null;
	private ResultSet rs = null;

	private String select_sql = "select * from tour order by tid";
	private String insert_sql = "insert into tour values(?,?,?,?,?,?,?)";
	private String delete_sql = "delete from tour where tid=?";
	private String update_sql = "update tour set tdate=? tprice=? where tid=?";

	// private String select_sql = "select * from food order by fid";
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

	public void insertData(TourDto tdto) {
		try {

			ConnectionFactory con = new ConnectionFactory();
			cn = con.getConn();
			ps = cn.prepareStatement(insert_sql);
			ps.setString(1, tdto.getTid());
			ps.setString(2, tdto.getTname());
			ps.setString(3, tdto.getTplace1());
			ps.setString(4, tdto.getTplace2());
			ps.setString(5, tdto.getTplace3());
			ps.setDate(6, new java.sql.Date(tdto.getTdate().getTime()));
			ps.setString(7, tdto.getTprice());

			ps.executeUpdate();
		}

		/*
		 * catch(ClassNotFoundException ce) { ce.printStackTrace(); }
		 */
		catch (SQLException se) {
			se.printStackTrace();
		}
	}

	public void deleteData(TourDto tdto) {
		try {
			// Class.forName("com.mysql.cj.jdbc.Driver");//REGISTER AND LOAD THE JDBC DRIVER
			// ESTABLISH THE CONNECTION
			// cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbfoodapp","root","bishal");
			ConnectionFactory con = new ConnectionFactory();
			cn = con.getConn();
			ps = cn.prepareStatement(delete_sql);
			ps.setString(1, tdto.getTid());

			ps.executeUpdate();
		}

		/*
		 * catch(ClassNotFoundException ce) { ce.printStackTrace(); }
		 */
		catch (SQLException se) {
			se.printStackTrace();
		}
	}

	public void updateData(TourDto tdto) {
		Connection cn = null;
		PreparedStatement ps = null;
		try {
			ConnectionFactory con = new ConnectionFactory();
			cn = con.getConn();
			String update_sql = "UPDATE tour SET tdate = ?, tprice = ? WHERE tid = ?";

			ps = cn.prepareStatement(update_sql);
			ps.setDate(1, new java.sql.Date(tdto.getTdate().getTime()));
			ps.setString(2, tdto.getTprice());
			ps.setString(3, tdto.getTid());

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
