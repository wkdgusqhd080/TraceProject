<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html lang="kor">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>발자취 - 발견하라 자신의 취미를</title>
  
  <!-- JQuery사용용도--> 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  
  <!-- 회원가입 CheckByteLen용도 -->
  <script src="../js/trim.js"></script>
  <!-- Bootstrap core CSS -->
  <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  
  <!-- Custom styles for this template -->
  <link href="../css/modern-business.css" rel="stylesheet">
  <!-- Paging CSS -->
  <link href="../css/paging.css" rel="stylesheet">
  <!-- 평점 CSS -->
  <link href="../css/star.css" rel="stylesheet">

  
  <!-- 버튼/카트 HOVER CSS -->
  <link href="../css/lazy.css" rel="stylesheet">


  <!-- 검색 자동완성-->
  <script src="../auto/AutoComplete.js" type="text/javascript"></script>

  <link href="../auto/AutoComplete.css" rel="stylesheet">
  
  
  <%-- 
	<!-- css에는 autocomplet의 요소를 만들떄 필요한 css가 담겨져 있습니다. --> 
	<link rel="stylesheet" href="../auto2/autoComplete.css"> 
	<!-- css에는 autocomplet의 요소를 만들떄 필요한 scrpit가 담겨져 있습니다. -->
	<script type="text/javascript" src="../auto2/autoComplete.js"></script>
	<script type="text/javascript" src="../auto2/animal.js"></script>
	--%>

