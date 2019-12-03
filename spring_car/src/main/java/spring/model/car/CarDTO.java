package spring.model.car;

import org.springframework.web.multipart.MultipartFile;

public class CarDTO {
	private int cnum;//CNUM NUMBER(5) NOT NULL, 
	private String cname;//CNAME VARCHAR(100) NOT NULL, 
	private String bname;
	private String ctype;//CTYPE VARCHAR(100) NOT NULL, 차종 중형 대형
	private String coil;//COIL VARCHAR(100) NOT NULL, 휘발유 경유
	private int cyear;//CYEAR NUMBER(10) NOT NULL, 
	private int cprice;//CPRICE NUMBER(20) NOT NULL, 
	private String csize;//CSIZE VARCHAR(100) NOT NULL,  cc 몇 cc
	private String cfname;//CFNAME VARCHAR(100) not null, 
	private int cfsize;//CFSIZE NUMBER(38) null, 
	private MultipartFile cfnameMF;
	
	public CarDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CarDTO(int cnum, String cname, String bname, String ctype, String coil, int cyear, int cprice, String csize,
			String cfname, int cfsize, MultipartFile cfnameMF) {
		super();
		this.cnum = cnum;
		this.cname = cname;
		this.bname = bname;
		this.ctype = ctype;
		this.coil = coil;
		this.cyear = cyear;
		this.cprice = cprice;
		this.csize = csize;
		this.cfname = cfname;
		this.cfsize = cfsize;
		this.cfnameMF = cfnameMF;
	}

	@Override
	public String toString() {
		return "CarDTO [cnum=" + cnum + ", cname=" + cname + ", bname=" + bname + ", ctype=" + ctype + ", coil=" + coil
				+ ", cyear=" + cyear + ", cprice=" + cprice + ", csize=" + csize + ", cfname=" + cfname + ", cfsize="
				+ cfsize + ", cfnameMF=" + cfnameMF + "]";
	}

	public int getCnum() {
		return cnum;
	}

	public void setCnum(int cnum) {
		this.cnum = cnum;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getBname() {
		return bname;
	}

	public void setBname(String bname) {
		this.bname = bname;
	}

	public String getCtype() {
		return ctype;
	}

	public void setCtype(String ctype) {
		this.ctype = ctype;
	}

	public String getCoil() {
		return coil;
	}

	public void setCoil(String coil) {
		this.coil = coil;
	}

	public int getCyear() {
		return cyear;
	}

	public void setCyear(int cyear) {
		this.cyear = cyear;
	}

	public int getCprice() {
		return cprice;
	}

	public void setCprice(int cprice) {
		this.cprice = cprice;
	}

	public String getCsize() {
		return csize;
	}

	public void setCsize(String csize) {
		this.csize = csize;
	}

	public String getCfname() {
		return cfname;
	}

	public void setCfname(String cfname) {
		this.cfname = cfname;
	}

	public int getCfsize() {
		return cfsize;
	}

	public void setCfsize(int cfsize) {
		this.cfsize = cfsize;
	}

	public MultipartFile getCfnameMF() {
		return cfnameMF;
	}

	public void setCfnameMF(MultipartFile cfnameMF) {
		this.cfnameMF = cfnameMF;
	}
	
}
