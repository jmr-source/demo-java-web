<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
  <head>
  <title>JMR管理系统</title>

  <link href="${basePath}common/css/backplate.css" rel="stylesheet" type="text/css" />
   <script>
   //改变验证码
function changeCode(object) {
    object=(object==null)? document.getElementById("s_code"):object;	
	if (object != null) {
        var date = new Date();	    
		object.src = "${basePath}code?t=" + date;
		object.style.width="50px";
		object.style.height = "20px";
		object.focus();
	}
}

function eventSub(){
	var frm = document.forms["baseForm"];
	
	if(event.keyCode==13){
		frm.submit();
	}
}

//提交验证
function subForm(){
    var frm =document.forms["baseForm"];
    var account = frm.account.value;
    if(account == ""){
        alert("请输入账号");
        frm.account.focus();
        return false;
    }
    var password = frm.password.value;
    if(password == ""){
        alert("请输入密码");
        frm.password.focus();
        return false;
    }
    var checkCode = frm.checkCode.value;
    if(checkCode == ""){
        alert("请输入验证码");
        frm.checkCode.focus();
        return false;
    }
    frm.submit();
}

//后台提示
function init(){
     var msg = '${msg}';
     if(msg !=''){
          alert(msg);
     } 
}

//清除
function toClear(){
	var frm =document.forms["baseForm"];
    frm.account.value = "";
    frm.password.value = "";
    frm.checkCode.value = "";
    return false;
}
</script>
</head>
  
  <body class="login_body">
  	<form action="${basePath}login.do?act=login" method="post" name="baseForm" />
  	<div class="wrapper">
		<div style="position:absolute; top:224px; left:360px;"><label>用户名：</label><input style="width:115px; background:transparent; border:none;" name="account" value="admin" type="text" /></div>
		<div style="position:absolute; top:224px; left:500px;"><label>密码：</label><input style="width:120px; background:transparent; border:none;" name="password" value="Aa123456" type="password" /></div>
	    
		<div style="position:absolute; top:310px; left:350px;">
			<input type="text" name="checkCode"  onkeypress="eventSub();" size="7" />
            <img src="${basePath}code" id="s_code" alt="换一张" width="50" height="20" style="cursor:pointer;margin-bottom:-4px;" onClick="changeCode(this)">
        </div>
		<a style="position:absolute; top:310px; left:530px;" onclick="toClear();return false;" href=""><img src="${basePath}common/images/btn_clear.png" class="png" /></a>
		<a style="position:absolute; top:310px; left:592px;" onclick="subForm();return false;" href=""><img src="${basePath}common/images/btn_login.png" class="png" /></a>
	</div>
	</form><!-- End of wrapper -->

<div class="error_msg">${msg}</div>
  
  </body>
</html>

