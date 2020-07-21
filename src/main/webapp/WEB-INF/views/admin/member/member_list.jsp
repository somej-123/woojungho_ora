<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="../include/header.jsp" %>

<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">DashBoard Management</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Starter Page</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    
     <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">멤버 검색</h3>
              </div>
             </div>
      </div>
      <form action="/admin/member/list">
        <div class="col-3" style="display:inline-block" >
            <select name="searchType" class="form-control">
              <option value="all">전체</option>
            </select>
        </div>
        <div class="search" style="display:inline">
			<input type="text" name="searchKeyword" placeholder="">
			<div class="button" style="display:inline">
			   <button>검색</button>
			</div>
		</div>
        </form>    
</div>
    
    
    
        <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">LIST ALL PAGE</h3>

                <div class="card-tools">
                  <div class="input-group input-group-sm" style="width: 150px;">
                    <input type="text" name="table_search" class="form-control float-right" placeholder="Search">

                    <div class="input-group-append">
                      <button type="submit" class="btn btn-default"><i class="fas fa-search"></i></button>
                    </div>
                  </div>
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body table-responsive p-0">
                <table class="table table-hover text-nowrap">
                  <thead>
                    <tr>
                      <th>user_id</th>
                      <th>user_name[point]</th>
                      <th>email</th>
                      <th>Use</th>
                      <th>REGDATE</th>
                      <th>level</th>
                    </tr>
                  </thead>
                  <tbody>
                    <c:forEach items="${memberList}" var="memberVO" varStatus="status">
                    <tr>
                      <td>${memberVO.user_id}</td>
                      <td><a href="/admin/member/view?user_id=${memberVO.user_id}&page=${pageVO.page}">${memberVO.user_name}[${memberVO.point}]</a></td>
                      <td>${memberVO.email}</td>
                      <td><span class="tag tag-success">${memberVO.enabled}</span></td>
                      <td>
                      <fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${memberVO.reg_date}" />
                      </td>
                      <td><small class="badge badge-danger">${memberVO.levels}</small></td>
                    </tr>                    
                    </c:forEach>
                  </tbody>
            <td> <a href="/admin/member/write" class="btn btn-primary">CREATE</a>
               </td>
           <td>
           <nav aria-label="Contacts Page Navigation">
          	<ul class="pagination" style="position:relative;left:40%;">
          	<c:if test="${pageVO.prev}">
       		<li class="page-item">
          		<a class="page-link" href="/admin/member/list?page=${pageVO.startPage-1}&searchType=${pageVO.searchType}&searchKeyword=${pageVO.searchKeyword}">이전</a>
       		</li>
          	</c:if>
          	<c:forEach begin="${pageVO.startPage}" end="${pageVO.endPage}" var="idx">
          		<li class='page-item <c:out value="${idx==pageVO.page?'active':''}"/>'><a href="/admin/member/list?page=${idx}&searchType=${pageVO.searchType}&searchKeyword=${pageVO.searchKeyword}" class="page-link">${idx}</a></li>
          	</c:forEach>
          	<c:if test="${pageVO.next}">
       		<li class="page-item">
          		<a class="page-link" href="/admin/member/list?page=${pageVO.endPage+1}&searchType=${pageVO.searchType}&searchKeyword=${pageVO.searchKeyword}">다음</a>
       		</li>
          	</c:if>
            </ul>  
          </nav>   
           </td>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
 
    
    </div>
    <!-- /.content-header -->

<%@ include file="../include/footer.jsp" %> 