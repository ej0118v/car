package spring.model.notice;

import org.springframework.web.multipart.MultipartFile;

public class NoticeDTO {
	
	private int nnum;//NNUM NUMBER NOT NULL, 
	private String id;// VARCHAR(20) NOT NULL, 
	private String ntitle;//NTITLE VARCHAR(50) NOT NULL, 
	private String ncontent;//NCONTENT VARCHAR(4000) NOT NULL, 
	private int nviewcnt;//NVIEWCNT NUMBER DEFAULT 0, 
    private String npasswd;//NPASSWD VARCHAR(20) NOT NULL, 
    private String nwdate;//NWDATE DATE NOT NULL, 
    private String nfname;//NFNAME VARCHAR(100) null, 
    private int nfsize;//NFSIZE NUMBER(38) null, 
	private MultipartFile nfnameMF;
	
	public NoticeDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public NoticeDTO(int nnum, String id, String ntitle, String ncontent, int nviewcnt, String npasswd, String nwdate,
			String nfname, int nfsize, MultipartFile nfnameMF) {
		super();
		this.nnum = nnum;
		this.id = id;
		this.ntitle = ntitle;
		this.ncontent = ncontent;
		this.nviewcnt = nviewcnt;
		this.npasswd = npasswd;
		this.nwdate = nwdate;
		this.nfname = nfname;
		this.nfsize = nfsize;
		this.nfnameMF = nfnameMF;
	}

	@Override
	public String toString() {
		return "NoticeDTO [nnum=" + nnum + ", id=" + id + ", ntitle=" + ntitle + ", ncontent=" + ncontent
				+ ", nviewcnt=" + nviewcnt + ", npasswd=" + npasswd + ", nwdate=" + nwdate + ", nfname=" + nfname
				+ ", nfsize=" + nfsize + ", nfnameMF=" + nfnameMF + "]";
	}

	public int getNnum() {
		return nnum;
	}

	public void setNnum(int nnum) {
		this.nnum = nnum;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getNtitle() {
		return ntitle;
	}

	public void setNtitle(String ntitle) {
		this.ntitle = ntitle;
	}

	public String getNcontent() {
		return ncontent;
	}

	public void setNcontent(String ncontent) {
		this.ncontent = ncontent;
	}

	public int getNviewcnt() {
		return nviewcnt;
	}

	public void setNviewcnt(int nviewcnt) {
		this.nviewcnt = nviewcnt;
	}

	public String getNpasswd() {
		return npasswd;
	}

	public void setNpasswd(String npasswd) {
		this.npasswd = npasswd;
	}

	public String getNwdate() {
		return nwdate;
	}

	public void setNwdate(String nwdate) {
		this.nwdate = nwdate;
	}

	public String getNfname() {
		return nfname;
	}

	public void setNfname(String nfname) {
		this.nfname = nfname;
	}

	public int getNfsize() {
		return nfsize;
	}

	public void setNfsize(int nfsize) {
		this.nfsize = nfsize;
	}

	public MultipartFile getNfnameMF() {
		return nfnameMF;
	}

	public void setNfnameMF(MultipartFile nfnameMF) {
		this.nfnameMF = nfnameMF;
	}
		
}