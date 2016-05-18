package com.jmr.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionServlet;

import ssh.struts1.ActionManager;
import app.j2ee.util.RequestUtil;

import com.jmr.entity.Student;
import com.jmr.service.IStudentService;

public class StudentAction extends AdminVerifyBaseAction{
	private IStudentService service;

	//重写
	public void setServlet(ActionServlet actionServlet){
		super.setServlet(actionServlet);
		service = (IStudentService) getCtx().getBean("studentService");//最新消息 
	}

	/**
	 * 查询
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public ActionForward find(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		return ActionManager.find(mapping, form, request, response, service, Student.class);
	}


	/**
	 * 跳转到新增
	 */	
	public ActionForward toAdd(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		return ActionManager.toAdd(mapping, form, request, response, Student.class);
	}

	/**
	 * 保存
	 */
	public ActionForward save(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionManager.save(mapping, form, request, response, basePath, service, Student.class);
		int pageNo = RequestUtil.getIntParameter(request, "pageNo", 1);
		int pageSize = RequestUtil.getIntParameter(request, "pageSize", 10);
		response.sendRedirect(basePath + "/student.do?act=find&marking=1&pageNo=" + pageNo + "&pageSize=" + pageSize);
		return null;
	}

	/**
	 * 转向修改
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward toModify(ActionMapping mapping,ActionForm form,
			HttpServletRequest request,HttpServletResponse response){
		return ActionManager.toModify(mapping, form, request, response, service);
	}


	/**
	 * 更新
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward update(ActionMapping mapping,ActionForm form,
			HttpServletRequest request,HttpServletResponse response) throws Exception{
	    ActionManager.update(mapping, form, request, response, basePath, service, Student.class);
		int pageNo = RequestUtil.getIntParameter(request, "pageNo", 1);
		int pageSize = RequestUtil.getIntParameter(request, "pageSize", 10);
		response.sendRedirect(basePath + "/student.do?act=find&marking=1&pageNo=" + pageNo + "&pageSize=" + pageSize);
		return null;
	}


	/**
	 * 删除
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public ActionForward del(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionManager.del(mapping, form, request, response, basePath, service);
		int pageNo = RequestUtil.getIntParameter(request, "pageNo", 1);
		int pageSize = RequestUtil.getIntParameter(request, "pageSize", 10);
		response.sendRedirect(basePath + "/student.do?act=find&marking=1&pageNo=" + pageNo + "&pageSize=" + pageSize);
		return null;
	}

}
 