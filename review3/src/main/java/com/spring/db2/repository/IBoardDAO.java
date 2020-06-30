package com.spring.db2.repository;

import java.util.List;

import com.spring.db2.vo.BoardVO;

public interface IBoardDAO {
	void intsert(BoardVO board);


	List<BoardVO> getBoardList();
	
	void update(BoardVO board);
	
	BoardVO show(int index);
	
	void delete(int index);
	
	List<BoardVO> select(String keyword);
	
}
