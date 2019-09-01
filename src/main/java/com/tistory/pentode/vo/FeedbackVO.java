package com.tistory.pentode.vo;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class FeedbackVO {
	private Integer reviewid;
	private String memberid;
	private Integer storeid;
	private Integer taste;
	private Integer costef;
	private Integer service;
	private String title;
	private String review;
	private Date reviewdate;
	private Integer likenum;
	private String report;
	private String imgname;
	private String thumbimg;

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

	public Integer getStoreid() {
		return storeid;
	}

	public void setStoreid(Integer storeid) {
		this.storeid = storeid;
	}

	public Integer getTaste() {
		return taste;
	}

	public void setTaste(Integer taste) {
		this.taste = taste;
	}

	public Integer getCostef() {
		return costef;
	}

	public void setCostef(Integer costef) {
		this.costef = costef;
	}

	public Integer getService() {
		return service;
	}

	public void setService(Integer service) {
		this.service = service;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getReview() {
		return review;
	}

	public void setReview(String review) {
		this.review = review;
	}

	public Date getReviewdate() {
		return reviewdate;
	}

	public void setReviewdate(Date reviewdate) {
		this.reviewdate = reviewdate;
	}

	public Integer getLikenum() {
		return likenum;
	}

	public void setLikenum(Integer likenum) {
		this.likenum = likenum;
	}

	public String getReport() {
		return report;
	}

	public void setReport(String report) {
		this.report = report;
	}

	public String getImgname() {
		return imgname;
	}

	public void setImgname(String imgname) {
		this.imgname = imgname;
	}

	public String getThumbimg() {
		return thumbimg;
	}

	public void setThumbimg(String thumbimg) {
		this.thumbimg = thumbimg;
	}

	@Override
	public String toString() {
		return "FeedbackVO [reviewid=" + reviewid + ", memberid=" + memberid + ", storeid=" + storeid + ", taste="
				+ taste + ", costef=" + costef + ", service=" + service + ", title=" + title + ", review=" + review
				+ ", reviewdate=" + reviewdate + ", likenum=" + likenum + ", report=" + report + ", imgname=" + imgname
				+ ", thumbimg=" + thumbimg + "]";
	}

}
