/**
 * 
 */
package com.plac.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.plac.model.Hosts;
import com.plac.model.Message;
import com.plac.model.Team;
import com.plac.model.User;
import com.plac.post.model.HostsI;
import com.plac.post.model.MessageI;
import com.plac.post.model.TeamI;
import com.plac.post.model.WebResult;
import com.plac.service.FlagSvc;
import com.plac.service.HostSvc;
import com.plac.service.MessageSvc;
import com.plac.service.TeamSvc;
import com.plac.service.UserSvc;
import com.plac.util.MD5Util;

/**
 * @author wxy
 * @version 2014-8-3 上午10:03:12
 */
@Controller
public class HomeController {
	
	@Autowired
	private FlagSvc flagSvc;
	@Autowired
	private HostSvc hostSvc;
	@Autowired
	private TeamSvc teamSvc;
	@Autowired
	private UserSvc userSvc;
	@Autowired
	private MessageSvc mSvc;
	
	@RequestMapping("/sendflag")
	public String sendFlag(String md5,String group,String salt,HttpServletRequest request,ModelMap mm){
		String ip = request.getRemoteAddr();
		System.out.println(md5+"\t"+group+"\t"+salt+"\t"+ip);
		Hosts host = hostSvc.getByIp(ip);
		Team team = teamSvc.getBySign(group);
		if(team!=null){
			String sign = MD5Util.md5(String.valueOf(System.currentTimeMillis())).substring(3, 10);
			team.setSign(sign);
			teamSvc.update(team);
		}
		if(host==null||team==null){
			mm.addAttribute("result", "Flag is wrong!");
			return "ajax";
		}
		String flag = host.getFlag().getValue()+group;
		if(md5.equals(MD5Util.md5(flag))){
			host.setTeam(team);
			hostSvc.save(host);
		}
		mm.addAttribute("result", "Flag is right");
		return "ajax";
	}
	
	@RequestMapping("/api")
	public String index(ModelMap mm){
		List<HostsI> hl = new ArrayList<HostsI>(); 
		List<TeamI> tl = new ArrayList<TeamI>();
		List<MessageI> ml = new ArrayList<MessageI>();
		List<Hosts> hosts = hostSvc.findAll();
		List<Message> messages = mSvc.findAll();
		List<Team> teams = teamSvc.list();
		for(Hosts host:hosts){
			HostsI h = new HostsI(host);
			hl.add(h);
		}
		
		for(Team t:teams){
			TeamI ti = new TeamI(t);
			tl.add(ti);
		}
		
		for(Message m:messages){
			MessageI mi = new MessageI(m);
			ml.add(mi);
		}
		
		WebResult result = new WebResult(tl, hl, ml);
		mm.addAttribute("result", JSONObject.toJSONString(result,SerializerFeature.BrowserCompatible));
		return "ajax";
	}
	
	@RequestMapping("/index")
	public String index2(HttpServletRequest request,ModelMap mm){
		String tname = (String)request.getSession().getAttribute("team");
		if(tname!=null)
		{
			Team team = teamSvc.getByName(tname);
			if(team!=null)
				mm.addAttribute("sign", team.getSign());
		}
		return "home/index";
	}
	
	@RequestMapping("/login")
	public String login(String name,String password,HttpServletRequest request){
		User user = userSvc.login(name, password);
		if(user!=null)
		{	String tt = user.getTeam().getName();
			HttpSession session = request.getSession();
			session.setAttribute("team", tt);
			session.setAttribute("sign", user.getTeam().getSign());
		}
		return "redirect:index";
	}
	
	@RequestMapping("/ulogin")
	public String ulogin(){
		return "home/user";
	}
	
	@RequestMapping("/putflag")
	public String putFlag(String flag,HttpServletRequest request){
		HttpSession session = request.getSession();
		String teamname=(String)session.getAttribute("team");
		Hosts host = hostSvc.getByIp(teamname);
		Team team = teamSvc.getByName(teamname);
		if(teamname==null||host==null)
			return "redirect:ulogin";
		if(host.getFlag().getValue().equals(flag)){
			host.setTeam(team);
			hostSvc.change(host);
			return "redirect:index";
		}
		return "redirect:index";
	}
	
	@RequestMapping("/rank")
	public String rank(ModelMap mm){
		List<Team> teams = teamSvc.list();
		mm.addAttribute("teams",teams);
		return "home/rank";
	}
	
	@RequestMapping("/notice")
	public String notice(ModelMap mm){
		List<Message> ms = mSvc.findAll();
		mm.addAttribute("ms", ms);
		return "home/notice";
	}
}
