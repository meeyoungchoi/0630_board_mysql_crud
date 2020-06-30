package com.spring.db2.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.db2.repository.IBoardDAO;
import com.spring.db2.vo.BoardVO;

@Service
public class BoardService implements IBoardService {

	
	@Autowired
	private IBoardDAO dao;
	
	@Override
	public void intsert(BoardVO board) {
		dao.intsert(board);

	}

	@Override
	public List<BoardVO> getBoardList() {
		return dao.getBoardList();
	}

	@Override
	public void update(BoardVO board) {
		System.out.println(board.toString());
		dao.update(board);
	}

	@Override
	public BoardVO show(int index) {
		return dao.show(index);
	}

	@Override
	public void delete(int index) {
		dao.delete(index);
		
	}

	@Override
	public List<BoardVO> searchList(String keyword) {
		return dao.select(keyword);
	}

}
