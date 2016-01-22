package com.controller.controller;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.controller.command.BoardCommand;
import com.controller.util.MyUtil;
import com.service.frame.Biz;
import com.service.vo.Board;

@Controller
public class BoardController {
	@Resource(name="boardbiz")
	Biz biz;
	String t_title;
	
	
	//게시물 리스트 뿌려주기
	@RequestMapping("/boardlist.do")
	public ModelAndView list()
	{
		ModelAndView mv = new ModelAndView("board/boardlist");
		ArrayList<Object> list = null;
		try {
			list = biz.get();
						
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("biz.get을 실행할 수 없습니다.");
		}
		mv.addObject("plist",list);
		mv.addObject("center","board/boardlist");
				
		return mv;	
	}
	
	
	//게시물 리스트 뿌려주기
	@RequestMapping("/mboardlist.do")
	public ModelAndView mlist()
	{
		ModelAndView mv = new ModelAndView("m/board/boardlist");
		ArrayList<Object> list = null;
		try {
			list = biz.get();
						
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("biz.get을 실행할 수 없습니다.");
		}
		mv.addObject("plist",list);
		mv.addObject("center","board/boardlist");
				
		return mv;	
	}
	

	@ResponseBody
	@RequestMapping("/boardjson.do")
	public ResponseEntity<String> getboardajax(){
		//jason을 사용하기 위한 리턴데이터, jason은 원래 스트링 형태
		
		System.out.println("json");
		ResponseEntity<String> returnData = null;
		 
		//DB에서 받아온다
		ArrayList<Object> list =null;
		try {
			list = biz.get();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("ajax 실패");
		}
		
		//List를 json으로 변환한다,
		JSONArray ja = new JSONArray();
		for(Object obj:list)
		{
			Board board = (Board)obj;
			JSONObject jo = new JSONObject(); //자바객체를 json객체로 바꿔서
			jo.put("seq", board.getSeq());
			jo.put("title", board.getTitle());
			jo.put("writer", board.getWriter());
			jo.put("regdate",board.getRegdate());
			ja.add(jo);
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
	

	
	//게시글 등록
	@RequestMapping("/boardregister.do")
	public String register(BoardCommand bc, String title_color, String title_bold) throws Exception{
		ModelAndView mv = new ModelAndView("board/registerresult");
		
		
	
		//제목컬러 / 제목 / 제목굵기
		t_title = title_color +"/"+title_bold+"/"+bc.getTitle();

		
		MultipartFile file = bc.getPhoto();
		Board board = null;
		
			//사진 파일이 없을 경우 
		if(file == null || file.getOriginalFilename().equals(""))
		{
			
			//VO 객체를 만들어줌
			board = new Board(
					t_title,
					bc.getWriter(),
					bc.getContents(),
					" ",
					bc.getRegdate());
			
		}
		else //사진파일이 있을경우
		{	
			board = new Board(
					t_title,
					bc.getWriter(),
					bc.getContents(),
					bc.getPhoto().getOriginalFilename(),
					bc.getRegdate());
			
			//경로저장
			String dir = "C:\\TEST\\ABCM\\web\\board\\img\\";
			MyUtil.saveFile(file,dir);
		
		}
		
		//board 객체를 등록 해 준다
		
		try {
			biz.register(board);
			//입력한 값(jsp에서 넘긴 값)을 보여준다.
			System.out.println("등록값"+bc.toString());
			
			mv.addObject("registermsg","정상등록");
			//navi넣어야함
		} catch (Exception e) {
			mv.addObject("registermsg","등록실패");
			System.out.println("등록실패"+bc.toString());
			e.printStackTrace();
		}		
		
		mv.addObject("center","board/registerresult");
		return "redirect:/boardlist.do";					
		
	}
	
	
	
	@RequestMapping("/boarddetail.do")
	public ModelAndView detail(int seq)
	{
		ModelAndView mv = new ModelAndView("board/boarddetail");
		Board b = null;
		
		//textarea 엔터 바꿔주기
		/*추가할것!!*/
		String text;		
		
			try {
				b = (Board)biz.get(seq);
				//상세페이지 조회 값 
				/*추가할것!!*/
				text = b.getContents().replace("\r\n", "<br>");				
				b.setContents(text);
				/*추가할것!!*/
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println(seq);
				System.out.println("조회할 수 없습니다");
			}
			
			//boarddetail에서 조회할때 bdetail을 이용한다.
			mv.addObject("bdetail",b);
			mv.addObject("center","board/boarddetail");
			return mv;
		
	}
	
	
	
	@RequestMapping("/mboarddetail.do")
	public ModelAndView mdetail(int seq)
	{
		ModelAndView mv = new ModelAndView("m/board/boarddetail");
		
		
		
		Board b = null;
		
		//textarea 엔터 바꿔주기
		/*추가할것!!*/
		String text;		
		
			try {
				b = (Board)biz.get(seq);
				//상세페이지 조회 값 
				/*추가할것!!*/
				text = b.getContents().replace("\r\n", "<br>");				
				b.setContents(text);
				/*추가할것!!*/
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println(seq);
				System.out.println("조회할 수 없습니다");
			}
			
			//boarddetail에서 조회할때 bdetail을 이용한다.
			mv.addObject("bdetail",b);
			mv.addObject("center","board/boarddetail");
			return mv;
		
	}
	

	
	
	
	@RequestMapping("/boardupdate1.do")
	public ModelAndView update1(int seq)
	{
		ModelAndView mv = new ModelAndView("board/boardupdate");
		Board b = null;
		
			try {
				b = (Board)biz.get(seq);
				//상세페이지 조회 값 
				//System.out.println(b.toString());
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println(seq);
				System.out.println("조회할 수 없습니다");
			}
			
			//boarddetail에서 조회할때 bdetail을 이용한다.
			mv.addObject("bdetail",b);
			mv.addObject("center","board/boardupdate");
			return mv;
	}
	
	
	@RequestMapping("/boardupdate_impl.do")
	public String boardupdate(BoardCommand bc,int seq,String title_color, String title_bold, String photo_before) throws Exception{
		
		ModelAndView mv = new ModelAndView("main");
		
		
		
		
		 
		System.out.println("바뀌기전 사지파일" + photo_before);
		System.out.println("바뀌기전 새깔" + title_color);
		System.out.println("좀..ㅋ" + bc.getPhoto().getOriginalFilename());
		
		
		
		t_title = title_color +"/"+title_bold+"/"+bc.getTitle();		
				
		MultipartFile file = bc.getPhoto();
		Board board = null;	
		if(file==null || file.getOriginalFilename().equals("") || file.getOriginalFilename().equals("org.springframework.web.multipart.commons.CommonsMultipartFile@71264ac5")){//null이면 사진수정을 안한다는 예기
			board = new Board(
						seq,
						t_title,
						bc.getWriter(), 
						bc.getContents(), 
						photo_before, 
						bc.getRegdate()
						);
		
		}else{			
			System.out.println("이미지가 널이 아닙니당");
			String dir = "C:\\TEST\\ABCM\\web\\board\\img\\";
			MyUtil.saveFile(file,dir);
			System.out.println("파일저장완료");
			board = new Board(
					seq,
					t_title,
					bc.getWriter(), 
					bc.getContents(), 
					bc.getPhoto().getOriginalFilename(), 
					bc.getRegdate()
					);
		
		}
		
		try {
			biz.modify(board);			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		mv.addObject("center","board/boardlist");		
		return "redirect:/boardlist.do";
	}
	
	
	
	@RequestMapping("/boarddelete.do")
	public String remove(int seq)
	{
		try{
		biz.remove(seq);
		}catch(Exception e){
			System.out.println("삭제실패");
		}
		return "redirect:/boardlist.do";
		
	}
	

	
}
