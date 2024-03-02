package bean;

public class Lichsumuahangbean {
       private long makh;
       private String tengiay;
       private long soluong;
       private long gia;
       private long thanhtien;
       private boolean damua;
	public Lichsumuahangbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Lichsumuahangbean(long makh, String tengiay, long soluong, long gia, long thanhtien, boolean damua) {
		super();
		this.makh = makh;
		this.tengiay = tengiay;
		this.soluong = soluong;
		this.gia = gia;
		this.thanhtien = thanhtien;
		this.damua = damua;
	}
	@Override
	public String toString() {
		return "lichsumuahangbean [makh=" + makh + ", tengiay=" + tengiay + ", soluong=" + soluong + ", gia=" + gia
				+ ", thanhtien=" + thanhtien + ", damua=" + damua + "]";
	}
	public long getMakh() {
		return makh;
	}
	public void setMakh(long makh) {
		this.makh = makh;
	}
	public String getTengiay() {
		return tengiay;
	}
	public void setTengiay(String tengiay) {
		this.tengiay = tengiay;
	}
	public long getSoluong() {
		return soluong;
	}
	public void setSoluong(long soluong) {
		this.soluong = soluong;
	}
	public long getGia() {
		return gia;
	}
	public void setGia(long gia) {
		this.gia = gia;
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
