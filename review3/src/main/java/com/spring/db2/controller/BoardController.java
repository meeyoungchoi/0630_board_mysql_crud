package com.spring.db2.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.spring.db2.service.IBoardService;
import com.spring.db2.vo.BoardVO;

@Controller
public class BoardController {
	
	@Autowired
	private IBoardService service;
	
	
	@GetMapping("/board/write")
	public String write() {
		return "board/write-form";
	}
	
	@PostMapping("/board/write")
	public String insert(BoardVO board, Model model) {
		System.out.println(board.toString());
		service.intsert(board);
		return "redirect:/board/list";
	}
	
	@GetMapping("/board/list")
	public String list(Model model) {
		model.addAttribute("boards", service.getBoardList());
		return "board/list";
	}
	
	@GetMapping("/board/show")
	public String show(int boardNo, Model model) {
		System.out.println("/board/show/:GET");
		model.addAttribute("board", service.show(boardNo));
		return "board/show";
	}
	
	@GetMapping("/board/modify")
	public String update(int boardNo, Model model) {
		System.out.println("/board/modify: GET");
		model.addAttribute("board", service.show(boardNo));
		return "board/show";
	}
	
	@GetMapping("/board/edit")
	public String edit(int boardNo, Model model) {
		System.out.println("/board/edit: GET");
		
		model.addAttribute("board", service.show(boardNo));
		return "board/update";
	}
	
	@PostMapping("/board/update")
	public String update(BoardVO board, Model model) {
		System.out.println("/board/update: POST");
		service.update(board);
		model.addAttribute("boardNo", board.getBoardNo());
		return "redirect:/board/show";
	}
	
	@GetMapping("/board/delete")
	public String delete(int boardNo) {
		service.delete(boardNo);
		return "redirect:/board/list";
	}
	
	@GetMapping("/board/searchList")
	public String search(String keyword, Model model) {
		model.addAttribute("boards", service.searchList(keyword));
		return "board/list-result";
	}
	
}
