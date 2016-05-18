<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<%@ include file="/common/include/views_head.jsp"%>
<body>
	<div class="wrapper">
		<%@ include file="/common/include/menu.jsp"%>

		<div class="rightContent">
			<span class="title">News</span>
			<!-- End of title -->

			<div class="mainContainer">
				<form action="${basePath}news.do?act=save" method="post"
					name="baseForm" />
				<input type="hidden" id="pageNo" name="pageNo" value="${pageNo}" />
				<input type="hidden" id="pageSize" name="pageSize"
					value="${pageSize}" />
				<table width="634" class="tb2_green" border="0" cellspacing="0"
					cellpadding="0">
					<tr>
						<th>英文标题：</th>
						<td><input type="text" id="subject_eng" name="subject_eng"
							value="" size="70" maxlength="300" /></td>
					</tr>
					<tr>
						<th>英文内容：</th>
						<td><textarea name="content_eng" id="content_eng" cols="40"
								rows="10" style="width: 100%;"></textarea></td>
					</tr>
				</table>
				</form>
				<div class="btnBlock">
					<input style="width: 50px;" name="" value="储存" type="button"
						onclick='subForm(["subject_eng", "content_eng"]);' />&nbsp;&nbsp; <input style="width: 50px;"
						name="" value="清除" type="button" onclick='toClear(["subject_eng", "content_eng"]);' />&nbsp;&nbsp;
					<input style="width: 50px;" name="" value="返回" type="button"
						onclick='toBack("news");' />
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
