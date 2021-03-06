
<!-- 公用内容  Start -->
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<link type = "text/css" rel = "stylesheet" href = "<%=basePath %>css/schedule/schedule_month.css"></link>
<!-- 公用内容  End -->


<!-- 内部  content Start -->
<div id = "allContentID" >
	<form id = "myFormID"  action="#" >
		<div id = "conditionSectionIDMonth">
			<table>
				<tr>
					<td>年份：</td>
					<td>
						<input type = "text" id = "monthOfYear" name = "monthOfYear" value = "请选择年份" 
						       style = "height: 26px;" />
					</td>
					<td>月份：</td>
					<td>
						<input type = "text" id = "monthID" name = "monthID" value = "请选择月份" 
						       style = "height: 26px;" />
					</td>
					
					<td align="right">
						<a  id = "updateScheduleAIDMonth"
							class = "easyui-linkbutton" 
							data-options = "iconCls:'icon-reload' "
							   >更&nbsp;新&nbsp;赛&nbsp;程</a>
					</td>
				</tr>
			</table>
		</div>
		
		<hr align="center" width="95%" color="#66CCFF" size="1"/>
			
		<div id = "dataSectionID">
			<div id = "dataSection_eventIDMonth">
				<a class = "easyui-linkbutton" id = "update2OuterMonth"
									data-options = "iconCls:'icon-redo' "
								   >更&nbsp;新&nbsp;到&nbsp;外&nbsp;网</a>
				<a class = "easyui-linkbutton" id = "matchBasicInfoMonth"
									data-options = "iconCls:'icon-print' "
								   >比&nbsp;赛&nbsp;基&nbsp;本&nbsp;信&nbsp;息</a>
				<a class = "easyui-linkbutton" id = "playerAnalysisMonth"
									data-options = "iconCls:'icon-search' "
								   >球&nbsp;员&nbsp;分&nbsp;析</a>
				<a class = "easyui-linkbutton" id = "dataStatisticsMonth"
									data-options = "iconCls:'icon-save' "
								   >数&nbsp;据&nbsp;统&nbsp;计</a>
				<a class = "easyui-linkbutton" id = "matchEventMonth"
									data-options = "iconCls:'icon-tip' "
								   >比&nbsp;赛&nbsp;事&nbsp;件</a>
			</div>
			
			<hr align="center" width="100%" color="#66CCFF" size="1"/>
			
			<div id = "dataSection_dataIDMonth">
				<table id = "dataTableIDMonth">
				</table>
			</div>
		</div>
		<!-- 内部  content End -->
	</form>
	
	<!-- 比赛基本信息 start -->
	<%@ include file = "matchBasicInfoMonth.jsp"%>
	<!-- 比赛基本信息 end -->
	
	<!-- 球员分析模块 start -->
	<%@ include file = "playerAnalysisMonth.jsp" %>
	<!-- 球员分析模块 end -->
	
	<!-- 数据分析模块 start -->
	<%@ include file = "dataStatisticsMonth.jsp" %>
	<!-- 数据分析模块 end -->
	
	<!-- 比赛事件 start -->
	<%@ include file = "matchEventMonth.jsp" %>
	<!-- 比赛事件 end -->
	
</div>

<!-- js框架 文件引用   start -->
<script type = "text/javascript" src = "<%=basePath %>js/schedule/schedule_month.js"></script>
<!-- js框架 文件引用   end -->    
    
<!-- 自定义js  start -->
<script type="text/javascript">
//错误信息显示
window.onerror = function(message, url, line){
	console.info(
		"错误信息是：" + message + "\n" + 
		"错误来源：" + url + "\n" + 
		"错误在第：" + line + "\t" + "行");
};
</script>
<!-- 自定义js  end -->
