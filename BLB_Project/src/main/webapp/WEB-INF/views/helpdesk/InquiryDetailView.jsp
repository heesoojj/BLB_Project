<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>문의 상세</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/helpdesk/InquiryDetailView.css"> <!-- 스타일 시트 링크 -->
</head>
<body class="body-offset">
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<div class="container-fluid">
    <div class="container">
        <h2>문의사항 상세 보기</h2>

        <!-- 상단 내비게이션 -->
        <nav>
            <ul>
                <li><a href="${ pageContext.request.contextPath }/list.io">목록</a></li>
                
            </ul>
        </nav>

        <!-- 문의내용 -->
        <div class="inquiry-detail">
            <h3>문의 내용</h3>
            <p><strong>상품명:</strong> ${requestScope.i.prodName }</p>
            <p><strong>문의번호:</strong> ${requestScope.i.inquiryNo}</p>
            <p><strong>문의자:</strong> ${requestScope.i.memberId}</p>
            <p><strong>문의일:</strong> ${requestScope.i.inquiryCreateDate}</p>
            <p><strong>내용:</strong> ${requestScope.i.inquiryContent}</p>
            
            <div class="text-content">
                <p>${ requestScope.i.inquiryContent }</p>
                <br>
                <c:choose>
               		<c:when test="${ empty requestScope.iatt }">
               		    첨부파일이 없습니다.
               		</c:when>
               		<c:otherwise>
               			<c:forEach var="p" items="${ requestScope.iatt }">
               				<img src="${pageContext.request.contextPath }/${ p.savePath }${p.saveFileName}" width="1200px;">
               			</c:forEach>
               		</c:otherwise>
               	</c:choose>
            </div>
        </div>

        <!-- 댓글 섹션 -->
        <div class="comments-section">
            <h3>댓글</h3>

            <!-- 댓글 목록 -->
            <table id="commentsTable">
                <thead>
                    <tr>
                        <th>작성자</th>
                        <th>내용</th>
                        <th>작성일</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="ir" items="${requestScope.ir.inquiryReply}">
                        <tr>
                            <td>${ir.inquiryReplyNo}</td>
                            <td>${ir.inquiryReplyContent}</td>
                            <td>${ir.inquiryReplyCreateDate}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>

            <!-- 댓글 작성 폼 -->
            <form id="commentForm">
                <input type="hidden" name="inquiryNo" value="${requestScope.i.inquiryNo}">
                <textarea id="commentContent" name="commentContent" rows="3" placeholder="댓글을 남기세요"></textarea><br>
                <button type="button" id="submitComment">댓글 등록</button>
            </form>
        </div>
    </div>
    	<form action="${ pageContext.request.contextPath }/InquiryUpdateForm.io" method="post">
        	<input type="hidden" name="ino" value="${requestScope.i.inquiryNo}">
        	<button type="submit">수정</button>                	
        </form>
        <form action="${ pageContext.request.contextPath }/InquiryDelete.io" method="post">
        	<input type="hidden" name="ino" value="${requestScope.i.inquiryNo}">
        	<button type="submit">삭제</button>                	
        </form>
	</div>
    <script src="${pageContext.request.contextPath}/resources/js/helpdesk/Inquiry.js"></script> <!-- JS 파일 경로 -->
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>
