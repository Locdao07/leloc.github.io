package dao;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.Khachhangbean;


public class Khachhangdao {
	
	public Khachhangbean ktdn(String tendn, String pass) {
		try {
			KetNoi kn= new KetNoi();
			kn.KetNoi();
			String sql="select * from KhachHang where tendn=? and pass=?";
			PreparedStatement cmd= kn.cn.prepareStatement(sql);
			cmd.setString(1, tendn);
			cmd.setString(2, pass);
			ResultSet rs= cmd.executeQuery();
			Khachhangbean kh= null;
			if(rs.next()) {//Dang nhap thanh cong
				long makh= rs.getLong("makh");
				String hoten=rs.getString("hoten");
				String diachi=rs.getString("diachi");
				String sdt=rs.getString("sdt");
				String email=rs.getString("email");
				kh= new Khachhangbean(makh, hoten, diachi, sdt, email, tendn, pass);
			}
			return kh;
		} catch (Exception e) {
			e.printStackTrace();return null;
		}
	}

//	public static void main(String[] args) {
//	khachhangdao kh= new khachhangdao();
//	System.out.println(kh.ktdn("nkchung", "123").getHoten());
//
//	}
	public void dangky(String hoten, String diachi, String sdt, String email, String tendn, String pass) throws Exception {
		// B1: Kết nối vào CSDL
		KetNoi kn = new KetNoi();
		kn.KetNoi();

		// B2: Tạo câu lệnh SQL
		// Tạo câu lệnh SQL và thực hiện truy vấn INSERT vào bảng KhachHang


		// Tạo câu lệnh SQL và thực hiện truy vấn INSERT vào bảng KhachHang
		String sql = "INSERT INTO khachang (hoten, diachi, sodt, email, tendn, pass) VALUES (?, ?, ?, ?, ?, ?)";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, hoten);
		cmd.setString(2, diachi);
		cmd.setString(3, sdt);
		cmd.setString(4, email);
		cmd.setString(5, tendn);
		cmd.setString(6, pass);

		// Thực hiện truy vấn INSERT
		cmd.executeUpdate();

		// B6: Đóng kết nối và giải phóng tài nguyên
		cmd.close();
		kn.cn.close();
	}
	
	public ArrayList<Khachhangbean> getkhachhang() throws Exception{
		ArrayList<Khachhangbean> ds = new ArrayList<Khachhangbean>();
		KetNoi kn = new KetNoi();
		kn.KetNoi();
		String sql = "select * from khachhang";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			long makh = rs.getLong("makh");
			String hoten = rs.getString("hoten");
			String diachi = rs.getString("diachi");
			String sdt = rs.getString("sdt");
			String email = rs.getString("email");
			String tendn = rs.getString("tendn");
			String pass = rs.getString("pass");
			
			
			ds.add(new Khachhangbean(makh, hoten, diachi, sdt, email, tendn, pass));
		}
		rs.close(); kn.cn.close(); //khong sai dong lai
		return ds;
	}
	   
}
