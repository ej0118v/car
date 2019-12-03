package spring.model.brand;

import org.springframework.web.multipart.MultipartFile;

public class BrandDTO {
	private String bname;//BNAME VARCHAR(20) NOT NULL, 
	private String bfname;//	BFNAME VARCHAR(100) NOT NULL, 
	private int bfsize;//	BFSIZE NUMBER(38) null, 
	private MultipartFile bfnameMF;
	
	public BrandDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BrandDTO(String bname, String bfname, int bfsize, MultipartFile bfnameMF) {
		super();
		this.bname = bname;
		this.bfname = bfname;
		this.bfsize = bfsize;
		this.bfnameMF = bfnameMF;
	}

	@Override
	public String toString() {
		return "BrandDTO [bname=" + bname + ", bfname=" + bfname + ", bfsize=" + bfsize + ", bfnameMF=" + bfnameMF
				+ "]";
	}

	public String getBname() {
		return bname;
	}

	public void setBname(String bname) {
		this.bname = bname;
	}

	public String getBfname() {
		return bfname;
	}

	public void setBfname(String bfname) {
		this.bfname = bfname;
	}

	public int getBfsize() {
		return bfsize;
	}

	public void setBfsize(int bfsize) {
		this.bfsize = bfsize;
	}

	public MultipartFile getBfnameMF() {
		return bfnameMF;
	}

	public void setBfnameMF(MultipartFile bfnameMF) {
		this.bfnameMF = bfnameMF;
	}
	
}
