package bo;

import java.util.ArrayList;

import bean.loaibean;
import dao.loaidao;

public class loaibo {
    loaidao ldao=new loaidao();
    ArrayList<loaibean> ds;
    public ArrayList<loaibean> getloai(){
    	ds=ldao.getloai();
    	return ds;
    }
    public int Them(String maloai,String tenloai){
		return ldao.Them(maloai, tenloai);
	}
	
	public int Sua(String maloai,String tenloai) {
		return ldao.Sua(maloai, maloai);
	}
	
	public int Xoa(String maloai) throws Exception{
		return ldao.Xoa(maloai);
 }
	public String Tim(String maloai) throws Exception{
		for(loaibean loai:ds)
			if(loai.getMaloai().equals(maloai))
				return loai.getTenloai();
		return null;
	}
}