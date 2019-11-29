package com.andamiro.pos.controller;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.andamiro.pos.model.MemberDTO;
import com.andamiro.pos.model.SessionDTO;
import com.andamiro.pos.model.ShopDTO;
import com.andamiro.pos.model.ShopRow;
import com.andamiro.pos.service.IShopService;

@Controller
@SessionAttributes("user")
public class ShopController {
	@Autowired
	IShopService ShopService;
	@Autowired
	HttpSession session;
	
	@RequestMapping(value = "home", method = RequestMethod.GET)
	public ModelAndView goHome(@ModelAttribute("user") SessionDTO dto) {
		List<ShopDTO> shopList = ShopService.selectShop(dto);
		
		ModelAndView mv = new ModelAndView("home");
		mv.addObject("list", shopList);
		return mv;
	}

	@RequestMapping(value = "settings.do{index}", method = RequestMethod.POST)
	public ModelAndView settings(@ModelAttribute("user") SessionDTO dto, 
			@ModelAttribute ShopRow sr, @RequestParam("index") String index) {
		
		ModelAndView mv = new ModelAndView("settings");
		ShopDTO sdto = new ShopDTO();
		sdto.setShop_number(sr.getShops().get(Integer.parseInt(index)).getShop_number());
		sdto.setShop_name(sr.getShops().get(Integer.parseInt(index)).getShop_name());
		mv.addObject("shop", sdto);

		return mv;
	}

	@RequestMapping(value = "order.do", method = RequestMethod.GET)
	public String order(@ModelAttribute("user") SessionDTO dto, Model model) {
		return "order";
	}

	@RequestMapping(value = "sales_account.do", method = RequestMethod.GET)
	public String sales_account(@ModelAttribute("user") SessionDTO dto, Model model) {
		return "sales_account";
	}

	@RequestMapping(value = "table_settings.do", method = RequestMethod.GET)
	public String table_settings(@ModelAttribute("user") SessionDTO dto, Model model) {
		return "table_settings";
	}

	@RequestMapping(value = "shoppw.do", method = RequestMethod.POST)
	public String shoppw(@ModelAttribute("memberDTO") MemberDTO memberDTO, 
			@ModelAttribute("user") SessionDTO dto) {

		return "settings";
	}
	@RequestMapping(value = "open_cash.do", method = RequestMethod.GET)
	public String open_cash(@ModelAttribute("user") SessionDTO dto, Model model) {
		return "open_cash";
	}
	
	@RequestMapping(value = "end_cash.do", method = RequestMethod.GET)
	public String end_cash(@ModelAttribute("user") SessionDTO dto, Model model) {
		return "end_cash";
	}
	
}
