package kr.co.dwebss.smarterp.defaultCode.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;
import kr.co.dwebss.smarterp.defaultCode.service.CompanyVO;
import kr.co.dwebss.smarterp.defaultCode.service.WorkplaceVO;

@Repository("defaultCodeMapper")
public class DefaultCodeMapper extends EgovAbstractMapper{

	void insertCompany(CompanyVO companyVO) {
		insert("defaultCodeMapper.insertCompany", companyVO);
	};

	public List<CompanyVO> selectCompanyList(CompanyVO companyVO) {
		return selectList("defaultCodeMapper.selectCompanyList", companyVO);
	}

	public void updateCompany(CompanyVO companyVO) {
		update("defaultCodeMapper.updateCompany", companyVO);
	}

	public void deleteCompanyManage(CompanyVO companyVO) {
		delete("defaultCodeMapper.deleteCompanyManage", companyVO);
	}

	public void insertWorkspace(WorkplaceVO workplaceVO) {
		insert("defaultCodeMapper.insertWorkplace", workplaceVO);
	}

	public List<WorkplaceVO> selectWorkspaceList(WorkplaceVO workplaceVO) {
		return selectList("defaultCodeMapper.selectWorkplaceList", workplaceVO);
	}

	public void updateWorkspace(WorkplaceVO workplaceVO) {
		update("defaultCodeMapper.updateWorkplace", workplaceVO);
	}

	public void deleteWorkspaceManage(WorkplaceVO workplaceVO) {
		delete("defaultCodeMapper.deleteWorkplaceManage", workplaceVO);
	};
}
