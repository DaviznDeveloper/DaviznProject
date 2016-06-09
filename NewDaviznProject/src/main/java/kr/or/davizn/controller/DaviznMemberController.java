package kr.or.davizn.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.davizn.model.dto.DaviznMemberDTO;
import kr.or.davizn.service.DaviznMemberService;

@Controller
@RequestMapping("/member/")
public class DaviznMemberController {
	
	@Autowired
	DaviznMemberService service;
	
	//회원가입
	@RequestMapping("joinMember.dvn")
	public String joinMember(DaviznMemberDTO member){
		System.out.println("eettttt22e");
		String view = null;
		int result = service.insertMember(member);
		String userid = member.getUserid();
		if(result > 0){
			view = "redirect:grantAuth.dvn?userid="+userid;
		}else{
			view = "ui.main";
		}
		return view;
	}

	//회원가입 닉네임 중복 비동기 처리
	@RequestMapping("/checkNickname.dvn")
	public @ResponseBody String checkNickname(@RequestParam String nickname){
		System.out.println("닉네임 중복처리 컨트롤러");
		System.out.println(nickname);
		String result = service.checkNickname(nickname);
		System.out.println(result);
		return result;
	}
	
	@RequestMapping("/checkUserid.dvn")
	public @ResponseBody String checkMemberid(@RequestParam String userid){
		System.out.println("userid 중복처리 컨트롤러");
		System.out.println(userid);
		String result = service.checkMemberid(userid);
		System.out.println(result);
		return result;
	}
	
	@RequestMapping("profile.dvn")
	public String moveProfile(){
		
		return "member.profile";
	}
	
	//회원 정보 수정 창 이동
	@RequestMapping("profileModi.dvn")
	public String moveProfileModi(Principal principal, Model model){
		System.out.println("회원정보 수정 컨트롤러");
		String view = null;
		String userid = principal.getName();
		System.out.println("로그인한 아이디 : "+userid);
		DaviznMemberDTO member = service.selectOneMember(userid);
		System.out.println(member.getNickname());
		System.out.println(member.getUserid());
		System.out.println(member.getPhone());
		
		if(member != null){
			model.addAttribute("member", member);
			view = "member.profile-modi";
			System.out.println("회원 정보 검색 성공");
		}else{
			view = "home.index";
			System.out.println("회원정보 검색 실패");
		}
		
		return view;
	}
	
	
	
	
}