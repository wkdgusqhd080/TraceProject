<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html lang="kor">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>발자취 - 발견하라 자신의 취미를</title>

    <!-- Bootstrap Core CSS -->
    <link href="../resources/admin/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../resources/admin/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../resources/admin/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../resources/admin/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="../admin/dashboard.do">관리자 페이지</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-messages">
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>Read All Messages</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-messages -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-tasks fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-tasks">
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 1</strong>
                                        <span class="pull-right text-muted">40% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                            <span class="sr-only">40% Complete (success)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 2</strong>
                                        <span class="pull-right text-muted">20% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                            <span class="sr-only">20% Complete</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 3</strong>
                                        <span class="pull-right text-muted">60% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (warning)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 4</strong>
                                        <span class="pull-right text-muted">80% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                            <span class="sr-only">80% Complete (danger)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Tasks</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-tasks -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-alerts">
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-comment fa-fw"></i> New Comment
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                    <span class="pull-right text-muted small">12 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-envelope fa-fw"></i> Message Sent
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-tasks fa-fw"></i> New Task
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Alerts</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-alerts -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" id="search_input1" placeholder="회원 검색">
                                <span class="input-group-btn">
                                <button type="submit" class="btn btn-default" id="search_button1">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                            </div>
                            <!-- /input-group -->
                        </li>
                        <li>
                            <a href="../admin/search.do?cp=1&keyword="><i class="fa fa-table fa-fw"></i> 회원정보</a>
                        </li>
                        <li>
                            <a href="../admin/mentor_info.do"><i class="fa fa-sitemap fa-fw"></i> 멘토정보</a>
                        </li>
                        <li>
                            <a href="../admin/disabled_info.do"><i class="fa fa-dashboard fa-fw"></i> 탈퇴정보</a>
                        </li>
                        <li>
                            <a href="../admin/charts.do"><i class="fa fa-bar-chart-o fa-fw"></i> 차트</a>
                        </li>
                        <li>
                            <a href="../admin/notice_form.do"><i class="fa fa-edit fa-fw"></i> 공지사항 작성</a>
                        </li>
                        <li>
                            <a href="../"><i class="fa fa-edit fa-fw"></i> 메인페이지로</a>
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

       <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">탈퇴정보</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            	disabled information
                        </div>
                          
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="">
							<select id="psId" name="ps" onchange="f(this)">
								<c:choose>
						           <c:when test="${mentorListResult.pageSize == 5}">
								  	   <option value="5" selected>5</option>
								       <option value="15">15</option>
								       <option value="30">30</option>
							       </c:when>
							       <c:when test="${mentorListResult.pageSize == 15}">
								  	   <option value="5">5</option>
								       <option value="15" selected>15</option>
								       <option value="30">30</option>
							       </c:when>
							       <c:when test="${mentorListResult.pageSize == 30}">
								  	   <option value="5">5</option>
								       <option value="15">15</option>
								       <option value="30" selected>30</option>
							       </c:when>
						       </c:choose>
						    </select>
                            	개씩 보기
                            	<script language="javascript">
							       function f(select){
							           var el = document.getElementById("psId");
							           var ps = el.value;
							           location.href="../admin/mentor_info.do?ps="+ps;
							       }
							    </script>
                                <thead>
                                    <tr>
                                        <th>이름</th>
                                        <th>이메일</th>
                                        <th>휴대폰번호</th>
                                        <th>멘토링카테고리</th>
                                        <th>첨부파일</th>
                                        <th>멘토신청</th>
                                    </tr>
                                </thead>
                                <tbody>
                                	<c:forEach items="${mentorListResult.mentor_list}" var="list">
                                	
                                    <tr>
                                        <td>${list.ml_name}</td>
                                        <td>${list.mem_email}</td>
                                        <td>${list.ml_phone}</td>
                                        
                                        <c:if test="${list.mtrcg_no eq 0}"> 
                                        <td>운동</td>
                                        </c:if>
                                        <c:if test="${list.mtrcg_no eq 1}"> 
                                        <td>음악</td>
                                        </c:if>
                                        <c:if test="${list.mtrcg_no eq 2}"> 
                                        <td>공예</td>
                                        </c:if>
                                        <c:if test="${list.mtrcg_no eq 3}"> 
                                        <td>요리</td>
                                        </c:if>
                                        <c:if test="${list.mtrcg_no eq 4}"> 
                                        <td>사진 & 영상</td>
                                        </c:if>
                                        <c:if test="${list.mtrcg_no eq 5}"> 
                                        <td>뷰티</td>
                                        </c:if>
                                        <c:if test="${list.mtrcg_no eq 6}"> 
                                        <td>음료</td>
                                        </c:if>
                                        <td><a href="#" style="cursor:pointer;" onClick="window.open('../mentor_business_images/${list.ml_fname}','_blank','width=1500, height=800, location=no, scrollbars=yes, status=no')">${list.ml_ofname}</a></td>
                                        
                                        <c:if test="${list.ml_apply eq 0}">
                                        	<td>승인 완료</td>
                                        </c:if>
                                        <c:if test="${list.ml_apply eq 1}">
                                        	<td><button onclick="javascript:location.href='../admin/mentor_approved.do?mem_email=${list.mem_email}'" class="btn btn-success">멘토 승인</button>
                                        	<button onclick="javascript:location.href='../admin/mentor_disapproved.do?mem_email=${list.mem_email}'" class="btn btn-danger">멘토 거부</button></td>
                                        </c:if>
                                    </tr>
                                    </c:forEach>
                                </tbody>
                               
                            </table>
                            	발자취 총 멘토 수 : ${mentorListResult.totalCount} 명
                             <div class="board_paging" align="center">
									<button  onclick="javascript:location.href='../admin/mentor_info.do?cp=1'">&#x000AB;</button>
									<c:if test="${mentorListResult.currentPage ne 1}">
									<button  onclick="javascript:location.href='../admin/mentor_info.do?cp=${mentorListResult.currentPage-1}'">&#x02039;</button>
									</c:if>
									<c:forEach begin="1" end="${mentorListResult.totalPageCount}" var="i">
											<c:choose>
												<c:when test="${i==mentorListResult.currentPage}">
													<button onclick="javascript:location.href='../admin/mentor_info.do?cp=${i}'" class="on"><strong>${i}</strong></button>
												</c:when>
											<c:otherwise>
												 <button onclick="javascript:location.href='../admin/mentor_info.do?cp=${i}'">${i}</button>
											</c:otherwise>
											</c:choose>
									</c:forEach>
									<c:if test="${mentorListResult.currentPage ne mentorListResult.totalPageCount}">
									<button  onclick="javascript:location.href='../admin/mentor_info.do?cp=${mentorListResult.currentPage+1}'">&#x0203A;</button>
									</c:if>
									<button  onclick="javascript:location.href='../admin/mentor_info.do?cp=${mentorListResult.totalPageCount}'">&#x000BB;</button>

								</div>
                            <!-- /.table-responsive -->
                            
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>
    
		

    

    <!-- jQuery -->
    <script src="../resources/admin/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../resources/admin/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../resources/admin/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../resources/admin/dist/js/sb-admin-2.js"></script>
	
	<script>
	$(document).ready(function() {
		$('#search_button1').click(function(){
			var keyword = $('#search_input1').val();
			location.href="../admin/search.do?keyword="+keyword;
		});
		$('#search_input1').keypress(function(event){
		     if ( event.which == 13 ) {
		         $('#search_button1').click();
		         return false;
		     }
		});
		
	});
</script>
</body>

</html>
