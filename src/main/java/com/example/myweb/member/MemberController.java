package com.example.myweb.member;

import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	private MemberDao memberDao;

	@RequestMapping(value = "/member/list.do", method = RequestMethod.GET)
	public String memberList(Locale locale, Model model) {
		logger.info("GET memberList() - MemberController", locale);

		List<MemberDto> memberList = memberDao.selectAll();

		model.addAttribute("memberList", memberList);

		return "member/list";
	}

	@RequestMapping(value = "/member/input.do", method = RequestMethod.GET)
	public String memberInput(Locale locale, Model model) {
		logger.info("GET memberInput() - MemberController", locale);

		return "member/input";
	}

	@RequestMapping(value = "/member/input.do", method = RequestMethod.POST)
	public String memberInputOk(MemberDto member, Locale locale, Model model) {
		logger.info("POST memberInputOk() - MemberController");

		memberDao.insert(member);
		return "redirect:/member/list.do";
	}

	@RequestMapping(value = "/member/detail.do", method = RequestMethod.GET)
	public String memberDetail(MemberDto dto, Locale locale, Model model) {
		logger.info("GET memberDetail() - MemberController", locale);
		MemberDto member = memberDao.findById(dto);
		model.addAttribute("member", member);
		return "member/detail";
	}

	@RequestMapping(value = "/member/edit.do", method = RequestMethod.GET)
	public String memberEdit(MemberDto dto, Locale locale, Model model) {
		logger.info("GET memberEdit() - MemberController", locale);
		MemberDto member = memberDao.findById(dto);
		model.addAttribute("member", member);
		return "member/edit";
	}

	@RequestMapping(value = "/member/edit.do", method = RequestMethod.POST)
	public String memberEditOk(MemberDto dto, Locale locale, Model model) {
		logger.info("POST memberEditOk() - MemberController", locale);
		memberDao.update(dto);
		return "redirect:list.do";
	}

	@RequestMapping(value = "/member/delete.do", method = RequestMethod.GET)
	public String memberDelete(MemberDto dto, Locale locale, Model model) {
		logger.info("GET memberDelete() - MemberController", locale);
		MemberDto member = memberDao.findById(dto);
		model.addAttribute("member", member);

		return "member/delete";
	}

	@RequestMapping(value = "/member/delete.do", method = RequestMethod.POST)
	public String memberDeleteOk(MemberDto dto, Locale locale, Model model) {
		logger.info("POST memberDeleteOk() - MemberController");
		System.out.println("넘어온 아이디: " + dto.getId());
		memberDao.delete(dto);

		return "redirect:/member/list.do";
	}

}
