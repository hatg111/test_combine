package com.tistory.pentode.vo;

import java.util.Date;

public class UserrankingVO {
	private String memberid;
	private String nickname;
	private String password;
	private String gender;
	private Date birthdate;
	private Date joindate;
	private String memberlv;
	private Integer memberscore;
	
	public String getMemberid() {
		return memberid;
	}
	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Date getBirthdate() {
		return birthdate;
	}
	public void setBirthdate(Date birthdate) {
		this.birthdate = birthdate;
	}
	public Date getJoindate() {
		return joindate;
	}
	public void setJoindate(Date joindate) {
		this.joindate = joindate;
	}
	public String getMemberlv() {
		return  memberlv;
	}
	public void setMemberlv(String memberlv) {
		this.memberlv =  memberlv;
	}
	public Integer getMemberscore() {
		return memberscore;
	}
	public void setMemberscore(Integer memberscore) {
		this.memberscore = memberscore;
	}

	
	
	@Override
	public String toString() {
		return "MemberVO [memberid=" + memberid + ", nickname=" + nickname + ", password=" + password + 
			 ", gender=" + gender + ", birthdate=" + birthdate + ", joindate=" + joindate + ", memberlv=" + memberlv + 
			 ", memberscore=" + memberscore + "]";
	}

}
