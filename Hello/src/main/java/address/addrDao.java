package address;

import java.util.ArrayList;

public class addrDao {
	ArrayList<addrDo> v = new ArrayList<>();
	
	public void insertAddr(addrDo ado ) {
		//ArrayList에 데이터 저장 ..
		v.add(ado);
	}
	
	public ArrayList<addrDo> getAddr() {
		return v;
	}

}

