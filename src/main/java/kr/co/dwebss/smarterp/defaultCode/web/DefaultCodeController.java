/*
 * Copyright 2008-2009 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package kr.co.dwebss.smarterp.defaultCode.web;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;
import org.springframework.web.util.UriComponents;
import org.springmodules.validation.commons.DefaultBeanValidator;

import egovframework.rte.fdl.property.EgovPropertyService;
import kr.co.dwebss.smarterp.defaultCode.service.CompanyVO;
import kr.co.dwebss.smarterp.defaultCode.service.DefaultCodeService;
import kr.co.dwebss.smarterp.defaultCode.service.WorkplaceVO;

@Controller
public class DefaultCodeController {

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}

	@Resource(name = "propertiesService")
	protected EgovPropertyService propertiesService;

	@Resource(name = "beanValidator")
	protected DefaultBeanValidator beanValidator;

	@Autowired
	private DefaultCodeService defaultCodeService;
	
	@RequestMapping(value = "/companyManage.do")
	public String companyManage(@ModelAttribute("companyVO") CompanyVO companyVO, ModelMap model) throws Exception {
		List<CompanyVO> companyList = defaultCodeService.selectCompanyList(companyVO);
		model.addAttribute("companyList", companyList);
		return "defaultCode/companyManage";
	}
	/*
	@RequestMapping(value = {"/dc/cm/list.do"})
	public String selectSampleList(HttpServletRequest request, @ModelAttribute("companyVO") CompanyVO companyVO, ModelMap model) throws Exception {
		List<CompanyVO> companyList = defaultCodeService.selectCompanyList(companyVO);
		model.addAttribute("companyList", companyList);
		return "defaultCode/companyManage/list";
	}
	 */
	/*
	@RequestMapping(value = "/dc/cm/cru.do") //create&read&update
	public String companyRegist(@ModelAttribute("companyVO") CompanyVO companyVO, HttpServletRequest request,  BindingResult result,
			SessionStatus status, Model model) throws Exception {
		if(companyVO.getCompanyId()!=0) {
			List<CompanyVO> companyList = defaultCodeService.selectCompanyList(companyVO);
			model.addAttribute("company", companyList.get(0));
		}
		model.addAttribute("isEdit", true);
		return "defaultCode/companyManage/cru";
	}
	
	*/
	/*
	@RequestMapping(value = "/dc/cm/cuProc.do") //create&&update procedure
	public String addCompanyManage(HttpServletRequest request,  @ModelAttribute("companyVO") CompanyVO companyVO, BindingResult result,
			SessionStatus status, Model model) throws Exception {
		if(companyVO.getCompanyId()!=0) {
			defaultCodeService.updateCompanyManage(companyVO);
		}else {
			defaultCodeService.addCompanyManage(companyVO);
		}
		UriComponents uri = ServletUriComponentsBuilder
                .fromServletMapping(request)
                .fromPath("/dc/cm/list.do")
                .build();
		return "redirect:"+uri.toUriString();
	}
	

	@RequestMapping(value = "/dc/cm/dProc.do") //delete procedure
	public String deleteCompanyManage(HttpServletRequest request, @ModelAttribute("companyVO") CompanyVO companyVO, BindingResult result,
			SessionStatus status, Model model) throws Exception {
			companyVO.setIsDeleted("1");
			defaultCodeService.deleteCompanyManage(companyVO);

			UriComponents uri = ServletUriComponentsBuilder
	                .fromServletMapping(request)
	                .fromPath("/dc/cm/list.do")
	                .build();
			return "redirect:"+uri.toUriString();
	}
	*/
	@RequestMapping(value = "/dc/cm/dProcTab.do") //delete procedure
	public String deleteCompanyManageTab(HttpServletRequest request, @ModelAttribute("companyVO") CompanyVO companyVO, BindingResult result,
			SessionStatus status, Model model) throws Exception {
			companyVO.setIsDeleted("1");
			defaultCodeService.deleteCompanyManage(companyVO);
			companyVO = new CompanyVO();
			List<CompanyVO> companyList = defaultCodeService.selectCompanyList(companyVO);
			model.addAttribute("companyList", companyList);
			return "defaultCode/companyManage/listDetail";
	}

	@RequestMapping(value = "/dc/cm/cuProcTab.do") //create&&update procedure
	public String addCompanyManageTab(HttpServletRequest request,  @ModelAttribute("companyVO") CompanyVO companyVO, BindingResult result,
			SessionStatus status, Model model) throws Exception {
		if(companyVO.getCompanyId()!=0) {
			defaultCodeService.updateCompanyManage(companyVO);
		}else {
			defaultCodeService.addCompanyManage(companyVO);
		}
		companyVO = new CompanyVO();
		List<CompanyVO> companyList = defaultCodeService.selectCompanyList(companyVO);
		model.addAttribute("companyList", companyList);
		return "defaultCode/companyManage/listDetail";
	}

	@RequestMapping(value = "/dc/cm/cruTab.do") //create&read&update
	public String companyRegistTab(@ModelAttribute("companyVO") CompanyVO companyVO, HttpServletRequest request,  BindingResult result,
			SessionStatus status, Model model) throws Exception {
		if(companyVO.getCompanyId()!=0) {
			List<CompanyVO> companyList = defaultCodeService.selectCompanyList(companyVO);
			model.addAttribute("company", companyList.get(0));
		}
		model.addAttribute("isEdit", true);
		return "defaultCode/companyManage/cruDetail";
	}

	/*사업장관리 시작*/
	@RequestMapping(value = "/workplaceManage.do")
	public String workplaceManage(@ModelAttribute("workplaceVO") WorkplaceVO workplaceVO, ModelMap model) throws Exception {
		List<WorkplaceVO> workplaceList = defaultCodeService.selectWorkplaceList(workplaceVO);
		model.addAttribute("workplaceList", workplaceList);
		return "defaultCode/workplaceManage";
	}


	@RequestMapping(value = "/dc/wm/dProcTab.do") //delete procedure
	public String deleteWorkspaceManageTab(HttpServletRequest request, @ModelAttribute("workplaceVO") WorkplaceVO workplaceVO, BindingResult result,
			SessionStatus status, Model model) throws Exception {
			workplaceVO.setIsDeleted("1");
			defaultCodeService.deleteWorkplaceManage(workplaceVO);
			workplaceVO = new WorkplaceVO();
			List<WorkplaceVO> workplaceList = defaultCodeService.selectWorkplaceList(workplaceVO);
			model.addAttribute("workplaceList", workplaceList);
			return "defaultCode/workplaceManage/listDetail";
	}

	@RequestMapping(value = "/dc/wm/cuProcTab.do") //create&&update procedure
	public String addWorkspaceManageTab(HttpServletRequest request,  @ModelAttribute("workplaceVO") WorkplaceVO workplaceVO, BindingResult result,
			SessionStatus status, Model model) throws Exception {
		if(workplaceVO.getWorkplaceId()!=0) {
			defaultCodeService.updateWorkplaceManage(workplaceVO);
		}else {
			defaultCodeService.addWorkplaceManage(workplaceVO);
		}
		workplaceVO = new WorkplaceVO();
		List<WorkplaceVO> workplaceList = defaultCodeService.selectWorkplaceList(workplaceVO);
		model.addAttribute("workplaceList", workplaceList);
		return "defaultCode/workplaceManage/listDetail";
	}

	@RequestMapping(value = "/dc/wm/cruTab.do") //create&read&update
	public String workspaceRegistTab(@ModelAttribute("workplaceVO") WorkplaceVO workplaceVO, HttpServletRequest request,  BindingResult result,
			SessionStatus status, Model model) throws Exception {
		if(workplaceVO.getWorkplaceId()!=0) {
			List<WorkplaceVO> workplaceList = defaultCodeService.selectWorkplaceList(workplaceVO);
			model.addAttribute("workplace", workplaceList.get(0));
		}
		model.addAttribute("isEdit", true);
		return "defaultCode/workplaceManage/cruDetail";
	}
}
