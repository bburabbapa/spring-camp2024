package com.java.www.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.java.www.dto.FBoardDto2;

@Mapper
public interface FBoardMapper2 {

	//자유게시판(메인용)
	ArrayList<FBoardDto2> FSelectAll();
	
	//자유게시판 리스트 가져오기
	ArrayList<FBoardDto2> FlistSelectAll(int startRow, int endRow, String searchTitle, String searchWord);

	//게시글 검색 가져오기
	ArrayList<FBoardDto2> FSelectSearch(int startRow, int endRow, String searchTitle, String searchWord);
	
	//자유게시판 리스트 1개
	FBoardDto2 FlistSelectOne(int bno);

	FBoardDto2 preSelectOne(int bno);

	FBoardDto2 nextSelectOne(int bno);

	//게시글 검색개수, 하단넘버링
	int FSelectSearchCount(String searchTitle, String searchWord);
	//게시글 전체개수, 하단넘버링
	int FlistSelectCountAll(String searchTitle, String searchWord);
	
	//게시글 총개수, 게시글 검색개수(헤더)
	//int selectSearchCount(String category, String input_search);
	
	//게시글 검색 가져오기(헤더)
	//ArrayList<BoardDto> selectSearch(int startRow, int endRow, String category, String input_search);

	//조회수 1증가
	//void f_bhitUp(int bno);

}
