package kr.co.dwebss.smarterp.defaultCode.service;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class WorkplaceVO {
	int workplaceId;
	String workplaceNm;
	private String comRegNum;
	String hqRegNum;
	private String corRegNum;
	private String bossNm;
	private String hqPostcode;
	private String hqAddr;
	private String hqAddrDetail;
	private String hqPhone1;
	private String hqPhone2;
	private String hqFax1;
	private String hqFax2;
	private String comBiz;
	private String comCate;
	String taxofficeCode;
	String taxofficeAreaNm;
	@DateTimeFormat(pattern = "yyyy/MM/dd")
    private Date comOpenD;
	@DateTimeFormat(pattern = "yyyy/MM/dd")
    private Date comCloseD;
	private int isHq;
	String isImpleStatusReported;
	String mainBizCd;
	String mainBizCdNm;
	String localTaxReturnAdminNum;
	String localTaxReturnAdminAddr;
	String localTaxReturnNotifyNum;
	String localTaxReturnNotifyAddr;
	String localTaxClassCd;
	String localTaxClassValue;
	String elecNotiId;
	String addrPhoneNum;
	String reportPhoneNum;
	String reportEmail;
	String reportLiquorCd;
	String elecFilingSido;
	String elecFilingSigungu;
	String elecFilingEubmyeon;
	String elecFilingLoadCd;
	String elecFilingLoadNm;
	String electFilingIsBased;
	String elecBuildingMainNum;
	String elecBuildingSubNum;
	private String comEngNm;
	private String corEngNm;
	private String comEngAddr;
	private String comHomepage;
	private String comGwpage;
	private String homePostcode;
	private String homeAddr;
	private String homeAddrDetail;
	private String homePhone;
	private String isDeleted;
	public int getWorkplaceId() {
		return workplaceId;
	}
	public void setWorkplaceId(int workplaceId) {
		this.workplaceId = workplaceId;
	}
	public String getWorkplaceNm() {
		return workplaceNm;
	}
	public void setWorkplaceNm(String workplaceNm) {
		this.workplaceNm = workplaceNm;
	}
	public String getComRegNum() {
		return comRegNum;
	}
	public void setComRegNum(String comRegNum) {
		this.comRegNum = comRegNum;
	}
	public String getHqRegNum() {
		return hqRegNum;
	}
	public void setHqRegNum(String hqRegNum) {
		this.hqRegNum = hqRegNum;
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
	public String getTaxofficeCode() {
		return taxofficeCode;
	}
	public void setTaxofficeCode(String taxofficeCode) {
		this.taxofficeCode = taxofficeCode;
	}
	public String getTaxofficeAreaNm() {
		return taxofficeAreaNm;
	}
	public void setTaxofficeAreaNm(String taxofficeAreaNm) {
		this.taxofficeAreaNm = taxofficeAreaNm;
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
	public int getIsHq() {
		return isHq;
	}
	public void setIsHq(int isHq) {
		this.isHq = isHq;
	}
	public String getIsImpleStatusReported() {
		return isImpleStatusReported;
	}
	public void setIsImpleStatusReported(String isImpleStatusReported) {
		this.isImpleStatusReported = isImpleStatusReported;
	}
	public String getMainBizCd() {
		return mainBizCd;
	}
	public void setMainBizCd(String mainBizCd) {
		this.mainBizCd = mainBizCd;
	}
	public String getMainBizCdNm() {
		return mainBizCdNm;
	}
	public void setMainBizCdNm(String mainBizCdNm) {
		this.mainBizCdNm = mainBizCdNm;
	}
	public String getLocalTaxReturnAdminNum() {
		return localTaxReturnAdminNum;
	}
	public void setLocalTaxReturnAdminNum(String localTaxReturnAdminNum) {
		this.localTaxReturnAdminNum = localTaxReturnAdminNum;
	}
	public String getLocalTaxReturnAdminAddr() {
		return localTaxReturnAdminAddr;
	}
	public void setLocalTaxReturnAdminAddr(String localTaxReturnAdminAddr) {
		this.localTaxReturnAdminAddr = localTaxReturnAdminAddr;
	}
	public String getLocalTaxReturnNotifyNum() {
		return localTaxReturnNotifyNum;
	}
	public void setLocalTaxReturnNotifyNum(String localTaxReturnNotifyNum) {
		this.localTaxReturnNotifyNum = localTaxReturnNotifyNum;
	}
	public String getLocalTaxReturnNotifyAddr() {
		return localTaxReturnNotifyAddr;
	}
	public void setLocalTaxReturnNotifyAddr(String localTaxReturnNotifyAddr) {
		this.localTaxReturnNotifyAddr = localTaxReturnNotifyAddr;
	}
	public String getLocalTaxClassCd() {
		return localTaxClassCd;
	}
	public void setLocalTaxClassCd(String localTaxClassCd) {
		this.localTaxClassCd = localTaxClassCd;
	}
	public String getLocalTaxClassValue() {
		return localTaxClassValue;
	}
	public void setLocalTaxClassValue(String localTaxClassValue) {
		this.localTaxClassValue = localTaxClassValue;
	}
	public String getElecNotiId() {
		return elecNotiId;
	}
	public void setElecNotiId(String elecNotiId) {
		this.elecNotiId = elecNotiId;
	}
	public String getAddrPhoneNum() {
		return addrPhoneNum;
	}
	public void setAddrPhoneNum(String addrPhoneNum) {
		this.addrPhoneNum = addrPhoneNum;
	}
	public String getReportPhoneNum() {
		return reportPhoneNum;
	}
	public void setReportPhoneNum(String reportPhoneNum) {
		this.reportPhoneNum = reportPhoneNum;
	}
	public String getReportEmail() {
		return reportEmail;
	}
	public void setReportEmail(String reportEmail) {
		this.reportEmail = reportEmail;
	}
	public String getReportLiquorCd() {
		return reportLiquorCd;
	}
	public void setReportLiquorCd(String reportLiquorCd) {
		this.reportLiquorCd = reportLiquorCd;
	}
	public String getElecFilingSido() {
		return elecFilingSido;
	}
	public void setElecFilingSido(String elecFilingSido) {
		this.elecFilingSido = elecFilingSido;
	}
	public String getElecFilingSigungu() {
		return elecFilingSigungu;
	}
	public void setElecFilingSigungu(String elecFilingSigungu) {
		this.elecFilingSigungu = elecFilingSigungu;
	}
	public String getElecFilingEubmyeon() {
		return elecFilingEubmyeon;
	}
	public void setElecFilingEubmyeon(String elecFilingEubmyeon) {
		this.elecFilingEubmyeon = elecFilingEubmyeon;
	}
	public String getElecFilingLoadCd() {
		return elecFilingLoadCd;
	}
	public void setElecFilingLoadCd(String elecFilingLoadCd) {
		this.elecFilingLoadCd = elecFilingLoadCd;
	}
	public String getElecFilingLoadNm() {
		return elecFilingLoadNm;
	}
	public void setElecFilingLoadNm(String elecFilingLoadNm) {
		this.elecFilingLoadNm = elecFilingLoadNm;
	}
	public String getElectFilingIsBased() {
		return electFilingIsBased;
	}
	public void setElectFilingIsBased(String electFilingIsBased) {
		this.electFilingIsBased = electFilingIsBased;
	}
	public String getElecBuildingMainNum() {
		return elecBuildingMainNum;
	}
	public void setElecBuildingMainNum(String elecBuildingMainNum) {
		this.elecBuildingMainNum = elecBuildingMainNum;
	}
	public String getElecBuildingSubNum() {
		return elecBuildingSubNum;
	}
	public void setElecBuildingSubNum(String elecBuildingSubNum) {
		this.elecBuildingSubNum = elecBuildingSubNum;
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
	public void setHomePhone(String homePhone) {
		this.homePhone = homePhone;
	}
	public String getIsDeleted() {
		return isDeleted;
	}
	public void setIsDeleted(String isDeleted) {
		this.isDeleted = isDeleted;
	}

}
