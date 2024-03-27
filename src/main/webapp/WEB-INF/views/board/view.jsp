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
      	  <td colspan = "3">${ bo.content }</td>
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
      	  <td colspan="4"><a class="btn btn-info btn-sm" href="/Board/WriteForm?menu_id=${bo.menu_id}">새 글쓰기</a>&nbsp;&nbsp;
      	  </td>
      	  <td colspan="4"><a class="btn btn-warning btn-sm" href="/Board/UpdateForm?bno=${bo.bno}&menu_id=${bo.menu_id}">글 수정</a>&nbsp;&nbsp;
      	  </td>
      	  <td colspan="4"><a class="btn btn-danger btn-sm" href="/Board/Delete?bno=${bo.bno}&menu_id=${menu_id}">글 삭제</a>&nbsp;&nbsp;
      	  </td>
      	  <td colspan="4"><a class="btn btn-primary btn-sm" href="/Board/List?menu_id=${bo.menu_id}">글 목록</a>&nbsp;&nbsp;
      	  </td>
      	  <td colspan="4"><a class="btn btn-link btn-sm" href="javascript:history.back()">이전으로</a>&nbsp;&nbsp;
      	  </td>
      	  <td colspan="4"><a class="btn btn-success btn-sm" href="/">HOME</a>&nbsp;&nbsp;
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