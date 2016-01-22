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
	
	
	//�Խù� ����Ʈ �ѷ��ֱ�
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
			System.out.println("biz.get�� ������ �� �����ϴ�.");
		}
		mv.addObject("plist",list);
		mv.addObject("center","board/boardlist");
				
		return mv;	
	}
	
	
	//�Խù� ����Ʈ �ѷ��ֱ�
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
			System.out.println("biz.get�� ������ �� �����ϴ�.");
		}
		mv.addObject("plist",list);
		mv.addObject("center","board/boardlist");
				
		return mv;	
	}
	

	@ResponseBody
	@RequestMapping("/boardjson.do")
	public ResponseEntity<String> getboardajax(){
		//jason�� ����ϱ� ���� ���ϵ�����, jason�� ���� ��Ʈ�� ����
		
		System.out.println("json");
		ResponseEntity<String> returnData = null;
		 
		//DB���� �޾ƿ´�
		ArrayList<Object> list =null;
		try {
			list = biz.get();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("ajax ����");
		}
		
		//List�� json���� ��ȯ�Ѵ�,
		JSONArray ja = new JSONArray();
		for(Object obj:list)
		{
			Board board = (Board)obj;
			JSONObject jo = new JSONObject(); //�ڹٰ�ü�� json��ü�� �ٲ㼭
			jo.put("seq", board.getSeq());
			jo.put("title", board.getTitle());
			jo.put("writer", board.getWriter());
			jo.put("regdate",board.getRegdate());
			ja.add(jo);
		}
		
		//����
		HttpHeaders header = new HttpHeaders();
		header.add("Content-type","application/json;charset=EUC-KR");
		
		returnData = new ResponseEntity<String>(
				ja.toJSONString(),
				header,
				HttpStatus.CREATED
		);
		
		return returnData;
		
	}
	

	
	//�Խñ� ���
	@RequestMapping("/boardregister.do")
	public String register(BoardCommand bc, String title_color, String title_bold) throws Exception{
		ModelAndView mv = new ModelAndView("board/registerresult");
		
		
	
		//�����÷� / ���� / ���񱽱�
		t_title = title_color +"/"+title_bold+"/"+bc.getTitle();

		
		MultipartFile file = bc.getPhoto();
		Board board = null;
		
			//���� ������ ���� ��� 
		if(file == null || file.getOriginalFilename().equals(""))
		{
			
			//VO ��ü�� �������
			board = new Board(
					t_title,
					bc.getWriter(),
					bc.getContents(),
					" ",
					bc.getRegdate());
			
		}
		else //���������� �������
		{	
			board = new Board(
					t_title,
					bc.getWriter(),
					bc.getContents(),
					bc.getPhoto().getOriginalFilename(),
					bc.getRegdate());
			
			//�������
			String dir = "C:\\TEST\\ABCM\\web\\board\\img\\";
			MyUtil.saveFile(file,dir);
		
		}
		
		//board ��ü�� ��� �� �ش�
		
		try {
			biz.register(board);
			//�Է��� ��(jsp���� �ѱ� ��)�� �����ش�.
			System.out.println("��ϰ�"+bc.toString());
			
			mv.addObject("registermsg","������");
			//navi�־����
		} catch (Exception e) {
			mv.addObject("registermsg","��Ͻ���");
			System.out.println("��Ͻ���"+bc.toString());
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
		
		//textarea ���� �ٲ��ֱ�
		/*�߰��Ұ�!!*/
		String text;		
		
			try {
				b = (Board)biz.get(seq);
				//�������� ��ȸ �� 
				/*�߰��Ұ�!!*/
				text = b.getContents().replace("\r\n", "<br>");				
				b.setContents(text);
				/*�߰��Ұ�!!*/
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println(seq);
				System.out.println("��ȸ�� �� �����ϴ�");
			}
			
			//boarddetail���� ��ȸ�Ҷ� bdetail�� �̿��Ѵ�.
			mv.addObject("bdetail",b);
			mv.addObject("center","board/boarddetail");
			return mv;
		
	}
	
	
	
	@RequestMapping("/mboarddetail.do")
	public ModelAndView mdetail(int seq)
	{
		ModelAndView mv = new ModelAndView("m/board/boarddetail");
		
		
		
		Board b = null;
		
		//textarea ���� �ٲ��ֱ�
		/*�߰��Ұ�!!*/
		String text;		
		
			try {
				b = (Board)biz.get(seq);
				//�������� ��ȸ �� 
				/*�߰��Ұ�!!*/
				text = b.getContents().replace("\r\n", "<br>");				
				b.setContents(text);
				/*�߰��Ұ�!!*/
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println(seq);
				System.out.println("��ȸ�� �� �����ϴ�");
			}
			
			//boarddetail���� ��ȸ�Ҷ� bdetail�� �̿��Ѵ�.
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
				//�������� ��ȸ �� 
				//System.out.println(b.toString());
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println(seq);
				System.out.println("��ȸ�� �� �����ϴ�");
			}
			
			//boarddetail���� ��ȸ�Ҷ� bdetail�� �̿��Ѵ�.
			mv.addObject("bdetail",b);
			mv.addObject("center","board/boardupdate");
			return mv;
	}
	
	
	@RequestMapping("/boardupdate_impl.do")
	public String boardupdate(BoardCommand bc,int seq,String title_color, String title_bold, String photo_before) throws Exception{
		
		ModelAndView mv = new ModelAndView("main");
		
		
		
		
		 
		System.out.println("�ٲ���� ��������" + photo_before);
		System.out.println("�ٲ���� ����" + title_color);
		System.out.println("��..��" + bc.getPhoto().getOriginalFilename());
		
		
		
		t_title = title_color +"/"+title_bold+"/"+bc.getTitle();		
				
		MultipartFile file = bc.getPhoto();
		Board board = null;	
		if(file==null || file.getOriginalFilename().equals("") || file.getOriginalFilename().equals("org.springframework.web.multipart.commons.CommonsMultipartFile@71264ac5")){//null�̸� ���������� ���Ѵٴ� ����
			board = new Board(
						seq,
						t_title,
						bc.getWriter(), 
						bc.getContents(), 
						photo_before, 
						bc.getRegdate()
						);
		
		}else{			
			System.out.println("�̹����� ���� �ƴմϴ�");
			String dir = "C:\\TEST\\ABCM\\web\\board\\img\\";
			MyUtil.saveFile(file,dir);
			System.out.println("��������Ϸ�");
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
			System.out.println("��������");
		}
		return "redirect:/boardlist.do";
		
	}
	

	
}
