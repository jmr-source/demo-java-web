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
	  alert("name cannot be empty!");
	  $("#name").focus();
	  return false;
	}
    var object = $("#type").val().trim();
	if (object == ""){
	  alert("type cannot be empty!");
	  $("#type").focus();
	  return false;
	}
    var object = $("#registTime").val().trim();
	if (object == ""){
	  alert("registTime cannot be empty!");
	  $("#registTime").focus();
	  return false;
	}
	frm.submit();
}
 
//清除
function clearAll() {
	  $("#name").val("");
	  $("#type").val("");
	  $("#registTime").val("");
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
				<form action="${basePath}book.do?act=save" method="post"
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
						<th>type</th>
						<td>
						    <select id="type" name="type">
						          <option value="0">novel</option>
						          <option value="1">magazine</option>
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
					<input style="width: 50px;" name="" value="Save" type="button" onclick="submit()" />&nbsp;&nbsp; 
					<input style="width: 50px;" name="" value="Clear" type="button" onclick="clearAll()" />&nbsp;&nbsp;
					<input style="width: 50px;" name="" value="Back" type="button" onclick="back();" />
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
