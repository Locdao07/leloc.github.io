package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class KetNoi {
    public Connection cn;
    public void KetNoi() {
    	try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			System.out.print("Da ket noi");
			String url="jdbc:sqlserver://LE-VAN-LOC-2001\\MSSQLSERVER01:1433;databaseName=QlGiay;user=sa; password=123";
			cn=DriverManager.getConnection(url);
			System.out.print("da ket noi thanh cong");
		} catch ( Exception e) {
			e.printStackTrace();
		}
    }
	public static void main(String[] args) {

    KetNoi kn=new KetNoi();
    kn.KetNoi();

	}

}