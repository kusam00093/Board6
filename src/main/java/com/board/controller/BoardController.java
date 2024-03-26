package com.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.board.domain.BoardVo;
import com.board.mapper.BoardMapper;
import com.board.menus.domain.MenuVo;

@Controller
@RequestMapping("/Board")
public class BoardController {
	
	@Autowired
	private BoardMapper boardMapper;
	
	@RequestMapping("/List")
	public ModelAndView list(MenuVo menuVo) {
		
		// 게시물 목록
		List<BoardVo> boardList = boardMapper.getBoardList(menuVo);  
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("boardList",boardList);
		mv.setViewName("board/list");
		return mv;
	}
}
