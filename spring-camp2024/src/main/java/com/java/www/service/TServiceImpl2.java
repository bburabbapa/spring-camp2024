package com.java.www.service;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.www.dto.BoardDto;
import com.java.www.dto.FBoardDto;
import com.java.www.dto.TBoardDto;
import com.java.www.dto.TBoardDto2;
import com.java.www.mapper.TBoardMapper;
import com.java.www.mapper.TBoardMapper2;

@Service
public class TServiceImpl2 implements TService2 {
	
	@Autowired
	TBoardMapper2 tBoardMapper2;

	//꿀팁게시판(메인용)
	@Override
	public ArrayList<TBoardDto2> TSelectAll() {
		ArrayList<TBoardDto2> t_list  =  tBoardMapper2.TSelectAll();
		return t_list;
	}

	//꿀팁게시판 리스트 가져오기
	@Override
	public Map<String, Object> TlistSelectAll(int page, String searchTitle, String searchWord) {
		if (page <= 0)
			page = 1;
		int rowPerPage = 10; 
		int bottomNum = 10; 
		int fcountAll = tBoardMapper2.TlistSelectCountAll(searchTitle, searchWord); 
		int maxPageNum = (int) Math.ceil((double) fcountAll / rowPerPage);
		int startPageNum = ((page - 1) / 10) * 10 + 1; 
		int endPageNum = (startPageNum + bottomNum) - 1; 

		int startRow = (page - 1) * rowPerPage + 1; 
		int endRow = startRow + rowPerPage - 1; 
		if (endPageNum > maxPageNum)
			endPageNum = maxPageNum;
		ArrayList<TBoardDto2> list = tBoardMapper2.TlistSelectAll(startRow, endRow, searchTitle, searchWord);
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

	//꿀팁게시판 검색 리스트 가져오기
	@Override
	public Map<String, Object> TSelectSearch(int page, String searchTitle, String searchWord) {
		if(page<=0) page=1;
		int countPerPage = 10; 
		int bottomPerNum = 10; 
		int countAll = tBoardMapper2.TSelectSearchCount(searchTitle,searchWord); 
		System.out.println("TServiceImpl countAll : "+countAll);
		int maxPage = (int)Math.ceil((double)countAll/countPerPage);
		System.out.println("TServiceImpl maxPage : "+maxPage);
		
		int startPage = ((page-1)/bottomPerNum)*bottomPerNum+1;   
		int endPage = (startPage+bottomPerNum)-1;
		int startRow = (page-1)*countPerPage+1; 
		int endRow = startRow+countPerPage-1;   
		
		
		if(endPage>maxPage) endPage=maxPage;
		ArrayList<TBoardDto2> list = tBoardMapper2.TSelectSearch(startRow,endRow,searchTitle,searchWord);
		
		Map<String, Object> map = new HashMap<>();
		map.put("list", list);
		map.put("page", page);
		map.put("maxPage", maxPage);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		
		return map;
	}
	
	//꿀팁게시판 리스트 1개 가져오기
	@Override
	public Map<String, Object> TlistSelectOne(int bno) {
		//현재번호글 가져오기
		TBoardDto2 tdto2 = tBoardMapper2.TlistSelectOne(bno);
		//이전번호글 가져오기
		TBoardDto2 pretdto2 = tBoardMapper2.preSelectOne(bno);
		//다음번호글 가져오기
		TBoardDto2 nexttdto2 = tBoardMapper2.nextSelectOne(bno);	
		
		//fBoardMapper.f_bhitUp(bno);
		
		Map<String, Object> map = new HashMap<>();
		map.put("tdto2", tdto2);
		map.put("pretdto2", pretdto2);
		map.put("nexttdto2", nexttdto2);
		return map;
	}


}
