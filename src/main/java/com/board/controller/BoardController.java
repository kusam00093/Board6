package com.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.board.domain.BoardVo;
import com.board.mapper.BoardMapper;
import com.board.menus.domain.MenuVo;
import com.board.menus.mapper.MenuMapper;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/Board")
public class BoardController {
	
	@Autowired
	private BoardMapper boardMapper;
	@Autowired
	private MenuMapper menuMapper;
	
	@RequestMapping("/List")
	//public ModelAndView list(@Param String menu_id) {
	public ModelAndView list(MenuVo menuVo) {
		
		log.info("=====================================menuVo : {}",menuVo);
		// 메뉴목록
		List<MenuVo> menuList = menuMapper.getMenuList();
		
		
		// 게시물 목록
		List<BoardVo> boardList = boardMapper.getBoardList(menuVo);  
		//System.out.println(boardList);
		ModelAndView mv = new ModelAndView();
		//String menu_id = menuVo.getMenu_id();
		//mv.addObject("menu_id",menu_id);
		mv.addObject("boardList",boardList);
		mv.addObject("menuList",menuList);
		mv.setViewName("board/list");
		return mv;
	}
	
	@RequestMapping("/WriteForm")
	public ModelAndView writeForm(MenuVo menuVo) {
		String menu_id = menuVo.getMenu_id();
		ModelAndView mv = new ModelAndView();
		mv.addObject("menu_id",menu_id);
		mv.setViewName("/board/write");
		return mv;
	}
	
	@RequestMapping("/Write")
	public ModelAndView write(BoardVo boardVo) {
		boardMapper.insertBoard(boardVo);
		
		
		String menu_id = boardVo.getMenu_id();
		ModelAndView mv = new ModelAndView(); 
		mv.setViewName("redirect:/Board/List?menu_id=" + menu_id);
		return mv;
	}
	
	
	
}
