package com.tistory.pentode.vo;


public class MukkitVO {
	private String memberid;
	private Integer storeid;
	private String visitcheck;
	private String storename;
	private String img;
	
	
	public String getMemberid() {
		return memberid;
	}
	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}
	public Integer getStoreid() {
		return storeid;
	}
	public void setStoreid(Integer storeid) {
		this.storeid = storeid;
	}
	public String getVisitcheck() {
		return visitcheck;
	}
	public void setVisitcheck(String visitcheck) {
		this.visitcheck = visitcheck;
	}
	public String getStorename() {
		return storename;
	}
	public void setStorename(String storename) {
		this.storename = storename;
	}
	
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	@Override
	public String toString() {
		return "MukkitVO [memberid=" + memberid + ", storeid=" + storeid + ", visitcheck=" + visitcheck + ", storename=\" + storename + \"]";
	}

}
