package com.board.controller;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.board.user.domain.UserVo;
import com.board.user.mapper.UserMapper;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class HomeController {
	
	@Autowired
	private UserMapper userMapper;
	
	@RequestMapping("/")
	public String home() {
		return "home";
	}
	
	@RequestMapping("/LoginForm")
	public ModelAndView loginForm() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/users/login");
		return mv;
	}
	
	// login(userid=sky&passwd=1234)
	@RequestMapping("/Login")
	public ModelAndView login(HttpServletRequest request) {
	//	public ModelAndView login(@Param String userid, @Param String passwd, HttpServletRequest request) {
		
		
		String userid = request.getParameter("userid");
		String passwd = request.getParameter("passwd");
		
		UserVo userVo = userMapper.login(userid,passwd);
		
		if(userVo!=null) { //아이디와 암호가 일치하면
			
		HttpSession session = request.getSession();
		session.setAttribute("login", userVo);
		session.setMaxInactiveInterval(30*60);  //30분 동안 유지
		} 
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/");
		return mv;
	}
} 
 