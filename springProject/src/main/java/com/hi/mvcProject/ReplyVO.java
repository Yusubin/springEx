package com.hi.mvcProject;

public class ReplyVO {
	
	//gettersetter 단축키 :ctrl+shift+s+r
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getBbsid() {
		return bbsid;
	}
	@Override
	public String toString() {
		return "ReplyVO [id=" + id + ", bbsid=" + bbsid + ", content=" + content + ", writer=" + writer + "]";
	}
	public void setBbsid(int bbsid) {
		this.bbsid = bbsid;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	private int id;
	private int bbsid;
	private String content;
	private String writer;
}