</head>
<style>
.nav-counter {
 position:relative;
 height: 20px;
 padding: 0 6px;
 font-weight: normal;
 font-size: small;
 color: white;
 text-align: center;
 text-shadow: 0 1px rgba(0, 0, 0, 0.2);
 background: #e23442;
 border: 1px solid #911f28;
 border-radius: 11px;
 background-image: -webkit-linear-gradient(top, #e8616c, #dd202f);
 background-image: -moz-linear-gradient(top, #e8616c, #dd202f);
 background-image: -o-linear-gradient(top, #e8616c, #dd202f);
 background-image: linear-gradient(to bottom, #e8616c, #dd202f);
 -webkit-box-shadow: inset 0 0 1px 1px rgba(255, 255, 255, 0.1), 0 1px rgba(0, 0, 0, 0.12);
 box-shadow: inset 0 0 1px 1px rgba(255, 255, 255, 0.1), 0 1px rgba(0, 0, 0, 0.12);

}

</style>
<body>

  <!-- Navigation -->
  <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top" style="background-color :#ffffff !important" >  <!-- 머리색 -->
    <div class="container" style="max-width:80% !important;">
      <a class="navbar-brand" href="/"><img src="../images/로고1.png" width="120" height="50" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	</a>
	
	<!-- 검색 onkeyup="find(this)"-->
	<!-- 검색 -->
		
	  <div class="autocomplete" style="width:300px;">
	  	
	  <input name="cur" class="sc-iuJeZd kCAAcw" type="text" style="text-align:center; width:200%; height: 40px;background:#f2f9ff; border-radius:15px;margin-left:100px;" id="searchBar" placeholder="멘토링 or 태그 검색" onkeyup="find(this);"/>
	  
	  <%----%>
	  <div id="searchBarautocomplete-list" class="autocomplete-items" style="margin-left:33%;width:200%;">
	  </div>
	   
	  
      </div>
      <%-- 
      <input type="hidden" id="keywords" value="">
 	  <div id="searchOpt" style="color:red;"></div>
 	  
      <input type="hidden" id="findFlag" value="Off">
      --%>
	  <!--  &nbsp;&nbsp;&nbsp;-->
	  <!--  <button class="btn btn-primary" id="searchBtn" onclick="find()">검색</button>-->
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto" >
          <li class="nav-item">
              <a class="nav-link" href="../mentoring/mentoring_list.do?sort=99" style="color:black;">멘토링</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../mentor/mentor_apply.do" style="color:black;">멘토신청</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../hobbytest/hobby_test.do" style="color:black;">취미테스트</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../notice/list.do" style="color:black;">공지사항</a>
          </li>
          
            <!-- 로그인했을 시 나오게끔 -->
	          <c:if test="${!empty loginUser}">
	          <li class="nav-item dropdown">
	          
	          <c:choose>
	          
	          <c:when test="${loginUser.mem_auth == 0}">
		          	<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="color:black;">
	              		${loginUser.mem_nick} 님
	                </a>
		          </c:when>
		          
	          <c:when test="${loginUser.mem_auth == 1}">
		            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="color:black;">
		              	${loginUser.mem_nick} 멘토님
		            </a>
		          </c:when>
		          
		          <c:otherwise>
		            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="color:black;">
		              	${loginUser.mem_nick} 님
		            </a>
		          </c:otherwise>
    
	          </c:choose>

	            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog" >
	              <a class="dropdown-item" href="../mypage/myInfo.do" >마이페이지</a>
	              <a class="dropdown-item" href="../mypage/myInfo.do">회원정보 수정</a>
	              <a class="dropdown-item" href="../mypage/myActivity.do?mem_email=${loginUser.mem_email}">나의 활동내역</a>
	              <a class="dropdown-item" href="../cart/cart.do?mem_email=${loginUser.mem_email}">장바구니</a>
	              <c:if test="${loginUser.mem_auth > 0}">
	              <a class="dropdown-item" href="../mentoring/mentoringWriteForm.do">멘토링등록하기</a>
	              </c:if>
	              <a class="dropdown-item" href="../login/logout.do">로그아웃</a>
	            </div>
	          </li>
	          
	         <!-- 관리자로그인 했을시 나오게끔 -->
	         <c:if test="${loginUser.mem_email eq 'admin'}">
		          <li class="nav-item">
		            <a class="nav-link" href="../admin/search.do?cp=1&keyword=" style="color:black;" >
		              	관리자 페이지
		            </a>
		          </li>
	          </c:if>
	          <!--  <img src="../images/cartImg.jpg" width="30px" height="30px"/>-->
	          <img src="../images/cartImg2.png" width="22px" height="22px" onclick="location.href='../cart/cart.do?mem_email=${loginUser.mem_email}'" style="margin-top:7px"/>
		          <c:if test="${cartCount ne 0}">
		          	<span id="cart_tot_count" class="nav-counter">${cartCount}</span>
		          </c:if>
	          </c:if>
           <!-- 로그인안했을 시 나오게끔 -->
	      <c:if test="${empty loginUser}">
		          <li class="nav-item">
		            <a class="nav-link" href="../login/login.do" style="color:black;">로그인</a>
		          </li>
          </c:if>
        </ul>
      </div>
    </div>
  </nav>
  
<script type="text/javascript">
String.prototype.replaceAll = function(org, dest) {
    return this.split(org).join(dest);
}
arr = [];
currentFocus = -1;
function find(e) {
	var word = document.getElementById('searchBar').value;
	
	if($("#searchBar").val() == "") {
		$("#searchBarautocomplete-list *").remove();
	}
	
	if($("#searchBar").val() != "") {
		if(event.keyCode == 13) {
			var w =  word.indexOf("#");
			var w2 = word.indexOf("^");
			var w3 = word.indexOf("\\");
			if(w2 != -1) {
				word = word.replaceAll("^", " ");
			}
			if(w3 != -1) {
				word = word.replaceAll("\\", " ");
			}
				if(w == -1) {//일반검색시//alert("#포함안됨" + word)
					location.href="../mentoring/searchList.do?word="+word+"&cp=1";
				}
				else {//#검색시
					word = word.replace("#","샵");
					location.href="../mentoring/searchList.do?word="+word+"&cp=1";
				}
			}else if(event.keyCode == 40){				//alert("다운키");
				var x = document.getElementById("searchBarautocomplete-list");
				if (x) x = x.getElementsByTagName("div");
				currentFocus++;
				addActive(x);
		        $("#searchBar").val($(".autocomplete-active").text());
		        return false;
			}else if(event.keyCode == 38) {				//alert("업키");
				var x = document.getElementById("searchBarautocomplete-list");
				if (x) x = x.getElementsByTagName("div");
				currentFocus--;
				addActive(x);
				$("#searchBar").val($(".autocomplete-active").text());
			}else {
				$.ajax({
					type: "POST",
					contentType: "application/json",
					data: JSON.stringify($("#searchBar").val()),
					url: "../mentoring/autoSearch.do",
					success: function(data) {
						var l = arr.length;
						arr.splice(0, l);

						$("#searchBarautocomplete-list *").remove();
						
						//closeAllLists();
							for(m of data.list) {
								//arr.push(m);
								var b = document.createElement("DIV");
								//b.innerHTML = "<strong style='color:red'>"+m.substr(0,$("#searchBar").val().length)+"</strong>";
								//b.innerHTML += m.substr($("#searchBar").val().length);
								//b.innerHTML += "<input type='hidden' id = 'bong' value='" + m + "'>";
								b.innerHTML = m;
								$("#searchBarautocomplete-list").append(b);
							}
					},
					error: function(err) {
						console.log("err: "+err);
					}
				});
			}
			//location.href="../mentoring/searchList.do?word="+word+"&cp=1";
		
	}else {
		//alert("검색어를 입력해주세요.");
		//$("#searchBar").focus();
		return false;
	}
	
}

</script>
<script>

function addActive(x) {
	//alert("x: " + x);
    /*a function to classify an item as "active":*/
    if (!x) return false;
    /*start by removing the "active" class on all items:*/
    removeActive(x);
    if (currentFocus >= x.length) currentFocus = 0;
    if (currentFocus < 0) currentFocus = (x.length - 1);
    /*add class "autocomplete-active":*/
    x[currentFocus].classList.add("autocomplete-active");
  }
function removeActive(x) {
    /*a function to remove the "active" class from all autocomplete items:*/
    for (var i = 0; i < x.length; i++) {
      x[i].classList.remove("autocomplete-active");
    }
  }
function closeAllLists(elmnt) {
    /*close all autocomplete lists in the document,
    except the one passed as an argument:*/
    var x = document.getElementsByClassName("autocomplete-items");
    
    for (var i = 0; i < x.length; i++) {
      if (elmnt != x[i] && elmnt != document.getElementById("searchBar")) {
      x[i].parentNode.removeChild(x[i]);
    }
  }
    
}
	//var str = arr;
	//autocomplete(document.getElementById("searchBar"), str);
</script>

