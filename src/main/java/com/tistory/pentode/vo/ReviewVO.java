package com.tistory.pentode.vo;

import java.util.Date;

public class ReviewVO {
	private Integer reviewid;		// 게시글 번호
	private String memberid;		// user아이디
	private String reviewlike;		// 
	private String reportreason;	// 내용
	private String reportdate;		// 작성일자
	private String title;			// 제목
	private Date regdate;			// 
	private Float reviewtaste; 	// 맛 평가

	public Integer getReviewid() {
		return reviewid;
	}

	public void setReviewid(Integer reviewid) {
		this.reviewid = reviewid;
	}

	public String getMemberid() {
		return memberid;
	}

	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}

	public String getReviewlike() {
		return reviewlike;
	}

	public void setReviewlike(String reviewlike) {
		this.reviewlike = reviewlike;
	}

	public String getReportreason() {
		return reportreason;
	}

	public void setReportreason(String reportreason) {
		this.reportreason = reportreason;
	}

	public String getReportdate() {
		return reportdate;
	}

	public void setReportdate(String reportdate) {
		this.reportdate = reportdate;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	
	public Float getReviewtaste() {
		return reviewtaste;
	}
	
	public void setReviewtaste(Float reviewtaste) {
		this.reviewtaste = reviewtaste;
	}

	@Override
	public String toString() {
		return "ReviewVO [reviewid=" + reviewid + ", memberid=" + memberid + ", reviewlike=" + reviewlike
				+ ", reportreason=" + reportreason + ", reportdate=" + reportdate + ",title=" + title + ",regdate="
				+ regdate +  ",reviewtaste=" + reviewtaste + "]";
	}

}
