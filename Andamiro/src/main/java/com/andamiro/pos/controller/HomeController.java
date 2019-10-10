package com.andamiro.pos.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.andamiro.pos.model.LoginDTO;
import com.andamiro.pos.model.MemberDTO;
import com.andamiro.pos.service.IMemberService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	IMemberService MemberService;
	@Autowired
	HttpSession session;

	@RequestMapping(value = "/main.do", method = RequestMethod.GET)
	public String index(Locale locale, Model model) {
		return "../../index";
	}

	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public ModelAndView home(LoginDTO dto, HttpServletRequest request) {
		dto = MemberService.selectMember(dto);
		if (dto == null) {
			ModelAndView mv = new ModelAndView("/index");
			mv.addObject("msg", "아이디와 비밀번호를 확인 해 주세요.");
			return mv;
		} else {
			ModelAndView mv = new ModelAndView("/home");
			session = request.getSession(true);
			session.setAttribute("member", dto);

			return mv;
		}
	}

	@RequestMapping(value = "/join.do", method = RequestMethod.POST)
	public String join(@ModelAttribute("memberDTO") @Valid MemberDTO memberDTO, BindingResult bindingResult) {
		System.out.println("가입시도");

		if (!(memberDTO.getPw().isEmpty() || memberDTO.getCheckPw().isEmpty())) {
			if (!memberDTO.getPw().equals(memberDTO.getCheckPw())) {
				bindingResult.rejectValue("checkPw", "nomatch", "비밀번호가 일치하지 않습니다.");
				System.out.println("비밀번호 불일치");

				return "join_admin";
			}
		}

		if (bindingResult.hasErrors()) {
			System.out.println("join error!");
			return "join_admin";
		} else {
			try {
				MemberService.insertMember(memberDTO);
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
				if (!memberDTO.getId().isEmpty()) {
					bindingResult.rejectValue("id", "duplication", "아이디가 중복 되었습니다.");
					System.out.println("아이디 중복");
				}
				return "join_admin";
			}

			return "join_admin";
		}
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
	public String join_admin(@ModelAttribute("memberDTO") MemberDTO memberDTO, Model model) {
		return "join_admin";
	}
}
