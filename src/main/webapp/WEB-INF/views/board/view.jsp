<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="/img/favicon.png">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="/css/common.css">
<title>View</title>
<style>
input:not(input[type=submit]){
	width : 100%;
}
input[type="submit"]{
	width : 100px;
}
#goList {
	width : 100px;
}

td:not([colspan]):first-child{
	background-color: black;
	color : white;
	font-weight : bolder;
}

td{
	padding : 10px;
	width : 800px;
}
td:nth-of-type(1){
	width : 200px;
	text-align : center;
}
td:nth-of-type(2){
	text-align : left;
}

input[readonly]{
	background: #ddd;
	
}
</style>
</head>  
<body>
  <main>
     <%@include file="/WEB-INF/include/menus.jsp" %>
    <h2>게시물 상세정보</h2>
      <table>
      	<tr>
      	  <td>번호</td>
      	  <td>${ bo.bno }</td>
      	</tr>
      	<tr>
      	  <td>메뉴번호</td>
      	  <td>${ bo.menu_id }</td>
      	</tr>
      	<tr>
      	  <td>제목</td>
      	  <td>${ bo.title }</td>
      	</tr>
      	<tr>
      	  <td>글쓴사람</td>
      	  <td>${ bo.writer }</td>
      	</tr>
      	<tr>
      	  <td>내용</td>
      	  <td>${ bo.content }</td>
      	</tr>
      	<tr>
      	  <td>등록일</td>
      	  <td>${ bo.regdate }</td>
      	</tr>
      	<tr>
      	  <td>조회수</td>
      	  <td>${ bo.hit }</td>
      	</tr>
      	
      	<tr>
      	  <td colspan = "2">
      	  <a class="btn btn-primary" role="button" 
      	  href="/Board/WriteForm?menu_id=${bo.menu_id }" >게시물 등록</a>
      	  <a class="btn btn-primary" role="button" 
      	  href="/Board/UpdateForm?bno=${bo.bno}" >게시물 수정</a>
      	  <a class="btn btn-primary" role="button" 
      	  href="/Board/Delete?bno=${bo.bno}" >게시물 삭제</a>
      	  <a class="btn btn-primary" role="button" 
      	  href="/Board/List?menu_id=${bo.menu_id}" >회원목록</a>
      	  <a class="btn btn-primary" role="button" 
      	  href="/" >HOME</a>

      	  </td>
      	</tr>
      
      
      
      </table>
                
  </main>
	<script>
	  const goListEl = document.getElementById('goList');
	  goListEl.addEventListener('click',function(e){
		  location.href = '/';
	  })
	</script>
</body>
</html>