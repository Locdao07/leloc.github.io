package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.adminxacnhanbean;

public class Chitietdao {
	public int Them(String magiay, long soluongmua, long mahd) {
		try {
			KetNoi kn= new KetNoi();
			kn.KetNoi();
			String sql="insert into ChiTietHoaDon(Magiay,SoLuongMua, MaHoadon,damua) values(?,?,?,?)";
			PreparedStatement cmd= kn.cn.prepareStatement(sql);
			cmd.setString(1, magiay);
			cmd.setLong(2, soluongmua);
			cmd.setLong(3, mahd);
			cmd.setBoolean(4, false);
			int kq=cmd.executeUpdate();
			kn.cn.close();
			return kq;
		} catch (Exception e) {
			e.printStackTrace();return 0;
		}
}
	public int Sua(long mact) throws Exception{
		//B1: Ket noi vao csdl
				KetNoi kn = new KetNoi();
				kn.KetNoi();
				//B2:Tao cau lenh sql
				String sql = 
						"update ChiTietHoaDon set damua = 1 where MaChiTietHD = ?";
				//B3:Tao cau lenh prepareStatement
				PreparedStatement cmd = kn.cn.prepareStatement(sql);
				//b4 truyen tham so
				cmd.setLong(1, mact);
				int kq =cmd.executeUpdate();
				cmd.close();
				kn.cn.close();
				return kq;
	}
	
	public ArrayList<adminxacnhanbean> getXacnhan() throws Exception{
			ArrayList<adminxacnhanbean> ds = new ArrayList<adminxacnhanbean>();
			KetNoi kn = new KetNoi();
			kn.KetNoi();
			//b2 Tao cau lenh sql
			String sql = "select * from Vadminxacnhan";
			//b3 Tao cau lenh prepareStatementt
			PreparedStatement cmd = kn.cn.prepareStatement(sql);
			//b4 thuc hien cau lenh
			ResultSet rs = cmd.executeQuery();
			//b5 Duyet rs de luu vao mang ds
			while (rs.next()) {
				long MaChiTietHD = rs.getLong("MaChiTietHD");
				String hoten = rs.getString("hoten");
				String tengiay = rs.getString("tengiay");
				int gia = rs.getInt("gia");
				int SoLuong = rs.getInt("SoLuong");
				long thanhtien = rs.getLong("thanhtien");
				boolean damua = rs.getBoolean("damua");
				ds.add(new adminxacnhanbean(MaChiTietHD, hoten, tengiay, gia, SoLuong, thanhtien, damua));
			}
			//b6 đóng kết nối
					rs.close();
					kn.cn.close();
			return ds;
		}

}
