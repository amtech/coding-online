<${r'#'}include "/base/childheader.jsp" parse=true encoding="utf-8">
<table	<#if treeField??>class="treegrid" data-treefield="${treeField}"<#else>class="datagrid"</#if> <#if singleselect??&&singleselect==0>data-singleselect="false"</#if>
	data-url="${r'$'}{ProjectPath}/${entityName?uncap_first}Controller/${entityName?uncap_first}${table.entityname?uncap_first}data.htm?${fcolumn.columncode}=${r'$'}{${fcolumn.columncode}}"  
	data-toolbar="#${entityName?uncap_first}-toolbar" >
	<tr>
		<th data-field="id" data-hidden="true">序号</th>
	    <#list columns as po>
	    <#if (po.islist?? && po.islist >= 1) || (po.isquery?? && po.isquery == 1)>
	    <#if po.columncode?? && po.columncode !="id">
	    <th data-field="${po.columncode}"<#if po.isquery?? && po.isquery == 1> data-query="true"</#if><#if po.islist?? && po.islist == 2> data-hidden="true"</#if><#if po.tablecode??&&selecttable??> data-url="../${selecttable.entityname?uncap_first}Controller/view.htm?id={${po.foreignid}}"</#if>>${po.columnname}</th>
	    </#if>
	    </#if>
	    </#list>
	</tr>
</table>

<div id="${entityName?uncap_first}-toolbar" >
	<div class="toolbars">
		<div style="float:left;">
			<a href="javascript:void(0)" action="method:'query'" class="easyui-linkbutton" data-options="iconCls:'icon-search'" >查询</a>
			<a href="javascript:void(0)" action="method:'addgrid',url:'../${entityName?uncap_first}Controller/select${table.entityname?uncap_first}.htm?${fcolumn.columncode}=${r'$'}{${fcolumn.columncode}}'" class="easyui-linkbutton" data-options="iconCls:'icon-add'" >添加</a>
			<a href="javascript:void(0)" action="method:'view',grid:'id',url:'../${table.entityname?uncap_first}Controller/view.htm'" class="easyui-linkbutton" iconCls="icon-view"  >查看</a>
			<a href="javascript:void(0)" action="method:'delete',grid:'id',url:'../${entityName?uncap_first}Controller/del${entityName?uncap_first}${table.entityname?uncap_first}.htm?${fcolumn.columncode}=${r'$'}{${fcolumn.columncode}}'" class="easyui-linkbutton" iconCls="icon-delete"  >删除</a>
		</div>
	</div>
</div>
<${r'#'}include "/base/footer.jsp" parse=true encoding="utf-8">