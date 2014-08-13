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
import com.plac.post.model.AjaxResult;
import com.plac.service.FlagSvc;

/**
 * @author wxy
 * @version 2014-7-30 上午11:06:02
 */
@Controller
@RequestMapping("/manager")
public class FlagController {
	
	@Autowired
	private FlagSvc flagSvc;
	
	@RequestMapping("/flag_add")
	public String flag_add(){
		return "flag/edit";
	}
	
	@RequestMapping("/flag_save")
	public String flag_save(Flag flag,ModelMap mm){
		flagSvc.save(flag);
		AjaxResult result = new AjaxResult("200", "操作成功!");
		mm.addAttribute("result",JSONObject.toJSON(result) );
		return "ajax";
	}
	
	@RequestMapping("/flag_del")
	public String flag_del(Integer id,ModelMap mm){
		flagSvc.delById(id);
		AjaxResult result = new AjaxResult("200", "操作成功!");
		mm.addAttribute("result",JSONObject.toJSON(result) );
		return "ajax";
	}
	
	@RequestMapping("/flag_edit")
	public String flag_edit(Integer id,ModelMap mm){
		Flag flag=flagSvc.getById(id);
		mm.addAttribute("flag", flag);
		return "flag/edit";
	}
	
	@RequestMapping("/flag_list")
	public String flag_list(ModelMap mm){
		List<Flag> flags = flagSvc.findAll();
		mm.addAttribute("flags", flags);
		return "flag/list";
	}
}
