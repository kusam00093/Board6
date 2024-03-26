<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List</title>
<link rel = "stylesheet" href="/css/common.css">
<link rel="icon" type="image/png" href="/img/favicon.png">
<script src="https://cdn.jsdelivr.net/npm/browser-scss@1.0.3/dist/browser-scss.min.js"></script>
<style>
  td{
  	padding : 10px;
  	width  : 150px;
  	text-align : center;
  }
  
  tr:first-child{
   	background-color: black;
   	color : white;
   	font-weight : bolder;
   	td{
   		border-color : violet;   	
   	 }   	
  }
  /*
  tr:first-child> td {
  	border-color : white;
  }*/
    
  tr:nth-child(2)> td{
  	text-align : right;
  }
</style>
</head>
<body>
  <main>
    <h2>게시물 목록</h2>
    <table>
      <tr>
	    <td>번호</td>	     
	    <td>제목</td>	     
	    <td>작성자</td>	     
	    <td>등록일</td>	     
	    <td>조회수</td>	     
      </tr>
      <tr>
      <td colspan = "5">
		 [<a href = "/Menus/WriteForm">새 글추가</a>    ]&nbsp;&nbsp;&nbsp;  
      </td>
      </tr>
     <c:forEach  var="board" items="${ boardList }">
      <tr>
	    <td>${board.bno}</td>	     
	    <td><a href="/Board/View?title=${board.title}">${board.title}</a></td>	     
	    <td>${board.writer}</td>	     
	    <td>${board.regdate}</td>	     
	    <td>${board.hit}</td>	     
      </tr>
      </c:forEach>
    </table>
  </main>

</body>
</html>