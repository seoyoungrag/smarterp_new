package kr.co.dwebss.smarterp.defaultCode.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;
import kr.co.dwebss.smarterp.defaultCode.service.CompanyVO;
import kr.co.dwebss.smarterp.defaultCode.service.DefaultCodeService;
import kr.co.dwebss.smarterp.defaultCode.service.WorkplaceVO;

@Service("defaultCodeService")
public class DefaultCodeServiceImpl extends EgovAbstractServiceImpl implements DefaultCodeService {

	private static final Logger LOGGER = LoggerFactory.getLogger(DefaultCodeServiceImpl.class);

	@Resource(name="defaultCodeMapper")
	private DefaultCodeMapper defaultCodeMapper;

	@Override
	public void addCompanyManage(CompanyVO companyVO) {
		defaultCodeMapper.insertCompany(companyVO);
	}
	
	@Override
	public List<CompanyVO> selectCompanyList(CompanyVO companyVO) {
		return defaultCodeMapper.selectCompanyList(companyVO);
	}

	@Override
	public void updateCompanyManage(CompanyVO companyVO) {
		defaultCodeMapper.updateCompany(companyVO);
	}

	@Override
	public void deleteCompanyManage(CompanyVO companyVO) {
		defaultCodeMapper.deleteCompanyManage(companyVO);
		
	}

	@Override
	public void addWorkplaceManage(WorkplaceVO workplaceVO) {
		defaultCodeMapper.insertWorkspace(workplaceVO);
		
	}

	@Override
	public List<WorkplaceVO> selectWorkplaceList(WorkplaceVO workplaceVO) {
		return defaultCodeMapper.selectWorkspaceList(workplaceVO);
	}

	@Override
	public void updateWorkplaceManage(WorkplaceVO workplaceVO) {
		defaultCodeMapper.updateWorkspace(workplaceVO);
	}

	@Override
	public void deleteWorkplaceManage(WorkplaceVO workplaceVO) {
		defaultCodeMapper.deleteWorkspaceManage(workplaceVO);
	}

}
