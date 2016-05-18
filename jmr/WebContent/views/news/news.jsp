<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<%@ include file="/common/include/views_head.jsp"%>
<body>
<div class="wrapper">
	<!-- 左选单导入 -->
    <%@ include file="/common/include/menu.jsp" %>
    
    <div class="rightContent">
    <span class="title">News</span><!-- End of title -->
    <div class="mainContainer">
    	<form action="${basePath}news.do?act=find" method="post" name="baseForm" />
    	<div class="function">
	    	<div class="btnAddDelete">
	    		<input name="pageNo" value="${param.pageNo}" type="hidden"/>
				<input name="pageSize" value="${param.pageSize}" type="hidden"/>
				<input type="hidden" name="act" value=""/>
	    		
	    	</div><!-- End of btnAddDelete -->
	    	<img src="${basePath}/common/images/icon_quiz.gif" />&nbsp;&nbsp;查询条件&nbsp;&nbsp;&nbsp;&nbsp;

	  			<input style="width:50px;" value="查询" type="button" onclick="find();"/>&nbsp;&nbsp;
	    		<input style="width:50px;" value="新增" type="button" onclick="toAdd('news')"/>&nbsp;&nbsp;
	    		<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    		英文标题：
	    		<input name="subject_eng" id="subject_eng" value="${subject_eng}" type="text" maxlength="300" />&nbsp;&nbsp;&nbsp;&nbsp;
        </div><!-- End of function -->
        
        <table width="634" class="tbl_green" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <th width="38">序号</th>
            <th width="150">英文标题</th>
            <th width="58">功能</th>
          </tr>
          
          <c:if test="${empty listPage.dataList }">
			    <tr><td colspan="8" align="center">暂无资料</td></tr>
		  </c:if>
			            
				<c:if test="${!empty listPage.dataList }">
				  <c:set var="i" value="1" />
					<c:if test="${listPage.currentPageNo>0}">
						<c:set var="i" value="${(listPage.currentPageNo-1)*listPage.currentPageSize +1 }"/>
					</c:if>
				  
				   <c:forEach items="${listPage.dataList}" var="n" varStatus="vs"> 
				   		 <tr class=${vs.count%2==1?"#ececec":"" }>
	                        <td align="center">&nbsp;${(listPage.currentPageNo-1)*listPage.currentPageSize + vs.count} </td>
							<td align="center">&nbsp;${n.subject_eng}</td>
							<td align="center">
								<select name="changeOne" id="changeOne" onchange="changeone('${n.id}',this.value,'news');">
									<option value="">请选择</option>
									<option value="0">修改</option>
									<option value="1">删除</option>
								</select>
							</td>
				   		</tr>
				   </c:forEach>
				</c:if>
        </table>
        	<%@ include file="/common/include/views_detail.jsp"%>
	    </form>
    </div><!-- End of mainContainer -->
    </div><!-- End of rightContent -->
</div><!-- End of wrapper -->
</body>
</html>

