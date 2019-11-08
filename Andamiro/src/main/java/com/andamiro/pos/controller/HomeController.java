package com.andamiro.pos.controller;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.andamiro.pos.model.LoginDTO;
import com.andamiro.pos.model.MemberDTO;
import com.andamiro.pos.model.SessionDTO;
import com.andamiro.pos.model.ShopDTO;
import com.andamiro.pos.model.ShopRow;
import com.andamiro.pos.service.IMemberService;

@Controller
@SessionAttributes("user")
public class HomeController {
	@Autowired
	IMemberService MemberService;
	@Autowired
	HttpSession session;

	@RequestMapping(value = "main.do", method = RequestMethod.GET)
	public String index(@ModelAttribute("user") SessionDTO dto) {
		return "../../index";
	}

	@RequestMapping(value = "login.do", method = RequestMethod.POST)
	public ModelAndView home(LoginDTO dto, HttpServletRequest request) {
		dto = MemberService.selectMember(dto);
		if (dto == null) {
			ModelAndView mv = new ModelAndView("../../index");
			mv.addObject("msg", "아이디와 비밀번호를 확인 해 주세요.");
			return mv;
		} else {
			ModelAndView mv = new ModelAndView("home");
			List<ShopDTO> shopList = MemberService.selectShop(dto);
			SessionDTO sdto = new SessionDTO();
			sdto.setId(dto.getId());
			sdto.setName(dto.getName());
			sdto.setShopList(shopList);
			
			session = request.getSession(true);
			session.setAttribute("user", sdto);
			mv.addObject("user", sdto);
			mv.addObject("list",shopList);

			return mv;
		}
	}
	
	@RequestMapping(value = "home.do", method = RequestMethod.GET)
	public ModelAndView goHome(@ModelAttribute("user") SessionDTO dto) {
		ModelAndView mv = new ModelAndView("home");
		mv.addObject("list", dto.getShopList());
		return mv;
	}

	@RequestMapping(value = "logout.do", method = RequestMethod.POST)
	public String logout() {
		session.invalidate();

		return "../../index";
	}

	@RequestMapping(value = "join.do", method = RequestMethod.POST)
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

	@RequestMapping(value = "settings.do{index}", method = RequestMethod.POST)
	public ModelAndView settings(@ModelAttribute ShopRow sr, @RequestParam("index") String index) {
		
		ModelAndView mv = new ModelAndView("settings");
		ShopDTO sdto = new ShopDTO();
		sdto.setShop_number(sr.getShops().get(Integer.parseInt(index)).getShop_number());
		sdto.setShop_name(sr.getShops().get(Integer.parseInt(index)).getShop_name());
		mv.addObject("shop", sdto);

		return mv;
	}

	@RequestMapping(value = "order.do", method = RequestMethod.GET)
	public String order(Locale locale, Model model) {
		return "order";
	}

	@RequestMapping(value = "sales_account.do", method = RequestMethod.GET)
	public String sales_account(Locale locale, Model model) {
		return "sales_account";
	}

	@RequestMapping(value = "table_settings.do", method = RequestMethod.GET)
	public String table_settings(Locale locale, Model model) {
		return "table_settings";
	}

	@RequestMapping(value = "join_admin.do", method = RequestMethod.GET)
	public String join_admin(@ModelAttribute("memberDTO") MemberDTO memberDTO, Model model) {
		return "join_admin";
	}

	@RequestMapping(value = "shoppw.do", method = RequestMethod.POST)
	public String shoppw(@ModelAttribute("memberDTO") MemberDTO memberDTO, Model model) {

		return "settings";
	}
}
