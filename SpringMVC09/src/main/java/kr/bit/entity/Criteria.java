package kr.bit.entity;

import lombok.Data;

@Data
public class Criteria {
	private int page;	// 현재 페이지 번호
	private int perPageNum;	// 한 페이지에 표시할 게시글의 갯수
	// 검색기능에 필요한 변수
	private String type;
	private String keyword;
	public Criteria() {
		this.page=1;
		this.perPageNum=5;	
	}
	// 현재 페이지의 글의 시작번호
	public int getPageStart() {	// 		1page	2page	3page
		return (page-1)*perPageNum;	// 	 0~ 	 10~	 20~	: limit 0, 10
	}
}
