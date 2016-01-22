package com.controller.command;

import org.springframework.web.multipart.MultipartFile;

public class BoardCommand {
	private String title;
	private String writer;
	private String contents;
	MultipartFile photo;
	private String regdate;
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public MultipartFile getPhoto() {
		return photo;
	}
	public void setPhoto(MultipartFile photo) {
		this.photo = photo;
	}
	
	
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public BoardCommand(String title, String writer, String contents,
			MultipartFile photo, String regdate) {
		super();
		this.title = title;
		this.writer = writer;
		this.contents = contents;
		this.photo = photo;
		this.regdate = regdate;
	}
	public BoardCommand() {
		super();
	}
	
	@Override
	public String toString() {
		return "BoardCommand [title=" + title + ", writer=" + writer
				+ ", contents=" + contents + ", photo=" + photo + ", regdate="
				+ regdate + "]";
	}
	public int getSeq() {
		// TODO Auto-generated method stub
		return 0;
	}
	
	
}
