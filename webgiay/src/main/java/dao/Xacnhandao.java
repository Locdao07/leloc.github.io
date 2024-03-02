package dao;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import bean.Xacnhanbean;

public class Xacnhandao {
	public ArrayList<Xacnhanbean> getdanhsach() {
		ArrayList<Xacnhanbean> ds= new ArrayList<Xacnhanbean>();
		try {
			KetNoi kn= new KetNoi();
			kn.KetNoi();
			String sql="select * from Vadminxacnhan ";
			PreparedStatement cmd= kn.cn.prepareStatement(sql);
			ResultSet rs= cmd.executeQuery();
			Xacnhanbean xn= null;
			if(rs.next()) {
				long MaChiTietHD= rs.getLong("MaChiTietHD");
				String hoten=rs.getString("hoten");
				String tengiay=rs.getString("tengiay");
				Date NgayMua=rs.getDate("NgayMua");
				int SoLuongMua=rs.getInt("SoLuongMua");
				long gia=rs.getLong("gia");
				long ThanhTien=rs.getLong("ThanhTien");
				boolean damua=rs.getBoolean("damua");
				ds.add(new Xacnhanbean(MaChiTietHD, hoten, tengiay, NgayMua, SoLuongMua, gia, ThanhTien, damua));
			}
			rs.close();
			kn.cn.close();
			return ds;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	 public void UpdateDamua(long ChiTietHoaDon) {
	      try {
	    	  KetNoi kn= new KetNoi();
	  		kn.KetNoi();
	  		String sql="update ChiTietHoaDon set damua = 1 where MaChiTietHD = ?";
	  		PreparedStatement cmd= kn.cn.prepareStatement(sql);
	  		cmd.setLong(1, ChiTietHoaDon);
	  		cmd.executeUpdate();
	  		kn.cn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}	
	    }
	public static void main(String[] args) {
	Xacnhandao xndao = new Xacnhandao();
	System.out.println(xndao.getdanhsach());
	}

}
