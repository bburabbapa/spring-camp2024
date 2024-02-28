package com.java.www.service;

import java.util.ArrayList;

import com.java.www.dto.CppRDto;
import com.java.www.dto.Cps_reviewDto;
import com.java.www.dto.FBoardDto;
import com.java.www.dto.PBoardDto;
import com.java.www.dto.TBoardDto;
import com.java.www.dto.UsedDto;

public interface MyBoardService {

	//자유게시판 리스트(게시물 3개) 가져오기
	ArrayList<FBoardDto> fbList(String id);
	//캠핑장리뷰 리스트(게시물 3개) 가져오기
	ArrayList<Cps_reviewDto> cpsRList(String id);
	//캠핑꿀팁 리스트(게시물 3개) 가져오기
	ArrayList<TBoardDto> tList(String id);
	//캠핑용품리뷰 리스트(게시물 3개) 가져오기
	ArrayList<CppRDto> cppRList(String id);
	
	
	//내가 쓴 글(중고거래)
	ArrayList<UsedDto> myUsedOne(String id);
	//내가 쓴 글(캠핑장리뷰)
	ArrayList<Cps_reviewDto> myCpsReview(String id);
	//내가 모집한 파티
	ArrayList<PBoardDto> myParty(String id);
	//마이 파티 리스트
	ArrayList<PBoardDto> myPartyList(String id);
	

}//MyBoardService
