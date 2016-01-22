package com.service.vo;

import java.util.Date;

public class Board {
	private int seq;
	private String title;
	private String writer;
	private String contents;
	private String photo;
	private String regdate;
	
	public Board() {
		super();
	}
	
	
	public Board(String title, String writer, String contents, String photo,
			String regdate) {
		super();
		this.title = title;
		this.writer = writer;
		this.contents = contents;
		this.photo = photo;
		this.regdate = regdate;
	}


	public Board(int seq, String title, String writer, String contents,
			String photo, String regdate) {
		super();
		this.seq = seq;
		this.title = title;
		this.writer = writer;
		this.contents = contents;
		this.photo = photo;
		this.regdate = regdate;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
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
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	@Override
	public String toString() {
		return "Board [seq=" + seq + ", title=" + title + ", writer=" + writer
				+ ", contents=" + contents + ", photo=" + photo + ", regdate="
				+ regdate + "]";
	}
	
	
}
