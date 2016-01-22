package com.controller.controller;


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLDecoder;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.controller.command.CustCommand;
import com.controller.util.Navi;
import com.service.frame.Biz;
import com.service.vo.Cust;

@Controller
public class CustControl {

	@Resource(name="custbiz")
	Biz biz;
	
	@RequestMapping("/custregister.do")
	public ModelAndView register(CustCommand cc){
		ModelAndView mv = new ModelAndView("main");
		Cust c = new Cust(cc.getId(), cc.getPwd(), cc.getName());

		try {
			biz.register(c);
			mv.addObject("registermsg","정상등록");

		} catch (Exception e) {
			mv.addObject("registermsg","등록실패");
			e.printStackTrace();
		}	
		mv.addObject("center","cust/registerresult");
		
		return mv;
	}
	
	@RequestMapping("/custlist.do")
	public ModelAndView list(){

		ModelAndView mv = new ModelAndView("main");
		ArrayList<Object> list = null; 
		
		try {
			list = biz.get();
			mv.addObject("clist", list);
			mv.addObject("navi",Navi.getNavi("cust/list"));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		mv.addObject("center","cust/custlist");
		
		//navi넣어야함

		return mv;
	}
	
	@ResponseBody	//단순텍스트를 보낼테니 html은 해석하지마라
	@RequestMapping("/getcust.do")
	public ResponseEntity<String> getcust() throws Exception{
	//실제 josn이라는 데이터의 원래 형태는 String이다.
		ResponseEntity<String> returnData = null;
		//DB에서 CUST 데이터를 가지고 온다.
		ArrayList<Object> list = null;
		list = biz.get();
		//LIST를 JSON데이터로 변환 - 스프링은 못한다. - 라이브러리로 한다.
		JSONArray ja = new JSONArray();
		for(Object obj:list){
			Cust cust = (Cust) obj;
			JSONObject jo = new JSONObject();	//자바객체를 JSON객체로 바꿔서
			jo.put("id", cust.getId());
			jo.put("pwd", cust.getPwd());
			jo.put("name", cust.getName());
			ja.add(jo);					//JSONArray에다가 넣는다.
		}
		
		//전송
		HttpHeaders header = new HttpHeaders();
		header.add("Content-type","application/json;charset=EUC-KR");
		
		returnData = new ResponseEntity<String>(
				ja.toJSONString(),
				header,
				HttpStatus.CREATED
		);
		
		
		return returnData;
	}
	@RequestMapping("/setcust.do")
	public void setcust(String id, String pwd, String name) throws Exception
	{
		name = URLDecoder.decode(name,"UTR-8");
		Cust cust= new Cust(id,pwd,name);
		System.out.println(id+""+name);
		biz.register(cust);
		
	}
	
	@ResponseBody
	@RequestMapping("/getnaver.do")
	//밖으로나갈댸 HttpServletResponse 필요 
	public void getnaver(HttpServletResponse rs) throws UnsupportedEncodingException, IOException{
		String urlstr="http://openapi.naver.com/search?key=b240cb1d940dd214c9cff1078e8c9974&query=notebook&display=5&start=1&target=shop&sort=sim";
		URL url = new URL(urlstr);
		BufferedReader br =  // urlstr URL부분을 싹다읽어서가져옴.
				new BufferedReader(new InputStreamReader(
				url.openStream(),"UTF-8"
				));
		StringBuffer sb = new StringBuffer();
		String temp = null;
		while(true){
			temp = br.readLine(); //br의첫번째읽음. 
			if(temp==null) break;
			sb.append(temp);
		}
		br.close();
		rs.setCharacterEncoding("EUC-KR");
		rs.setContentType("text/xml");
		rs.getWriter().write(sb.toString());
		
	}
	
	
	@ResponseBody
	@RequestMapping("/getweather.do")
	//밖으로나갈댸 HttpServletResponse 필요 
	public void getweather(HttpServletResponse rs) throws UnsupportedEncodingException, IOException{
		String urlstr="http://weather.yahooapis.com/forecastrss?p=KSXX0034&u=c";
		URL url = new URL(urlstr);
		BufferedReader br =  // urlstr URL부분을 싹다읽어서가져옴.
				new BufferedReader(new InputStreamReader(
				url.openStream(),"UTF-8"
				));
		StringBuffer sb = new StringBuffer();
		String temp = null;
		while(true){
			temp = br.readLine(); //br의첫번째읽음. 
			if(temp==null) break;
			sb.append(temp);
		}
		br.close();
		rs.setCharacterEncoding("EUC-KR");
		rs.setContentType("text/xml");
		rs.getWriter().write(sb.toString());
		
	}
	


	

	
}