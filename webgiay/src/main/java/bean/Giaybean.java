package bean;

import java.util.Date;

public class Giaybean {
    private String magiay;
    private String tengiay;
    private int soluong;
    private int gia;
    private String maloai;
    private String anh;
    private Date Ngaynhap;
    private String hanggiay;
	public Giaybean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Giaybean(String magiay, String tengiay, int soluong, int gia, String maloai, String anh,
			Date ngaynhap, String hanggiay) {
		super();
		this.magiay = magiay;
		this.tengiay = tengiay;
		this.soluong = soluong;
		this.gia = gia;
		this.maloai = maloai;
		
		this.anh = anh;
		Ngaynhap = ngaynhap;
		this.hanggiay = hanggiay;
	}
	public String getMagiay() {
		return magiay;
	}
	public void setMagiay(String magiay) {
		this.magiay = magiay;
	}
	public String getTengiay() {
		return tengiay;
	}
	public void setTengiay(String tengiay) {
		this.tengiay = tengiay;
	}
	public int getSoluong() {
		return soluong;
	}
	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}
	public int getGia() {
		return gia;
	}
	public void setGia(int gia) {
		this.gia = gia;
	}
	public String getMaloai() {
		return maloai;
	}
	public void setMaloai(String maloai) {
		this.maloai = maloai;
	}
	
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public Date getNgaynhap() {
		return Ngaynhap;
	}
	public void setNgaynhap(Date ngaynhap) {
		Ngaynhap = ngaynhap;
	}
	public String gethanggiay() {
		return hanggiay;
	}
	public void sethanggiay(String hanggiay) {
		this.hanggiay = hanggiay;
	}
	@Override
	public String toString() {
		return "Giaybean [magiay=" + magiay + ", tengiay=" + tengiay + ", soluong=" + soluong + ", gia=" + gia
				+ ", maloai=" + maloai + ",  anh=" + anh + ", Ngaynhap=" + Ngaynhap + ",hanggiay=+ hanggiay + ]";
	}


   


}