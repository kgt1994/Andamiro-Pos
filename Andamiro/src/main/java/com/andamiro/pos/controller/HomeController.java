package com.andamiro.pos.controller;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.andamiro.pos.service.IMemberService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	IMemberService MemberService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Locale locale, Model model) {
		return "index";
	}

	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "home";
	}

	@RequestMapping(value = "/settings.do", method = RequestMethod.GET)
	public String settings(Locale locale, Model model) {
		return "settings";
	}

	@RequestMapping(value = "/order.do", method = RequestMethod.GET)
	public String order(Locale locale, Model model) {
		return "order";
	}

	@RequestMapping(value = "/sales_account.do", method = RequestMethod.GET)
	public String sales_account(Locale locale, Model model) {
		return "sales_account";
	}
	@RequestMapping(value = "/table_settings.do", method = RequestMethod.GET)
	public String table_settings(Locale locale, Model model) {
		return "table_settings";
	}
	@RequestMapping(value = "/join_admin.do", method = RequestMethod.GET)
	public String join_admin(Locale locale, Model model) {
		return "join_admin";
	}
}
