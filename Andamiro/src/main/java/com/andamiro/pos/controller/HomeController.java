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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.andamiro.pos.model.LoginDTO;
import com.andamiro.pos.model.MemberDTO;
import com.andamiro.pos.model.SessionDTO;
import com.andamiro.pos.model.ShopDTO;
import com.andamiro.pos.model.ShopRow;
import com.andamiro.pos.model.UpdateDTO;
import com.andamiro.pos.service.IMemberService;

@Controller
@SessionAttributes("user")
public class HomeController {
	@Autowired
	IMemberService MemberService;
	@Autowired
	HttpSession session;

	@RequestMapping(value = "main.do", method = RequestMethod.GET)
	public String index() {
		return "redirect:/";
	}

	@RequestMapping(value = "login.do", method = RequestMethod.POST)
	public ModelAndView home(LoginDTO dto, HttpServletRequest request) {
		dto = MemberService.selectLogin(dto);
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

	@RequestMapping(value = "logout.do", method = RequestMethod.GET)
	public ModelAndView logout(SessionStatus sessionStatus) {
		sessionStatus.setComplete();
		ModelAndView mv = new ModelAndView("redirect:/");
		return mv;
	}

	@RequestMapping(value = "join.do", method = RequestMethod.POST)
	public ModelAndView join(@ModelAttribute("memberDTO") @Valid MemberDTO memberDTO, BindingResult bindingResult) {
		System.out.println("가입시도");

		if (bindingResult.hasErrors()) {
			System.out.println("join error!");
			ModelAndView mv = new ModelAndView("join");
			return mv;
		} else {
			try {
				MemberService.insertMember(memberDTO);
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			ModelAndView mv = new ModelAndView("../../index");
			mv.addObject("msg", "회원가입 성공!! 다시 로그인 해 주세요");
			return mv;
		}
	}
	
	@RequestMapping(value = "checkSignup", method = RequestMethod.POST)
	public @ResponseBody String AjaxView(  
		        @RequestParam("id") String id){
		String str = "";
		int idcheck = MemberService.idCheck(id);
		if(idcheck==1){ //이미 존재하는 계정
			str = "NO";	
		}else{	//사용 가능한 계정
			str = "YES";	
		}
		return str;
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
	@RequestMapping(value = "open_cash.do", method = RequestMethod.GET)
	public String open_cash(Locale locale, Model model) {
		return "open_cash";
	}
	
	@RequestMapping(value = "end_cash.do", method = RequestMethod.GET)
	public String end_cash(Locale locale, Model model) {
		return "end_cash";
	}
	
	@RequestMapping(value = "mypage.do", method = RequestMethod.GET)
	public ModelAndView myPage(@ModelAttribute("user") SessionDTO dto) {
		ModelAndView mv = new ModelAndView("mypage");
		mv.addObject("memberDTO", MemberService.selectMember(dto.getId()));
		return mv;
	}
	
	@RequestMapping(value = "update.do", method = RequestMethod.POST)
	public ModelAndView update(@ModelAttribute("memberDTO") @Valid UpdateDTO memberDTO, BindingResult bindingResult, 
			@ModelAttribute("user") SessionDTO dto, Model model) {
		ModelAndView mv = new ModelAndView();
		LoginDTO ldto = new LoginDTO();
		ldto.setId(memberDTO.getId());
		ldto.setPw(memberDTO.getPw());
		
		if(memberDTO.getCheckPw() == "") {
			mv.setViewName("mypage");
			if(MemberService.pwCheck(ldto) != 1) {
				bindingResult.rejectValue("pw", "nomatch", "비밀번호가 일치하지 않습니다.");
				return mv;
			}
		}
		
		if (bindingResult.hasErrors()) {
			System.out.println("update error!");
			mv.setViewName("mypage");
			return mv;
		} else {
			try {
				MemberService.updateMember(memberDTO);
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
				mv.setViewName("mypage");
				return mv;
			}
			mv.setViewName("redirect:home?idx=1");
			mv.addObject("msg", "회원 정보 수정 성공!!");
			return mv;
		}
	}
	
	@RequestMapping(value = "leave.do", method = RequestMethod.POST)
	public ModelAndView myPage(@ModelAttribute("memberDTO") @Valid UpdateDTO memberDTO, BindingResult bindingResult) {
		ModelAndView mv = new ModelAndView();
		LoginDTO ldto = new LoginDTO();
		ldto.setId(memberDTO.getId());
		ldto.setPw(memberDTO.getPw());
		
		mv.setViewName("mypage");
		if(MemberService.pwCheck(ldto) != 1) {
			bindingResult.rejectValue("pw", "nomatch", "비밀번호가 일치하지 않습니다.");
			return mv;
		}else {
			MemberService.deleteMember(ldto);
			mv.setViewName("redirect:logout.do");
			return mv;
		}
	}
}
