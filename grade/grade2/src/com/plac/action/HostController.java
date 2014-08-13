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
import com.plac.model.Flag;
import com.plac.model.Hosts;
import com.plac.post.model.AjaxResult;
import com.plac.service.FlagSvc;
import com.plac.service.HostSvc;

/**
 * @author wxy
 * @version 2014-7-29 上午11:07:39
 */
@Controller
@RequestMapping("/manager")
public class HostController {
	
	@Autowired
	private HostSvc hostSvc;
	@Autowired
	private FlagSvc flagSvc;
	
	@RequestMapping("/host_save")
	public String host_save(Hosts host,ModelMap mm){
		hostSvc.save(host);
		AjaxResult result = new AjaxResult("200", "操作成功！");
		mm.addAttribute("result", JSONObject.toJSON(result));
		return "ajax";
	}
	
	@RequestMapping("/host_add")
	public String host_add(ModelMap mm){
		List<Flag> flags = flagSvc.findAll();
		mm.addAttribute("flags", flags);
		return "hosts/edit";
	}
	
	@RequestMapping("/host_del")
	public String host_del(Integer id,ModelMap mm){
		hostSvc.del(id);
		AjaxResult result = new AjaxResult("200", "操作成功！");
		mm.addAttribute("result", JSONObject.toJSON(result));
		return "ajax";
	}
	
	@RequestMapping("/host_edit")
	public String host_edit(Integer id,ModelMap mm){
		Hosts host = hostSvc.getById(id);
		List<Flag> flags = flagSvc.findAll();
		mm.addAttribute("flags", flags);
		mm.addAttribute("host", host);
		return "hosts/edit";
	}
	
	@RequestMapping("/host_list")
	public String host_list(ModelMap mm){
		List<Hosts> ls = hostSvc.findAll();
		mm.addAttribute("hosts", ls);
		return "hosts/list";
	}
}
