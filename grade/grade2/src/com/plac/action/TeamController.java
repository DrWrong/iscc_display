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
import com.plac.post.model.AjaxResult;
import com.plac.service.TeamSvc;

/**
 * @author wxy
 * @version 2014-6-17 下午5:14:11
 */
@Controller
public class TeamController {
	
	@Autowired
	private TeamSvc teamSvc;
	
	@RequestMapping("/manager/team_list")
	public String team_list(ModelMap mm){
		List<Team> ls = teamSvc.list();
		mm.addAttribute("teams", ls);
		return "team/list";
	}
	
	@RequestMapping("/manager/team_save")
	public String team_save(ModelMap mm,Team team){
		teamSvc.add(team);
		AjaxResult result = new AjaxResult("200","操作成功！");
		mm.addAttribute("result",JSONObject.toJSONString(result));
		return "ajax";
	}
	
	@RequestMapping("/manager/team_add")
	public String team_add(){
		return "team/edit";
	}
	
	@RequestMapping("/manager/team_del")
	public String team_del(ModelMap mm,Integer id){
		teamSvc.del(id);
		AjaxResult result = new AjaxResult("200","操作成功！");
		mm.addAttribute("result",JSONObject.toJSONString(result));
		return "ajax";
	}
	
	
	@RequestMapping("/manager/team_edit")
	public String team_edit(ModelMap mm,Integer id){
		Team team =teamSvc.get(id);
		mm.addAttribute("team",team);
		return "team/edit";
	}
	
}
