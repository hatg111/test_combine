package com.tistory.pentode.vo;

public class MainVO {

	private Integer storeid;
	private String img;
	private String storename;
	private String location;
	private String address;
	private String trans;
	private Integer star;
	private String foodtype;
	private String price;
	private String openhours;
	private String holiday;
	private String contact;
	private String delivery;
	private float tastestar;
	private float costefstar;
	private float servicestar;

	public Integer getStoreid() {
		return storeid;
	}

	public void setStoreid(Integer storeid) {
		this.storeid = storeid;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getStorename() {
		return storename;
	}

	public void setStorename(String storename) {
		this.storename = storename;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTrans() {
		return trans;
	}

	public void setTrans(String trans) {
		this.trans = trans;
	}

	public Integer getStar() {
		return star;
	}

	public void setStar(Integer star) {
		this.star = star;
	}

	public String getFoodtype() {
		return foodtype;
	}

	public void setFoodtype(String foodtype) {
		this.foodtype = foodtype;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getOpenhours() {
		return openhours;
	}

	public void setOpenhours(String openhours) {
		this.openhours = openhours;
	}

	public String getHoliday() {
		return holiday;
	}

	public void setHoliday(String holiday) {
		this.holiday = holiday;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getDelivery() {
		return delivery;
	}

	public void setDelivery(String delivery) {
		this.delivery = delivery;
	}

	public float getTastestar() {
		return tastestar;
	}

	public void setTastestar(float tastestar) {
		this.tastestar = tastestar;
	}

	public float getCostefstar() {
		return costefstar;
	}

	public void setCostefstar(float costefstar) {
		this.costefstar = costefstar;
	}

	public float getServicestar() {
		return servicestar;
	}

	public void setServicestar(float servicestar) {
		this.servicestar = servicestar;
	}

	@Override
	public String toString() {
		return "MainVO [storeid=" + storeid + ", img=" + img + ", storename=" + storename + ", location=" + location
				+ ", address=" + address + ", trans=" + trans + ", star=" + star + ", foodtype=" + foodtype + ", price="
				+ price + ", openhours=" + openhours + ", holiday=" + holiday + ", contact=" + contact + ", delivery="
				+ delivery + "]";
	}

	}

	/*@Override
	public String toString() {
		return "BoardVO [img=" + img + ", storename=" + storename + ", star=" + star + "]";
	}
*/

