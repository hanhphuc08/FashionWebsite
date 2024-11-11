package configs;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnectSQL {
<<<<<<< HEAD
	private final String serverName = "LAPTOP-3N644IDG";
=======
	private final String serverName = "MSI";
>>>>>>> 35e293755eb35f7af53e6edfecba9893dc9c6cbb
	private final String dbName = "DoAnCNTT";
	private final String portNumber = "1433";
	private final String instance = "";
	private final String userID = "sa";
	private final String password = "123456";

	public Connection getConnection() throws Exception {
		String url = "jdbc:sqlserver://" + serverName + "\\" + instance + ":" + portNumber + ";databaseName=" + dbName;
		if (instance == null || instance.trim().isEmpty())
			url = "jdbc:sqlserver://" + serverName + ":" + portNumber + ";databaseName=" + dbName;
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		return DriverManager.getConnection(url, userID, password);
	}

	public static void main(String[] args) {
		try {
			System.out.println(new DBConnectSQL().getConnection());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
