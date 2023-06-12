package kr.bit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.bit.entity.Board;
import kr.bit.service.BoardService;


@Controller // POJO
@RequestMapping("/board/*")
public class BoardController {
	@Autowired
	BoardService boardService;
	
	@GetMapping("/list")
	public String getList(Model model) {
		List<Board> list = boardService.getList();
		// 객체 바인딩
		model.addAttribute("list", list);
		return "board/list";
	}
	
	@GetMapping("/register")
	public String register() {
		return "board/register";
	}
}
