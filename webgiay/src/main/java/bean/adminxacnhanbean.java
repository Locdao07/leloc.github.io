package bean;

public class adminxacnhanbean {
	private long MaChiTietHD;
	private String hoten;
	private String tengiay;
	private long gia;
	private long SoLuongMua;
	private long thanhtien;
	private boolean damua;
	public adminxacnhanbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public adminxacnhanbean(long maChiTietHD, String hoten, String tengiay, long gia, long soLuongMua, long thanhtien,
			boolean damua) {
		super();
		MaChiTietHD = maChiTietHD;
		this.hoten = hoten;
		this.tengiay = tengiay;
		this.gia = gia;
		SoLuongMua = soLuongMua;
		this.thanhtien = thanhtien;
		this.damua = damua;
	}
	public long getMaChiTietHD() {
		return MaChiTietHD;
	}
	public void setMaChiTietHD(long maChiTietHD) {
		MaChiTietHD = maChiTietHD;
	}
	public String getHoten() {
		return hoten;
	}
	public void setHoten(String hoten) {
		this.hoten = hoten;
	}
	public String getTengiay() {
		return tengiay;
	}
	public void setTengiay(String tengiay) {
		this.tengiay = tengiay;
	}
	public long getGia() {
		return gia;
	}
	public void setGia(long gia) {
		this.gia = gia;
	}
	public long getSoLuongMua() {
		return SoLuongMua;
	}
	public void setSoLuongMua(long soLuongMua) {
		SoLuongMua = soLuongMua;
	}
	public long getThanhtien() {
		return thanhtien;
	}
	public void setThanhtien(long thanhtien) {
		this.thanhtien = thanhtien;
	}
	public boolean isDamua() {
		return damua;
	}
	public void setDamua(boolean damua) {
		this.damua = damua;
	}
	
}

