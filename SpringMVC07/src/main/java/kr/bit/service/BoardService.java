package kr.bit.service;

import java.util.List;

import kr.bit.entity.Board;
import kr.bit.entity.Member;

public interface BoardService {
	public List<Board> getList();
	public Member login(Member vo);
	public void register(Board vo);
}
