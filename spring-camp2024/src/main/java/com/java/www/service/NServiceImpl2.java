package com.java.www.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.www.dto.NBoardDto2;
import com.java.www.mapper.NBoardMapper2;

@Service
public class NServiceImpl2 implements NService2 {
	
	@Autowired
	NBoardMapper2 nBoardMapper2;

	//공지사항(메인용)
	@Override
	public ArrayList<NBoardDto2> NSelectAll() {
		ArrayList<NBoardDto2> t_list3 = nBoardMapper2.NSelectAll();
		return t_list3;
	}

	//공지사항 리스트 가져오기
	@Override
	public Map<String, Object> NlistSelectAll(int page, String searchTitle, String searchWord) {
		if (page <= 0)
			page = 1;
		int rowPerPage = 10; 
		int bottomNum = 10; 
		int fcountAll = nBoardMapper2.NlistSelectCountAll(searchTitle, searchWord); 
		int maxPageNum = (int) Math.ceil((double) fcountAll / rowPerPage);
		int startPageNum = ((page - 1) / 10) * 10 + 1; 
		int endPageNum = (startPageNum + bottomNum) - 1; 

		int startRow = (page - 1) * rowPerPage + 1; 
		int endRow = startRow + rowPerPage - 1; 
		if (endPageNum > maxPageNum)
			endPageNum = maxPageNum;
		ArrayList<NBoardDto2> list = nBoardMapper2.NlistSelectAll(startRow, endRow, searchTitle, searchWord);
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

	//공지사항 검색 리스트 가져오기
	@Override
	public Map<String, Object> NSelectSearch(int page, String searchTitle, String searchWord) {
		if(page<=0) page=1;
		int countPerPage = 10; 
		int bottomPerNum = 10; 
		int countAll = nBoardMapper2.NSelectSearchCount(searchTitle,searchWord); 
		System.out.println("NServiceImpl countAll : "+countAll);
		int maxPage = (int)Math.ceil((double)countAll/countPerPage);
		System.out.println("NServiceImpl maxPage : "+maxPage);
		
		int startPage = ((page-1)/bottomPerNum)*bottomPerNum+1;   
		int endPage = (startPage+bottomPerNum)-1;
		int startRow = (page-1)*countPerPage+1; 
		int endRow = startRow+countPerPage-1;   
		
		
		if(endPage>maxPage) endPage=maxPage;
		ArrayList<NBoardDto2> list = nBoardMapper2.NSelectSearch(startRow,endRow,searchTitle,searchWord);
		
		Map<String, Object> map = new HashMap<>();
		map.put("list", list);
		map.put("page", page);
		map.put("maxPage", maxPage);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		
		return map;
	}

	//공지사항 리스트 1개 가져오기
	@Override
	public Map<String, Object> NlistSelectOne(int bno) {
		//현재번호글 가져오기
		NBoardDto2 ndto2 = nBoardMapper2.NlistSelectOne(bno);
		//이전번호글 가져오기
		NBoardDto2 prendto2 = nBoardMapper2.preSelectOne(bno);
		//다음번호글 가져오기
		NBoardDto2 nextndto2 = nBoardMapper2.nextSelectOne(bno);	
		
		//fBoardMapper.f_bhitUp(bno);
		
		Map<String, Object> map = new HashMap<>();
		map.put("ndto2", ndto2);
		map.put("prendto2", prendto2);
		map.put("nextndto2", nextndto2);
		return map;
	}




}
