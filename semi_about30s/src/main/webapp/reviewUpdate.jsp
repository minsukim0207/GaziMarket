<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="semi.review.*"%> 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="./css/reviewUpdate.css">
		<title>가지고 싶은 물건, 가지가지 다~ 있다! 가지마켓</title>
		<script src="https://kit.fontawesome.com/def66b134a.js" crossorigin="anonymous"></script>
	</head>
	<body>
		<div class="wrap">
        	<div class="inner">
		        <div>
					<%
			        if (session.getAttribute("USER_NAME") != null) {
			    	%>
			    	<% String user_name = (String)session.getAttribute("USER_NAME"); %>
			    	<p class="sessionState"><%= user_name %>님 환영합니다! &nbsp;&nbsp;<a href="logout.jsp">로그아웃</a></p>
			    	<%
			        } else {
			    	%>
					<p class="sessionState"><a href="login.jsp">로그인</a> &nbsp;&nbsp; <a href="register.jsp">회원가입</a></p>
				    <%
				        }
				    %>
					<header>
	                    <div class="logo">
	                        <a href="mainpage.jsp" style="text-decoration: none;"><p class="gajimarket">가지마켓</p></a>
	                    </div>
	                    <div class="mascot">
	                        <a href="mainpage.jsp"><img src="./img/gajidori.png" alt="gajidori" class="gajidori"></a>
	                    </div>
	                </header>
	                <nav>
                    	<ul>
	                        <li><a id="li_link" href="BoardList.jsp" style="text-decoration: none;">자유게시판</a></li>
	                        <li><a id="li_link" href="reviewList.jsp" style="text-decoration: none;">리뷰게시판</a></li>
	                        <li><a id="li_link" href="QnAList.jsp" style="text-decoration: none;">문의게시판</a></li>
	                        <li><a id="li_link" href="productRetrieve.jsp" style="text-decoration: none;">마이페이지</a></li>
	                    </ul>
	                </nav>
		        </div>
				<div class="mainform">
					<form action="ReviewUpdateServlet" method="post" enctype="multipart/form-data">
						<div class="maintable"><br>
			                <input type="text" placeholder='제목을 수정해주세요.' id="REVIEW_TITLE" name="REVIEW_TITLE" required><br><br>
			                <textarea rows="5" placeholder='내용을 수정해주세요.' id="REVIEW_TEXT" name="REVIEW_TEXT" required></textarea><br>
			                <input type="text" placeholder='수정할 게시글의 번호를 입력해주세요.' id="REVIEW_NO" name="REVIEW_NO" required><br><br>
							<div class="buttons">
								<button class="btn1" id="listButton"><a id="aTag" ="reviewList.jsp">목록</a></button>
								<button class="btn1" id="updateButton" type="submit" onclick="updatebutton()">수정</button>
								<button class="btn1" id="deleteButton" ><a id="aTag" href ="reviewList.jsp">취소</a></button>
							</div>
						</div>
		            </form>
		        </div>
		        <div class="returnMain">
		        	<a href="reviewList.jsp">
		        		<img src="./img/goToMain.jpg" width="120px">
	        		</a>
	        	</div>
			<footer>
				<p>회사소개 | 인재채용 | 제휴제안 | 이용약관 | 개인정보처리방침 | 청소년보호정책 | 고객센터 | GAZI Corp.</p>
			</footer>
	        </div>
	    </div>
	</body>
</html>
