<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<%@ include file="/common/include/views_head.jsp"%>
<head>
<script type="text/javascript">
//提交验证
function submit() {
	var frm = document.forms["baseForm"];
    var object = $("#name").val().trim();
	if (object == ""){
	  alert("name不能为空");
	  $("#name").focus();
	  return false;
	}
    var object = $("#type").val().trim();
	if (object == ""){
	  alert("type不能为空");
	  $("#type").focus();
	  return false;
	}
    var object = $("#registTime").val().trim();
	if (object == ""){
	  alert("registTime不能为空");
	  $("#registTime").focus();
	  return false;
	}
	frm.submit();
}
//重置
function reset() {
	  $("#name").val("${book.name}");
	  $("#type").val("${book.type}");
	  $("#registTime").val("${book.registTime}");
}

//返回
function toBack() {
	var frm = document.forms["baseForm"];
	frm.action = "${basePath}book.do?act=find&marking=2";
	frm.submit();
	return false;
}

</script>
</head>
<body>
	<div class="wrapper">
		<%@ include file="/common/include/menu.jsp"%>

		<div class="rightContent">
			<span class="title">Book</span>
			<!-- End of title -->

			<div class="mainContainer">
				<form action="${basePath}book.do?act=update" method="post"
					name="baseForm" />
				<input type="hidden" id="id" name="id" value="${id}" /> <input
					type="hidden" id="pageNo" name="pageNo" value="${pageNo}" /> <input
					type="hidden" id="pageSize" name="pageSize" value="${pageSize}" />
					<table width="634" class="tb2_green" border="0" cellspacing="0"
					cellpadding="0">
					<tr>
						<th>name</th>
						<td>
						    <input type="text" id="name" name="name" 
						    value="${book.name}" size="70" maxlength="300" />
						</td>
					</tr>
					<tr>
						<th>type</th>
						<td>
						    <select id="type" name="type">
						          <option value="0">娱乐</option>
						          <option value="1">体育</option>
                            </select>
                            <script>
                            $("#type").val("${book.type}");
                            </script>
						</td>
					</tr>
					<tr>
						<th>registTime</th>
						<td>
						    <input id="registTime" name="registTime" 
						    value="${book.registTime}" class="Wdate" 
						    onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',readOnly:true})"/>
						</td>
					</tr>
				</table>
				</form>
				<div class="btnBlock">
					<input style="width: 50px;" name="" value="储存" type="button" onclick="submit();" />&nbsp;&nbsp; 
					<input style="width: 50px;" name="" value="清除" type="button" onclick="reset();"/>&nbsp;&nbsp;
					<input style="width: 50px;" name="" value="返回" type="button" onclick="toBack();" />
				</div>
				<!-- End of btnBlock -->
                    
			</div>
			<!-- End of mainContainer -->
		</div>
		<!-- End of rightContent -->
	</div>
	<!-- End of wrapper -->
</body>
</html>

