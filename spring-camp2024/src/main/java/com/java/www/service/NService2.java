package com.java.www.service;

import java.util.ArrayList;
import java.util.Map;

import com.java.www.dto.NBoardDto2;

public interface NService2 {

	//공지사항(메인용)
	ArrayList<NBoardDto2> NSelectAll();
	
	
	//공지사항 리스트 가져오기
	Map<String, Object> NlistSelectAll(int page, String searchTitle, String searchWord);
	//공지사항 검색 리스트 가져오기
	Map<String, Object> NSelectSearch(int page, String searchTitle, String searchWord);
	//공지사항 리스트 1개 가져오기
	Map<String, Object> NlistSelectOne(int bno);

	

}
