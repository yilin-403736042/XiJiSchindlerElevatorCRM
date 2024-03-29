
<%@ page contentType="text/html;charset=GBK"%>
<%@ taglib uri="/WEB-INF/tld/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/tld/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/tld/struts-logic.tld" prefix="logic" %>

<link rel="stylesheet" type="text/css" href="<html:rewrite forward='formCSS'/>">
<script language="javascript" src="<html:rewrite forward='pageJS'/>"></script>
<link href="/XJSCRM/common/css/bb.css" rel="stylesheet" type="text/css">
<script language="javascript" defer="defer" src="<html:rewrite forward='DatePickerJS'/>"></script>

<br>
<html:form action="/qcdfReportAction.do?method=toSearchResults">
<html:hidden property="genReport" styleId="genReport" />
 <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tb">
    <tr>
    	<td width="20%" class="wordtd">维保分部:</td>
    	<td width="80%" class="inputtd">
    		<html:select property="maintdivision" styleId="maintdivision" onchange="Evenmore(this,'maintstation')">
		    	<html:options collection="maintDivisionList" property="grcid" labelProperty="grcname"/>
    		</html:select>
    	</td>
    </tr>
     <tr>
    	<td width="20%" class="wordtd">维保站:</td>
    	<td width="80%" class="inputtd">
    		<html:select property="maintstation" styleId="maintstation">
    			<%-- html:option value="">全部</html:option--%>
		    	<html:options collection="mainStationList" property="storageid" labelProperty="storagename"/>
    		</html:select>
    	</td>
    </tr>
    <tr>
    	<td width="20%" class="wordtd">参与维保工:</td>
    	<td width="80%" class="inputtd">
    		<html:text property="maintpersonnel" styleClass="default_input" size="35" />
    	</td>
    </tr>
    
    <tr>
    	<td width="20%" class="wordtd">项目名称:</td>
    	<td width="80%" class="inputtd">
    		<html:text property="projectname" styleClass="default_input" size="35" />
    	</td>
    </tr>
    <tr>
    	<td width="20%" class="wordtd">销售合同号:</td>
    	<td width="80%" class="inputtd">
    		<html:text property="salescontractno" styleClass="default_input" size="35" />
    	</td>
    </tr>
    <tr>
    	<td width="20%" class="wordtd">电梯编号:</td>
    	<td width="80%" class="inputtd">
    		<html:text property="elevatorno" styleClass="default_input" size="35" />
    	</td>
    </tr>
    <tr>
    	<td width="20%" class="wordtd">级别:</td>
    	<td width="80%" class="inputtd">
    		<html:select property="scorelevel" styleId="scorelevel">
    			<html:option value="%">全部</html:option>
    			<html:option value="优秀">优秀</html:option>
    			<html:option value="良好">良好</html:option>
    			<html:option value="合格">合格</html:option>
    			<html:option value="不合格">不合格</html:option>
    		</html:select>
    	</td>
    </tr>
    <tr>
	    <td width="20%" class="wordtd">督查结果提交日期:</td>
	    <td width="80%" class="inputtd">
		    <html:text property="sdate" styleId="sdate" styleClass="Wdate" size="13" onfocus="WdatePicker({readOnly:true,isShowClear:true})" />
			- 
			<html:text property="edate" styleId="edate" styleClass="Wdate" size="13" onfocus="WdatePicker({readOnly:true,isShowClear:true})" />
	    </td>
    </tr>

    </table>
</html:form>


