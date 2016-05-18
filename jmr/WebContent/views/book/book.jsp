<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<%@ include file="/common/include/views_head.jsp"%>
<body>
<div class="wrapper">
	<!-- left menu -->
    <%@ include file="/common/include/menu.jsp" %>
    
    <div class="rightContent">
    <span class="title"></span><!-- End of title -->
    <div class="mainContainer">
    	<form action="${basePath}book.do?act=find" method="post" name="baseForm" />
    	<div class="function">
	    	<div class="btnAddDelete">
	    		<input name="pageNo" value="${param.pageNo}" type="hidden"/>
				<input name="pageSize" value="${param.pageSize}" type="hidden"/>
				<input type="hidden" name="act" value=""/>
	    		
	    	</div><!-- End of btnAddDelete -->
	    	<img src="${basePath}/common/images/icon_quiz.gif" />&nbsp;&nbsp;查询条件&nbsp;&nbsp;&nbsp;&nbsp;

	  			<input style="width:50px;" value="查询" type="button" onclick="find();"/>&nbsp;&nbsp;
	    		<input style="width:50px;" value="新增" type="button" onclick="toAdd('book')"/>&nbsp;&nbsp;
	    		<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    		name:
				    <input name="name" id="name" 
				    value="${name}" type="text" style="width:90px"/>&nbsp;&nbsp;&nbsp;&nbsp;
	    		type:
				    <select id="type" name="type">
				    <option value=""></option>
				    <option value="0">娱乐</option>
				    <option value="1">体育</option>
                    </select>
                    <script>
                    $("#type").val("${type}");
                    </script>
	    		registTime:
			    <script>
                function setRegistTime(){
                  start = $("#registTime_start").val();
                  end = $("#registTime_end").val();
                  value = "{start:" + "\"" + start + "\"" + "," + "end:" + "\"" + end + "\"" + "}";
                  $("#registTime").val(value);
                }
                </script>
                <input type="hidden" id="registTime" name="registTime"/>
                <input id="registTime_start" name="registTime_start" value="${registTime_start}" 
                class="Wdate" onchange="setRegistTime()" 
                onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',readOnly:true})" style="width:135px"/>
                to
                <input id="registTime_end" name="registTime_end" value="${registTime_end}" 
                class="Wdate" onchange="setRegistTime()" 
                onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',readOnly:true})" style="width:135px"/>
        </div><!-- End of function -->
        
        <table width="700" class="tbl_green" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <th width="38">序号</th>       
            <th width="50">name</th>
            <th width="50">type</th>
            <th width="50">registTime</th>
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
							<td align="center">${n.name}</td>
							<td align="center">
							    <c:if test="${n.type == 0}">娱乐</c:if>
							    <c:if test="${n.type == 1}">体育</c:if>
						    </td>
							<td align="center">
							${n.registTime}
							</td>
							
							<td align="center">
								<select name="changeOne" id="changeOne" onchange="changeone('${n.id}',this.value,'book');">
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

