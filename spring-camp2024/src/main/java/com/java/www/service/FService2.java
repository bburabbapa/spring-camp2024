package com.java.www.service;

import java.util.ArrayList;
import java.util.Map;
import com.java.www.dto.FBoardDto2;

public interface FService2 {

	//자유게시판(메인용)
	ArrayList<FBoardDto2> FSelectAll();
	
	//자유게시판 리스트가져오기
	Map<String, Object> FlistSelectAll(int page, String searchTitle, String searchWord);
	
	//게시판 검색 리스트(자유게시판)
	Map<String, Object> FSelectSearch(int page, String searchTitle, String searchWord);

	//자유게시판 리스트 1개
	Map<String, Object> FlistSelectOne(int bno);


	//게시판 검색리스트(헤더파트)
	//Map<String, Object> selectSearch(int page, String category, String input_search);


	
}
