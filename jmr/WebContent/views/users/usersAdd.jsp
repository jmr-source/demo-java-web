<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
  <title>JMR管理系统</title>
  <!-- head start -->
	<%@ include file="/common/include/header.jsp" %>
  <!-- head end -->
<script type="text/javascript">
//提交验证
function subForm(){
	var frm = document.forms["baseForm"];
	
	var account = frm.account.value.trim();
	if(account == ""){
		alert("账号不能为空");
		frm.account.focus();
		return false;
	}else{
		if(account.length<6){
      		alert("账号至少6为长度");
         	frm.account.focus();
            return false;
      	}
	}
	
	var name = frm.name.value.trim();
	if(name == ""){
		alert("姓名不能为空");
		frm.name.focus();
		return false;
	}
	
	var password = frm.password.value.trim();
	if(password == ""){
		alert("密码不能为空");
		frm.password.focus();
		return false;
	}else{
      	if(password.length<6){
      		alert("密码至少6位长度");
         	frm.password.focus();
            return false;
      	}else if(!isLetterAndNum(password)){
      	    alert("密码需包含英文字及数字");
         	frm.password.focus();
            return false;
      	}else if(password == account){
      	    alert("密码不得与账号相同");
         	frm.password.focus();
            return false;
      	}
	}
	
	$.get("${basePath}users.do?act=isExist&account=" + account,function(data){
		if(data == "Y"){
			alert("该账户已存在");
			frm.account.value="";
		}else{
			frm.submit();
		}
	});
	
}

//验证是否包含英文和数字
function isLetterAndNum(obj){
    var reg=/^(([a-z]+[0-9]+)|([0-9]+[a-z]+))[a-z0-9]*$/i; 
	var objVal=obj.replace(/[^a-zA-Z0-9]+/g,"");
	return reg.test(objVal);
}

//清除
function toClear(){
	$('#account').val("");
	$('#password').val("");
	$('#name').val("");
}

//返回
function toBack(){
	window.location.href='${basePath}users.do?act=find';
}

</script> 
</head>
<body>
<div class="wrapper">
	<%@ include file="/common/include/menu.jsp" %>
    
    <div class="rightContent">
    <span class="title">管理者账号管理>新增</span><!-- End of title -->
    
    <div class="mainContainer">
    	<div class="function">
		1.前方有<span>*</span>表示未必填栏位。<br/>
		2.账号、密码长度至少6位。<br/>
		3.密码不得与账号相同。<br/>
		4.密码需包含英数字
    	</div><!-- End of function -->
		<form action="${basePath}users.do?act=save" method="post" name="baseForm" />
		<table width="634" class="tb2_green" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <th width="140"><span>*</span> 账号：</th>
            <td width="462"><input type="text" name="account" maxlength="20" id="account"/></td>
          </tr>
          <tr>
            <th><span>*</span> 姓名：</th>
            <td bgcolor="#ececec"><input name="name" type="text" maxlength="25" id="name"/></td>
          </tr>
		  <tr>
            <th><span>*</span> 密码：</th>
            <td><input name="password" type="password" maxlength="50" id="password"/></td>
          </tr>
          <tr>
            <th><span>*</span> 状态：</th>
            <td bgcolor="#ececec">
            	<input type="radio" name="status" value="1" checked>启用</input>
            	<input type="radio" name="status" value="0" >停用</input>
            </td>
          </tr>
        </table>
      
		<div class="btnBlock">
			<input style="width:50px;" name="" value="储存" type="button" onclick='subForm();'/>&nbsp;&nbsp;
			<input style="width:50px;" name="" value="清除" type="button" onclick='toClear();'/>&nbsp;&nbsp;
			<input style="width:50px;" name="" value="返回" type="button" onclick='toBack();'/></div><!-- End of btnBlock -->
     </form>
    </div><!-- End of mainContainer -->
    </div><!-- End of rightContent -->
</div><!-- End of wrapper -->
</body>
</html>
