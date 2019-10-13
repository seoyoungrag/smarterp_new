package kr.co.dwebss.smarterp.defaultCode.service;

import java.util.List;

public interface DefaultCodeService {

	void addCompanyManage(CompanyVO companyVO);

	public List<CompanyVO> selectCompanyList(CompanyVO companyVO);

	void updateCompanyManage(CompanyVO companyVO);

	void deleteCompanyManage(CompanyVO companyVO);

	void addWorkplaceManage(WorkplaceVO workplaceVO);

	public List<WorkplaceVO> selectWorkplaceList(WorkplaceVO workplaceVO);

	void updateWorkplaceManage(WorkplaceVO workplaceVO);

	void deleteWorkplaceManage(WorkplaceVO workplaceVO);
}
