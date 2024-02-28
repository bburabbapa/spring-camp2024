package com.java.www.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.java.www.dto.TBoardDto;
import com.java.www.dto.TBoardDto2;

@Mapper
public interface TBoardMapper2 {

	//꿀팁게시판(메인용)
	ArrayList<TBoardDto2> TSelectAll();

	//꿀팁게시판 리스트 가져오기
	ArrayList<TBoardDto2> TlistSelectAll(int startRow, int endRow, String searchTitle, String searchWord);
	
	//꿀팁게시판 검색 가져오기
	ArrayList<TBoardDto2> TSelectSearch(int startRow, int endRow, String searchTitle, String searchWord);
	
	//꿀팁게시판 리스트 1개
	TBoardDto2 TlistSelectOne(int bno);
	
	TBoardDto2 preSelectOne(int bno);
	
	TBoardDto2 nextSelectOne(int bno);	
	
	//게시글 검색개수, 하단넘버링
	int TSelectSearchCount(String searchTitle, String searchWord);
	//게시글 전체개수, 하단넘버링
	int TlistSelectCountAll(String searchTitle, String searchWord);



}
