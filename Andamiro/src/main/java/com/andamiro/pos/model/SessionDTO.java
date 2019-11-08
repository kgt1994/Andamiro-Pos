package com.andamiro.pos.model;

import java.util.List;

public class SessionDTO {
	private String id;
	private String name;
	List<ShopDTO> shopList;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public List<ShopDTO> getShopList() {
		return shopList;
	}
	public void setShopList(List<ShopDTO> shopList) {
		this.shopList = shopList;
	}
	
	
	
	
}
