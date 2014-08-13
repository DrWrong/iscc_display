/**
 * 
 */
package com.plac.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.fastjson.JSONObject;
import com.plac.model.Team;
import com.plac.model.User;
import com.plac.post.model.AjaxResult;
import com.plac.service.TeamSvc;
import com.plac.service.UserSvc;
import com.plac.util.MD5Util;

/**
 * @author wxy
 * @version 2014-6-27 下午5:12:56
 */
@Controller
@RequestMapping("/manager")
public class UserController {
	
	@Autowired
	private UserSvc userSvc;
	@Autowired
	private TeamSvc teamSvc;
	
	
	@RequestMapping("/user_list")
	public String user_list(ModelMap mm){
		List<User> ls = userSvc.list();
		mm.addAttribute("users", ls);
		return "user/list";
	}
	
	@RequestMapping("/user_add")
	public String user_add(ModelMap mm){
		List<Team> ls = teamSvc.list();
		mm.addAttribute("teams", ls);
		return "user/edit";
	}
	
	@RequestMapping("/user_del")
	public String user_del(Integer id,ModelMap mm){
		userSvc.del(id);
		AjaxResult result = new AjaxResult("200","操作成功！");
		mm.addAttribute("result", JSONObject.toJSON(result));
		return "ajax";
	}
	
	@RequestMapping("/user_save")
	public String user_save(User u,ModelMap mm){
//		u.setPassword(MD5Util.md5(u.getPassword()));
		userSvc.add(u);
		AjaxResult result = new AjaxResult("200", "操作成功");
		mm.addAttribute("result", JSONObject.toJSONString(result));
		return "ajax";
	}
	
	@RequestMapping("/user_edit")
	public String user_edit(Integer id,ModelMap mm){
		User u = userSvc.getById(id);
		List<Team> ls = teamSvc.list();
		mm.addAttribute("user",u);
		mm.addAttribute("teams", ls);
		return "user/edit";
	}
}
