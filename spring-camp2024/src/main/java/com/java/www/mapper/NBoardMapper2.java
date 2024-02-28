package com.java.www.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.java.www.dto.NBoardDto;
import com.java.www.dto.NBoardDto2;

@Mapper
public interface NBoardMapper2 {

	//공지사항
	ArrayList<NBoardDto2> NSelectAll();
	
	//공지사항 리스트 가져오기
	ArrayList<NBoardDto2> NlistSelectAll(int startRow, int endRow, String searchTitle, String searchWord);
	
	//공지사항 검색 가져오기
	ArrayList<NBoardDto2> NSelectSearch(int startRow, int endRow, String searchTitle, String searchWord);
	
	//공지사항 리스트 1개
	NBoardDto2 NlistSelectOne(int bno);
	
	NBoardDto2 preSelectOne(int bno);
	
	NBoardDto2 nextSelectOne(int bno);
	
	//게시글 검색개수, 하단넘버링
	int NSelectSearchCount(String searchTitle, String searchWord);
	//게시글 전체개수, 하단넘버링
	int NlistSelectCountAll(String searchTitle, String searchWord);



}
