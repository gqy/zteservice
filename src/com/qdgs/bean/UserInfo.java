package com.qdgs.bean;

import java.io.Serializable;

public class UserInfo implements Serializable{
private int userId;
private int id;
private String userName;
private String userPwd;
private String name;
private String userSex;
private String userLinkMan;
private String userEmail;
private String userTel;
private String userUnit;
private String userUrl;
private String userCountry;
private String userProvince;
private String userCity;
private String userPost;
private String userAddress;
private String userProduct;
private String userProductType;
private String userProductId;
public UserInfo() {
	super();
	// TODO Auto-generated constructor stub
}
public UserInfo(int userId, int id, String userName, String userPwd,
		String name, String userSex, String userLinkMan, String userEmail,
		String userTel, String userUnit, String userUrl, String userCountry,
		String userProvince, String userCity, String userPost,
		String userAddress, String userProduct, String userProductType,
		String userProductId) {
	super();
	this.userId = userId;
	this.id = id;
	this.userName = userName;
	this.userPwd = userPwd;
	this.name = name;
	this.userSex = userSex;
	this.userLinkMan = userLinkMan;
	this.userEmail = userEmail;
	this.userTel = userTel;
	this.userUnit = userUnit;
	this.userUrl = userUrl;
	this.userCountry = userCountry;
	this.userProvince = userProvince;
	this.userCity = userCity;
	this.userPost = userPost;
	this.userAddress = userAddress;
	this.userProduct = userProduct;
	this.userProductType = userProductType;
	this.userProductId = userProductId;
}
public int getUserId() {
	return userId;
}
public void setUserId(int userId) {
	this.userId = userId;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getUserName() {
	return userName;
}
public void setUserName(String userName) {
	this.userName = userName;
}
public String getUserPwd() {
	return userPwd;
}
public void setUserPwd(String userPwd) {
	this.userPwd = userPwd;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getUserSex() {
	return userSex;
}
public void setUserSex(String userSex) {
	this.userSex = userSex;
}
public String getUserLinkMan() {
	return userLinkMan;
}
public void setUserLinkMan(String userLinkMan) {
	this.userLinkMan = userLinkMan;
}
public String getUserEmail() {
	return userEmail;
}
public void setUserEmail(String userEmail) {
	this.userEmail = userEmail;
}
public String getUserTel() {
	return userTel;
}
public void setUserTel(String userTel) {
	this.userTel = userTel;
}
public String getUserUnit() {
	return userUnit;
}
public void setUserUnit(String userUnit) {
	this.userUnit = userUnit;
}
public String getUserUrl() {
	return userUrl;
}
public void setUserUrl(String userUrl) {
	this.userUrl = userUrl;
}
public String getUserCountry() {
	return userCountry;
}
public void setUserCountry(String userCountry) {
	this.userCountry = userCountry;
}
public String getUserProvince() {
	return userProvince;
}
public void setUserProvince(String userProvince) {
	this.userProvince = userProvince;
}
public String getUserCity() {
	return userCity;
}
public void setUserCity(String userCity) {
	this.userCity = userCity;
}
public String getUserPost() {
	return userPost;
}
public void setUserPost(String userPost) {
	this.userPost = userPost;
}
public String getUserAddress() {
	return userAddress;
}
public void setUserAddress(String userAddress) {
	this.userAddress = userAddress;
}
public String getUserProduct() {
	return userProduct;
}
public void setUserProduct(String userProduct) {
	this.userProduct = userProduct;
}
public String getUserProductType() {
	return userProductType;
}
public void setUserProductType(String userProductType) {
	this.userProductType = userProductType;
}
public String getUserProductId() {
	return userProductId;
}
public void setUserProductId(String userProductId) {
	this.userProductId = userProductId;
}
@Override
public String toString() {
	return "UserInfo [userId=" + userId + ", id=" + id + ", userName="
			+ userName + ", userPwd=" + userPwd + ", name=" + name
			+ ", userSex=" + userSex + ", userLinkMan=" + userLinkMan
			+ ", userEmail=" + userEmail + ", userTel=" + userTel
			+ ", userUnit=" + userUnit + ", userUrl=" + userUrl
			+ ", userCountry=" + userCountry + ", userProvince=" + userProvince
			+ ", userCity=" + userCity + ", userPost=" + userPost
			+ ", userAddress=" + userAddress + ", userProduct=" + userProduct
			+ ", userProductType=" + userProductType + ", userProductId="
			+ userProductId + "]";
}

}
