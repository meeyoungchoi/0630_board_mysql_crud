package com.spring.db2.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.expression.common.TemplateAwareExpressionParser;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.spring.db2.vo.BoardVO;

@Repository
public class BoardDAO  implements IBoardDAO{

	class BoardMapper implements RowMapper<BoardVO> {

		@Override
		public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
			BoardVO board  = new BoardVO();
			board.setBoardNo(rs.getInt("board_No"));
			board.setUserId(rs.getString("writer"));
			board.setTitle(rs.getString("title"));
			board.setContent(rs.getString("content"));
			return board;
		}
		
	}
	
	
	@Autowired
	private JdbcTemplate template;
	
	@Override
	public void intsert(BoardVO board) {
		String sql = "INSERT INTO board "
				+ "(writer, title, content) "
				+ "VALUES(?, ?, ?)";
				
		template.update(sql, board.getUserId(), board.getTitle(), board.getContent());
		System.out.println("insert 성공");
	}

	@Override
	public List<BoardVO> getBoardList() {
		String sql = "select * from board";
		return template.query(sql, new BoardMapper());
	}

	@Override
	public void update(BoardVO board) {
		String sql = "update board set "
				+ "writer=?, title=?, content=? "
				+ "where board_No=?";
	
				
				
		template.update(sql, board.getUserId(), board.getTitle(), board.getContent(), board.getBoardNo());
		System.out.println("업데이트 완료");
	}

	@Override
	public BoardVO show(int boardNo) {
		String sql = "select * from board "
				+ "where board_No=?";
				
		return template.queryForObject(sql, new BoardMapper(), boardNo);
	}

	@Override
	public void delete(int index) {
		String sql = "delete from board where board_No=?";
		template.update(sql, index);
	}

	@Override
	public List<BoardVO> select(String keyword) {
		String sql = "select * from board where writer LIKE ? "
				+ "ORDER BY board_No DESC";
		return template.query(sql, new BoardMapper(), keyword);
	}

}
