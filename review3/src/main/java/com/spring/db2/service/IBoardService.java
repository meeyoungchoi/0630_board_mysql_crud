package com.spring.db2.service;

import java.util.List;

import com.spring.db2.vo.BoardVO;

public interface IBoardService {
	void intsert(BoardVO board);
	
	
	List<BoardVO> getBoardList();
	
	BoardVO show(int index);
	
	
	void update(BoardVO board);
	
	void delete(int index);
	
	List<BoardVO> searchList(String keyword);
	
}
