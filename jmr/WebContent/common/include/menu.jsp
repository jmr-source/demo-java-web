<%@ page language="java"  pageEncoding="UTF-8"%>


<div class="sideMenu">
    <img src="${basePath}common/images/menu_top.gif" /><br />
    <div class="sideMenuContent">
    <ul class="menu">
    <li><a href="${basePath}index.do?act=logOut">登出</a></li>
    <li><a href="${basePath}index.do?act=modifyPassword">密码修改</a></li>
    <!-- insert_start id="menu" -->
    <li><a href="${basePath}users.do?act=find">管理用户</a></li>
    <!-- 
    <li><a href="${basePath}news.do?act=find">新闻</a></li>
    <li><a href="${basePath}student.do?act=find">Student</a></li>
    -->
    <li><a href="${basePath}book.do?act=find">Book</a></li>
    <!-- insert_end -->
    <!-- 
    <c:forEach items="${SESSION_MENU_MAP}" var="m" varStatus="vs">
		<li id="menu${m.key.id}" onmousedown="fmenu1('menu${m.key.id}');"><a href="<c:if test="${m.key.link == ''}">#</c:if><c:if test="${m.key.link != ''}">${basePath}${m.key.link }</c:if>">${m.key.name}</a></li>
		<c:forEach items="${m.value}" var="mm" varStatus="vss">
			<li id="menu${m.key.id}${vss.count}" class="item" name="menu${m.key.id}"  style='display:none;'>
				<a href="${basePath}${mm.link}&menu=menu${m.key.id}_">${mm.name}</a>
			</li>
		</c:forEach>		
	</c:forEach>
	-->
    </ul>
    </div><!-- End of sideMenuContent -->
    <div><img src="${basePath}common/images/menu_bottom.gif" /></div>
</div><!-- End of sideMenu -->
