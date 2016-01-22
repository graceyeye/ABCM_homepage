package com.controller.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.controller.command.CustCommand;
import com.controller.util.Navi;
import com.service.frame.Biz;
import com.service.vo.Cust;

@Controller
public class Main {
	
	@Resource(name="custbiz")
	Biz biz;
	
	@RequestMapping("/main.do")
	public String main(){
		return "main";
	}
	
	@RequestMapping("/go.do")
	public ModelAndView go(String next){
		
		ModelAndView mv = new ModelAndView(next);
		mv.addObject("center", next);
		mv.addObject("navi", Navi.getNavi(next));
		
		return mv;
	}
	
	@RequestMapping("/join.do")
	public ModelAndView join(CustCommand cc){
		
		ModelAndView mv = new ModelAndView();
		
		try {
			biz.register(new Cust(cc.getId(),cc.getName(),cc.getPwd()));
			mv.addObject("joinmsg",
					cc.getId()+"님 정상 등록되었습니다.");
		} catch (Exception e) {
			e.printStackTrace();
			mv.addObject("joinmsg",
					cc.getId()+"님 등록 실패.");
		}
		mv.addObject("center","joinresult");
		mv.addObject("navi",Navi.getNavi("joinresult"));
		mv.setViewName("main");
		return mv;
		
	}
    //login.jsp에서 name의 id, pwd값 넘겨받음
	@RequestMapping("/login.do")
	public String login(HttpServletRequest request, String id, String pwd){
		
		String next = "main";
		Cust result = null;
		try {
			result = (Cust)biz.get(id);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(result != null && 
				(result.getPwd().equals(pwd))){
			HttpSession session = request.getSession();
			session.setAttribute("logincust", result);
			//request.setAttribute("navi", Navi.getNavi("loginresult"));
			request.setAttribute("center","loginresult");
		}else{
			request.setAttribute("center","loginfail");
		}
		return next;	
	}
	
	@RequestMapping("/logout.do")
	public String logout(HttpServletRequest request){
		String next = "main";
		HttpSession session = request.getSession();
		session.invalidate();
		return next;
	}
	
	
	
}
