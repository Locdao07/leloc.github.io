package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import bean.admindangnhapbean;

public class admindangnhapdao {
		public admindangnhapbean admin(String tendn, String pass ) {
			try {
				KetNoi kn = new KetNoi();
				kn.KetNoi();
				String sql = "select * from dangnhap where tendangnhap = ? and matkhau = ?";
				PreparedStatement cmd = kn.cn.prepareStatement(sql);
				cmd.setString(1, tendn);
				cmd.setString(2, pass);
				ResultSet rs = cmd.executeQuery();
				admindangnhapbean dn = null;
				while(rs.next()) {
					String tendangnhap = rs.getString("tendangnhap");
					String matkhau = rs.getString("matkhau");
					boolean quyen = rs.getBoolean("quyen");
					
					
					dn = new admindangnhapbean(tendangnhap, matkhau, quyen);
				}
				return dn;
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace(); return null;
			}
			
			
		}
		
		public void dangky(String tendangnhap, String matkhau) throws Exception {
		
				KetNoi kn = new KetNoi();
				kn.KetNoi();
				String sql = "INSERT INTO dangnhap (tendangnhap,matkhau,quyen) VALUES(?,?,1)";
				PreparedStatement cmd = kn.cn.prepareStatement(sql);
				cmd.setString(1, tendangnhap);
				cmd.setString(2, matkhau);
				
				cmd.executeUpdate();
				
				cmd.close();
				kn.cn.close();
		}
}
