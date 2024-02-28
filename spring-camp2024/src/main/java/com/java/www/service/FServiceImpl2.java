package com.java.www.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.www.dto.FBoardDto2;
import com.java.www.mapper.FBoardMapper2;

@Service
public class FServiceImpl2 implements FService2 {
	
	@Autowired
	FBoardMapper2 fBoardMapper2;

	//자유게시판(메인용)
	@Override
	public ArrayList<FBoardDto2> FSelectAll() {
		ArrayList<FBoardDto2> t_list2  =  fBoardMapper2.FSelectAll();
		return t_list2;
	}
	
//  게시판 전체 가져오기
//	@Override
//	public ArrayList<FBoardDto> FlistSelectAll() {
//		ArrayList<FBoardDto> list = fBoardMapper.FlistSelectAll();
//		return list;
//	}
	
	//게시판 전체 리스트 가져오기
	@Override
	public Map<String, Object> FlistSelectAll(int page, String searchTitle, String searchWord) {
		if (page <= 0)
			page = 1;
		int rowPerPage = 10; 
		int bottomNum = 10; 
		int fcountAll = fBoardMapper2.FlistSelectCountAll(searchTitle, searchWord); 
		int maxPageNum = (int) Math.ceil((double) fcountAll / rowPerPage);
		int startPageNum = ((page - 1) / 10) * 10 + 1; 
		int endPageNum = (startPageNum + bottomNum) - 1; 

		int startRow = (page - 1) * rowPerPage + 1; 
		int endRow = startRow + rowPerPage - 1; 
		if (endPageNum > maxPageNum)
			endPageNum = maxPageNum;
		ArrayList<FBoardDto2> list = fBoardMapper2.FlistSelectAll(startRow, endRow, searchTitle, searchWord);
		Map<String, Object> map = new HashMap<>();
		map.put("list", list);
		map.put("page", page);
		map.put("maxPageNum", maxPageNum);
		map.put("startPageNum", startPageNum);
		map.put("endPageNum", endPageNum);
		map.put("searchTitle", searchTitle);
		map.put("searchWord", searchWord);

		return map;
	}

	//게시판 검색 가져오기
	@Override
	public Map<String, Object> FSelectSearch(int page, String searchTitle, String searchWord) {
		if(page<=0) page=1;
		int countPerPage = 10; 
		int bottomPerNum = 10; 
		int countAll = fBoardMapper2.FSelectSearchCount(searchTitle,searchWord); 
		System.out.println("FServiceImpl2 countAll : "+countAll);
		int maxPage = (int)Math.ceil((double)countAll/countPerPage);
		System.out.println("FServiceImpl2 maxPage : "+maxPage);
		
		int startPage = ((page-1)/bottomPerNum)*bottomPerNum+1;   
		int endPage = (startPage+bottomPerNum)-1;
		int startRow = (page-1)*countPerPage+1; 
		int endRow = startRow+countPerPage-1;   
		
		
		if(endPage>maxPage) endPage=maxPage;
		ArrayList<FBoardDto2> list = fBoardMapper2.FSelectSearch(startRow,endRow,searchTitle,searchWord);
		
		Map<String, Object> map = new HashMap<>();
		map.put("list", list);
		map.put("page", page);
		map.put("maxPage", maxPage);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		
		return map;
	}
	
	
	//게시판 1개 가져오기
	@Override
	public Map<String, Object> FlistSelectOne(int bno) {
		//현재번호글 가져오기
		FBoardDto2 fdto2 = fBoardMapper2.FlistSelectOne(bno);
		//이전번호글 가져오기
		FBoardDto2 prefdto2 = fBoardMapper2.preSelectOne(bno);
		//다음번호글 가져오기
		FBoardDto2 nextfdto2 = fBoardMapper2.nextSelectOne(bno);	
		
		//fBoardMapper.f_bhitUp(bno);
		
		Map<String, Object> map = new HashMap<>();
		map.put("fdto2", fdto2);
		map.put("prefdto2", prefdto2);
		map.put("nextfdto2", nextfdto2);
		return map;
	}




}
