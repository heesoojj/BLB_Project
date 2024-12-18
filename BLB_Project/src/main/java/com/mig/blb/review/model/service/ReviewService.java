package com.mig.blb.review.model.service;

import java.util.ArrayList;
import java.util.Map;

import com.mig.blb.common.model.vo.PageInfo;
import com.mig.blb.review.model.vo.Review;

public interface ReviewService {
	
	// 리뷰 총 갯수 조회
	int selectReviewCount(int prodNo);
	// 리뷰 목록조회
	ArrayList<Review> selectReviewList(PageInfo revPi, int prodNo);
	// 리뷰 평균별점 처리
	Map<String, Object> selectReviewStats(int prodNo);

}
