package master.utilities;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
	private Connection cn = null;

	public Connection getConn() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver"); // register and load the JDBC driver
			// ESTABLISH THE CONNECTION
			cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/TOURISMDB", "root", "Prince");

		} catch (ClassNotFoundException ce) {
			ce.printStackTrace();
		} catch (SQLException se) {

			se.printStackTrace();

		}

		return cn;
	}

}
