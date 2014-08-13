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
import com.plac.model.Message;
import com.plac.post.model.AjaxResult;
import com.plac.service.MessageSvc;

/**
 * @author wxy
 * @version 2014-8-3 下午2:30:04
 */
@Controller
@RequestMapping("/manager")
public class MessageController {
	
	@Autowired
	private MessageSvc mSvc;
	
	@RequestMapping("/m_add")
	public String message_add(){
		return "message/edit";
	}
	
	@RequestMapping("/m_save")
	public String m_save(Message m,ModelMap mm){
		mSvc.save(m);
		AjaxResult result = new AjaxResult("200", "操作成功!");
		mm.addAttribute("result", JSONObject.toJSON(result));
		return "ajax";
	}
	
	@RequestMapping("/m_del")
	public String m_del(Integer id,ModelMap mm){
		mSvc.delById(id);
		AjaxResult result = new AjaxResult("200", "操作成功!");
		mm.addAttribute("result", JSONObject.toJSON(result));
		return "ajax";
	}
	
	@RequestMapping("/m_list")
	public String m_list(ModelMap mm){
		List<Message> ls = mSvc.findAll();
		mm.addAttribute("messages", ls);
		return "message/list";
	}
}
