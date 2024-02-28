package com.java.www.service;

import java.util.ArrayList;
import java.util.Map;

import com.java.www.dto.TBoardDto;
import com.java.www.dto.TBoardDto2;

public interface TService2 {
	//꿀팁(메인용)
	ArrayList<TBoardDto2> TSelectAll();

	//꿀팁게시판 리스트 가져오기
	Map<String, Object> TlistSelectAll(int page, String searchTitle, String searchWord);

	//꿀팁 검색 리스트 가져오기
	Map<String, Object> TSelectSearch(int page, String searchTitle, String searchWord);

	//꿀팁게시판 리스트 1개 가져오기
	Map<String, Object> TlistSelectOne(int bno);

	
}
