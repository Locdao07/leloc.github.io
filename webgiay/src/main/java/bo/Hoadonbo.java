package bo;

import dao.Hoadondao;

public class Hoadonbo {
	Hoadondao hd= new Hoadondao();
	public int Them(long makh) {
		return hd.Them(makh);
	}
	 public long maxhd() {
		 return hd.maxhd();
	 }

}
