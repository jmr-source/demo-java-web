这个版本基本上已经可以运行了，不过有好几个地方没办法做得很完善，比如jsp、action、struts-config-admin.xml和serviceContext.xml，其中：


jsp和action因为灵活性太大。比如要查询什么内容、要显示什么内容、哪些字段要进行处理之类的，所以我jsp和action没怎么进行太大的变化。（这个可以在考虑看看）



struts-config-admin.xml（路径：jmr\WebContent\WEB-INF）是设置action和jsp连接，如：
<!-- 最新消息 -->
       <action path="/admin/news"  type="com.jmr.action.admin.NewsAction"
                  scope="request" parameter="act"> 
            <forward name="toFind" path="/admin/news/news.jsp" />
	        <forward name="toFindAction" path="/admin/news.do?act=find" redirect="true" />
	   		<forward name="toAdd" path="/admin/news/newsAdd.jsp" />
	   		<forward name="toModify" path="/admin/news/newsModify.jsp" />           
       </action>



serviceContext.xml（路径：jmr\src\config\spring）是设置action、dao和service的连接，如：
<!-- 最新消息dao -->
	<bean id="newsDao" class="com.jmr.dao.impl.NewsDaoImpl">
	    <property name="baseDao">
			<ref bean="baseDao" />
		</property>
	</bean>
	
	 <!-- 最新消息Service -->
	<bean id="newsService" class="com.jmr.service.impl.NewsServiceImpl">
	    <property name="newsDao">
			<ref bean="newsDao" />
		</property>
		<property name="transactionTemplate">
			<ref bean="transactionTemplate" />
		</property>
	</bean>



最后是数据库还需要变动下。。。因为有些数据库的字段在数据库没设置utf-8，所以中文存不进去，这个是新版的数据库jmr.sql，直接导入就可以了。