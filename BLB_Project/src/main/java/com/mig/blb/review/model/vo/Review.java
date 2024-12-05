package com.mig.blb.review.model.vo;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
@ToString
public class Review {
	
	private int revNo;					//	REV_NO	NUMBER
	private String revTitle;			//	REV_TITLE	VARCHAR2(300 BYTE)
	private String revContent;			//	REV_CONTENT	VARCHAR2(1500 BYTE)
	private Timestamp revEnrollDate;	//	REV_ENROLL_DATE	DATE
	private float revRating; 			//	REV_RATING	NUMBER
	private String revStatus;			//	REV_STATUS	CHAR(1 BYTE)
	private String orderNo;				//	ORDER_NO	VARCHAR2(50 BYTE)
	private String memberId;			//	MEMBER_ID	VARCHAR2(20 BYTE)

}
