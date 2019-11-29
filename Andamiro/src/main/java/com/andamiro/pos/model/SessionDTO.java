package com.andamiro.pos.model;

public class SessionDTO {
	private String id;
	private String name;
	private int selectedShop;
	
	public int getSelectedShop() {
		return selectedShop;
	}
	public void setSelectedShop(int selectedShop) {
		this.selectedShop = selectedShop;
	}
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
}
