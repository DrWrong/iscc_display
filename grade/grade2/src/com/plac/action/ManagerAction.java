/**
 * 
 */
package com.plac.action;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.plac.model.Manager;
import com.plac.service.ManagerSvc;

/**
 * @author wxy
 * @version 2014-6-3 下午4:22:40
 */

@Controller
@RequestMapping("/manager")
public class ManagerAction {
	
	@Autowired
	private ManagerSvc managerSvc;
	
	@RequestMapping("/login")
	public String login(Manager m,HttpSession session){
		if(m.getUsername()==null||"".equalsIgnoreCase(m.getUsername()))
			return "manager/login";
		if(managerSvc.login(m)){
			session.setAttribute("admin", m.getUsername());
			return "redirect:/manager/index.html";
		}
		if(session.getAttribute("admin")!=null)
			return "redirect:/manager/index.html";
		return "manager/login";
	}
	
	@RequestMapping("/index")
	public String index(Manager m,HttpSession session){
		return "manager/index";
	}
}
