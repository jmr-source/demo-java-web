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
    var object = $("#sex").val().trim();
	if (object == ""){
	  alert("sex不能为空");
	  $("#sex").focus();
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
 
//清除
function clearAll() {
	  $("#name").val("");
	  $("#sex").val("");
	  $("#registTime").val("");
}

//返回
function toBack() {
	var frm = document.forms["baseForm"];
	frm.action = "${basePath}student.do?act=find&marking=2";
	frm.submit();
	return false;
}
</script>
</head>
<body>
	<div class="wrapper">
		<%@ include file="/common/include/menu.jsp"%>

		<div class="rightContent">
			<span class="title">Student</span>
			<!-- End of title -->

			<div class="mainContainer">
				<form action="${basePath}student.do?act=save" method="post"
					name="baseForm" />
				<input type="hidden" id="pageNo" name="pageNo" value="${pageNo}" />
				<input type="hidden" id="pageSize" name="pageSize"
					value="${pageSize}" />
				<table width="634" class="tb2_green" border="0" cellspacing="0"
					cellpadding="0">
					<tr>
						<th>name</th>
						<td>
						    <input type="text" id="name" name="name" 
						    value="" size="70" maxlength="300" />
						</td>
					</tr>
					<tr>
						<th>sex</th>
						<td>
						    <select id="sex" name="sex">
						          <option value="0">male</option>
						          <option value="1">female</option>
                            </select>
						</td>
					</tr>
					<tr>
						<th>registTime</th>
						<td>
						     <input id="registTime" name="registTime" class="Wdate" 
						     onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',readOnly:true})"/>
						</td>
					</tr>
				</table>
				</form>
				<div class="btnBlock">
					<input style="width: 50px;" name="" value="储存" type="button" onclick="submit()" />&nbsp;&nbsp; 
					<input style="width: 50px;" name="" value="清除" type="button" onclick="clearAll()" />&nbsp;&nbsp;
					<input style="width: 50px;" name="" value="返回" type="button" onclick="back();" />
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
