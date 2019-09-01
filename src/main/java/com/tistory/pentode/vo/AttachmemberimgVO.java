package com.tistory.pentode.vo;

import java.util.Date;

public class AttachmemberimgVO {
	private String memberid;
	private String fullname;
	private Date regdate;
	
	public String getMemberid() {
		return memberid;
	}
	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	
	@Override
	public String toString() {
		return "AttachmemberimgVO [memberid=" + memberid + ", fullname=" + fullname + ", regdate=" + regdate + "]";
	}
}
