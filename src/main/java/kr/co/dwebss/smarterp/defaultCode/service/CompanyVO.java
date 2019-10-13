package kr.co.dwebss.smarterp.defaultCode.service;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class CompanyVO{

	private int companyId;
	private int accOrder;
	@DateTimeFormat(pattern = "yyyy/MM/dd")
    private Date accStartD;
	@DateTimeFormat(pattern = "yyyy/MM/dd")
    private Date accEndD;
	private String comRegNum;
	private String corRegNum;
	private String bossNm;
	private int isForeigner;
	private String citiNum;
	private String hqPostcode;
	private String hqAddr;
	private String hqAddrDetail;
	private String hqPhone1;
	private String hqPhone2;
	private String hqFax1;
	private String hqFax2;
	private String comBiz;
	private String comCate;
	private int comType;
	@DateTimeFormat(pattern = "yyyy/MM/dd")
    private Date  comEstD;
	@DateTimeFormat(pattern = "yyyy/MM/dd")
    private Date comOpenD;
	@DateTimeFormat(pattern = "yyyy/MM/dd")
    private Date comCloseD;
	private int isUse;
	private String comEngNm;
	private String corEngNm;
	private String comEngAddr;
	private String comHomepage;
	private String comGwpage;
	private String homePostcode;
	private String homeAddr;
	private String homeAddrDetail;
	private String homePhone;
	private String companyNm;
	private String isDeleted;
	
	public String getIsDeleted() {
		return isDeleted;
	}
	public void setIsDeleted(String isDeleted) {
		this.isDeleted = isDeleted;
	}
	public String getCompanyNm() {
		return companyNm;
	}
	public void setCompanyNm(String companyNm) {
		this.companyNm = companyNm;
	}
	public void setHomePhone(String homePhone) {
		this.homePhone = homePhone;
	}
	public int getAccOrder() {
		return accOrder;
	}
	public void setAccOrder(int accOrder) {
		this.accOrder = accOrder;
	}
	public Date getAccStartD() {
		return accStartD;
	}
	public void setAccStartD(Date accStartD) {
		this.accStartD = accStartD;
	}
	public Date getAccEndD() {
		return accEndD;
	}
	public void setAccEndD(Date accEndD) {
		this.accEndD = accEndD;
	}
	public String getComRegNum() {
		return comRegNum;
	}
	public void setComRegNum(String comRegNum) {
		this.comRegNum = comRegNum;
	}
	public String getCorRegNum() {
		return corRegNum;
	}
	public void setCorRegNum(String corRegNum) {
		this.corRegNum = corRegNum;
	}
	public String getBossNm() {
		return bossNm;
	}
	public void setBossNm(String bossNm) {
		this.bossNm = bossNm;
	}
	public int getIsForeigner() {
		return isForeigner;
	}
	public void setIsForeigner(int isForeigner) {
		this.isForeigner = isForeigner;
	}
	public String getCitiNum() {
		return citiNum;
	}
	public void setCitiNum(String citiNum) {
		this.citiNum = citiNum;
	}
	public String getHqPostcode() {
		return hqPostcode;
	}
	public void setHqPostcode(String hqPostcode) {
		this.hqPostcode = hqPostcode;
	}
	public String getHqAddr() {
		return hqAddr;
	}
	public void setHqAddr(String hqAddr) {
		this.hqAddr = hqAddr;
	}
	public String getHqAddrDetail() {
		return hqAddrDetail;
	}
	public void setHqAddrDetail(String hqAddrDetail) {
		this.hqAddrDetail = hqAddrDetail;
	}
	public String getHqPhone1() {
		return hqPhone1;
	}
	public void setHqPhone1(String hqPhone1) {
		this.hqPhone1 = hqPhone1;
	}
	public String getHqPhone2() {
		return hqPhone2;
	}
	public void setHqPhone2(String hqPhone2) {
		this.hqPhone2 = hqPhone2;
	}
	public String getHqFax1() {
		return hqFax1;
	}
	public void setHqFax1(String hqFax1) {
		this.hqFax1 = hqFax1;
	}
	public String getHqFax2() {
		return hqFax2;
	}
	public void setHqFax2(String hqFax2) {
		this.hqFax2 = hqFax2;
	}
	public String getComBiz() {
		return comBiz;
	}
	public void setComBiz(String comBiz) {
		this.comBiz = comBiz;
	}
	public String getComCate() {
		return comCate;
	}
	public void setComCate(String comCate) {
		this.comCate = comCate;
	}
	public int getComType() {
		return comType;
	}
	public void setComType(int comType) {
		this.comType = comType;
	}
	public Date getComEstD() {
		return comEstD;
	}
	public void setComEstD(Date comEstD) {
		this.comEstD = comEstD;
	}
	public Date getComOpenD() {
		return comOpenD;
	}
	public void setComOpenD(Date comOpenD) {
		this.comOpenD = comOpenD;
	}
	public Date getComCloseD() {
		return comCloseD;
	}
	public void setComCloseD(Date comCloseD) {
		this.comCloseD = comCloseD;
	}
	public int getIsUse() {
		return isUse;
	}
	public void setIsUse(int isUse) {
		this.isUse = isUse;
	}
	public String getComEngNm() {
		return comEngNm;
	}
	public void setComEngNm(String comEngNm) {
		this.comEngNm = comEngNm;
	}
	public String getCorEngNm() {
		return corEngNm;
	}
	public void setCorEngNm(String corEngNm) {
		this.corEngNm = corEngNm;
	}
	public String getComEngAddr() {
		return comEngAddr;
	}
	public void setComEngAddr(String comEngAddr) {
		this.comEngAddr = comEngAddr;
	}
	public String getComHomepage() {
		return comHomepage;
	}
	public void setComHomepage(String comHomepage) {
		this.comHomepage = comHomepage;
	}
	public String getComGwpage() {
		return comGwpage;
	}
	public void setComGwpage(String comGwpage) {
		this.comGwpage = comGwpage;
	}
	public String getHomePostcode() {
		return homePostcode;
	}
	public void setHomePostcode(String homePostcode) {
		this.homePostcode = homePostcode;
	}
	public String getHomeAddr() {
		return homeAddr;
	}
	public void setHomeAddr(String homeAddr) {
		this.homeAddr = homeAddr;
	}
	public String getHomeAddrDetail() {
		return homeAddrDetail;
	}
	public void setHomeAddrDetail(String homeAddrDetail) {
		this.homeAddrDetail = homeAddrDetail;
	}
	public String getHomePhone() {
		return homePhone;
	}
	public int getCompanyId() {
		return companyId;
	}
	public void setCompanyId(int companyId) {
		this.companyId = companyId;
	}
	
	
}
