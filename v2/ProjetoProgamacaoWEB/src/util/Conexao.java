package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Conexao {

	private static Connection conn;
	private static boolean connected = false;

	public static Connection getConnection() throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/progWEB", "pedroH", "12345");
		connected = true;
		return conn;
	}

	public static void closeConnection() {
		try {
			if (!connected) {
				connected = false;
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void closeStatement(Statement st) {
		try {
			if (st != null) {
				st.close();
			}
		} catch (SQLException e) {
			e.getStackTrace();
		}
	}
	
	public static void closeResultSet(ResultSet rs) {
		try {
			 if(rs != null) {
				rs.close();
			}
		}
		catch(SQLException e) {
			e.getStackTrace();
		}
	}
}
