package com.mig.blb.cart.model.service;

import java.util.ArrayList;

import com.mig.blb.cart.model.vo.Cart;

public interface CartService {
	
	// 장바구니 목록 조회 서비스 + 페이징 처리
	// 장바구니 총 개수 조회
//	int selectCartListCount();
	
	// 장바구니 목록 조회
	ArrayList<Cart> selectCartList(String MemberId);

	// 장바구니 X버튼으로 1개 상품만 삭제
	int deleteCartOne(int cartNo);

	// 장바구니 체크박스 선택 삭제
	int deleteCheckItems(String cartNos);
	
}
