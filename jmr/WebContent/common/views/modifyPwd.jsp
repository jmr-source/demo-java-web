<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
  <title>台灣紀錄片後台管理系統</title>
  <!-- head start -->
	<%@ include file="/common/include/header.jsp" %>
  <!-- head end -->
  <script type="text/javascript">
	//驗證
	function subForm(){
		var frm = document.forms["baseForm"];
		
		var oldPassWord=frm.oldPassWord.value.trim();
		if(oldPassWord ==""){
			alert("舊密碼不能為空");
			frm.oldPassWord.focus();
			return false;
		}
		var passWord=frm.passWord.value.trim();
		if(passWord==""){
			alert("密碼不能為空");
			frm.passWord.focus();
			return false;
		}else{
			
			var loginId = $("#loginId").val();
			 if(passWord.length<6){
				alert("密碼長度至少6位");
				frm.passWord.focus();
				return false;
			}else if(!isLetterAndNum(passWord)){
				alert("密碼需包含英數字");
				frm.passWord.focus();
				return false;
			}else if(passWord == loginId){
				alert("密碼不得與帳號相同");
				frm.passWord.focus();
				return false;
			}
		}

		var resPwd= frm.resPwd.value.trim();
		if(resPwd==""){
			alert("確認密碼不能為空");
			frm.resPwd.focus();
			return false;
		}else if(resPwd!=passWord){
				alert("密碼必須與確認密碼相同");
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
	
	//密碼需包含英數字
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
    <span class="title">密碼修改</span><!-- End of title -->
    <form action="${basePath}index.do?act=modifyPwdUpdate" method="post" name="baseForm">
    <div class="mainContainer">
    	<div class="function">
    		<table width='50%'  border=0>
				<tr>
					<td align='left' colspan="2">
			    	1.前方有<font color='red'>*</font>標示為必填欄位。<br/>
			    	2.密碼必須與確認密碼相同。<br/>
			    	3.密碼不得與帳號相同。<br/>
			    	4.密碼長度至少6位。<br/>
			    	5.密碼需包含英數字。<br/>
			    	</td>
				</tr>
			</table>
    	</div><!-- End of function -->
		
		<table width="634" class="tb2_green" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <th width="140"><span>*</span> 舊密碼：</th>
            <td width="462"><input style="width:120px;" name="oldPassWord" type="password" id="oldPassWord"  maxlength="10"/></td>
          </tr>
          <tr>
            <th><span>*</span> 密碼：</th>
            <td bgcolor="#ececec"><input style="width:120px;" name="passWord" type="password" id="passWord"  maxlength="10"/></td>
          </tr>
		  <tr>
            <th class="thLast"><span>*</span> 確認密碼：</th>
            <td><input style="width:120px;" name="resPwd" type="password" id="resPwd" maxlength="10"/></td>
          </tr>

        </table>
		
		<div class="btnBlock">
			<input style="width:50px;" name="" value="儲存" type="button" onclick="subForm();" />&nbsp;&nbsp;
			<input style="width:50px;" name="" value="清除" type="button" onclick="clearValue()" />&nbsp;&nbsp;
		</div><!-- End of btnBlock -->
    </div><!-- End of mainContainer -->
    </form>
    </div><!-- End of rightContent -->
</div><!-- End of wrapper -->
</body>
</html>

