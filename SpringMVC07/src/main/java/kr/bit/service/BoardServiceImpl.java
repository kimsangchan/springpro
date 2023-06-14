package kr.bit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.bit.entity.Board;
import kr.bit.entity.Member;
import kr.bit.mapper.BoardMapper;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	BoardMapper boardMapper;
	
	@Override
	public List<Board> getList() {
		// 반영할 로직
		List<Board> list = boardMapper.getList();
		return list;
	}

	@Override
	public Member login(Member vo) {
		Member mvo=boardMapper.login(vo);
		return mvo;
	}

	@Override
	public void register(Board vo) {
		boardMapper.insertSelectKey(vo);
		
	}

	@Override
	public Board get(int idx) {
		Board vo = boardMapper.read(idx);
		return vo;
	}

	@Override
	public void modify(Board vo) {
		boardMapper.update(vo);
		
	}

	@Override
	public void remove(int idx) {		
		boardMapper.delete(idx);
	}

}
