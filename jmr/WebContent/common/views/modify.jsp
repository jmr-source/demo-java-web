<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>JMR管理系统</title>
 <%@ include file="/common/include/header.jsp" %>
<script type="text/JavaScript">
	//验证
	function subForm(){
		var frm = document.forms["baseForm"];
		
		var oldPassWord=frm.oldPassWord.value.trim();
		if(oldPassWord ==""){
			alert("旧密码不能为空");
			frm.oldPassWord.focus();
			return false;
		}
		var passWord=frm.passWord.value.trim();
		if(passWord==""){
			alert("密码不能为空");
			frm.passWord.focus();
			return false;
		}else{
			
			var loginId = $("#loginId").val();
			 if(passWord.length<6){
				alert("密码长度至少6位");
				frm.passWord.focus();
				return false;
			}else if(!isLetterAndNum(passWord)){
				alert("密码需包含英数字");
				frm.passWord.focus();
				return false;
			}else if(passWord == loginId){
				alert("密码不得与账号相同");
				frm.passWord.focus();
				return false;
			}
		}

		var resPwd= frm.resPwd.value.trim();
		if(resPwd==""){
			alert("确认密码不能为空");
			frm.resPwd.focus();
			return false;
		}else if(resPwd!=passWord){
				alert("密码必须与确认密码相同");
				return false;
			}
			
		
		frm.submit();
		return false;
	}
	
	
	$(function(){
		showMsg();	
	});
	
	function showMsg(){
		var msg='${msg}';
		if(msg !=''){
		alert(msg);
		}
	}
	
	//清除
	function clearValue(){
		$("#oldPassWord").val("");
		$("#passWord").val("");
		$("#resPwd").val("");
	}
	
	//密码需包含英数字
	function isLetterAndNum(value){
	    var reg = /^(([A-Za-z]+[0-9]+)|([0-9]+[A-Za-z]+))[A-Za-z0-9]*$/;
	    return reg.test(value);
	}
</script>
</head>

<body>
<div class="wrapper">
	 <%@ include file="/common/include/menu.jsp" %>
	 
    <div class="rightContent">
    <span class="title">密码修改</span><!-- End of title -->
    <form action="${basePath}index.do?act=modifyPwdUpdate" method="post" name="baseForm">
    <div class="mainContainer">
    	<div class="function">
    		<table width='50%'  border=0>
				<tr>
					<td align='left' colspan="2">
			    	1.前方有<font color='red'>*</font>标示为必填栏位。<br/>
			    	2.密码必须与确认密码相同。<br/>
			    	3.密码不得与账号相同。<br/>
			    	4.密码长度至少6位。<br/>
			    	5.密码需包含英数字。<br/>
			    	</td>
				</tr>
			</table>
    	</div><!-- End of function -->
		
		<table width="634" class="tb2_green" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <th width="140"><span>*</span> 旧密码：</th>
            <td width="462"><input style="width:120px;" name="oldPassWord" type="password" id="oldPassWord"  maxlength="10"/></td>
          </tr>
          <tr>
            <th><span>*</span> 密码：</th>
            <td bgcolor="#ececec"><input style="width:120px;" name="passWord" type="password" id="passWord"  maxlength="10"/></td>
          </tr>
		  <tr>
            <th class="thLast"><span>*</span> 确认密码：</th>
            <td><input style="width:120px;" name="resPwd" type="password" id="resPwd" maxlength="10"/></td>
          </tr>

        </table>
		
		<div class="btnBlock">
			<input style="width:50px;" name="" value="储存" type="button" onclick="subForm();" />&nbsp;&nbsp;
			<input style="width:50px;" name="" value="清除" type="button" onclick="clearValue()" />&nbsp;&nbsp;
		</div><!-- End of btnBlock -->
    </div><!-- End of mainContainer -->
    </form>
    </div><!-- End of rightContent -->
</div><!-- End of wrapper -->
</body>
</html>
