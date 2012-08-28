<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="z" uri="/zitop_common"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<title>title here</title>
<link href="<%=request.getContextPath() %>/static/css/admin.css" rel="stylesheet" type="text/css" />
<script src="<%=request.getContextPath() %>/static/js/jquery.js" type="text/javascript"></script>
<script type="text/javascript"> 
$(document).ready(function(){
 
});
function confirmDel()
{
	if(confirm("删除记录后，数据将不可恢复！\n确认继续删除？"))
	{
		return true;
	}
	return false;
}
function chg(id_num){
    var oa = document.getElementById(id_num);
    var ob = document.getElementById("ImgArrow");
	 var imgButton = document.getElementById("imgButton");
    if(oa.style.display == "block"){
            oa.style.display = "none";
            imgButton.src = "<%=request.getContextPath() %>/static/images/icon_down.gif";
			 imgButton.alt = "展开搜索";
    }else{
            oa.style.display = "block";
            imgButton.src = "<%=request.getContextPath() %>/static/images/icon_up.gif";
			 imgButton.alt = "隐藏搜索";
    }
    return false;
}
</script>
</head>
<body>
<div class="mTitle">
  <span class="hidsearch"><a href="javascript:void(0)" onclick="return chg('searchList');" id="ImgArrow"><img src="<%=request.getContextPath() %>/static/images/icon_down.gif" id ="imgButton" />展开搜索</a></span>
  <b class="bbig">所有数据</b>
</div>
<s:form  id="searchForm" action="data-item-list" namespace="/admin/data">
<div class="searchBar" id="searchList" style="display:none;">
  <table class="searchTable">
  <tr>
    <th width="10%">xxx：</th>
    <td width="20%"><input name="" type="text" size="25" /></td>
	<th width="10%">xxx：</th>
    <td>
	</td>
  </tr>

  <tr>
    <th>&nbsp;</th>
    <td><button class="btn" type="submit">确定搜索</button></td>
  </tr>
  </table>
</div>
</s:form> 
 
<!--list -->
<div class="mainList">
<table class="listTable">
  <tr>
	<th>期数</th>
	<th>客户群</th>
	<th>指标</th>
	<th>值</th>
    <th>操作</th>
  </tr>
  <s:iterator value="pager.items">
  <tr>  

	<td> ${term.name }</td>
	<td> ${customerCategory.name }</td>
	<td> ${indexItem.name }</td>
	<td> ${value }</td>
    <td> 
    	<a href="<s:url action="data-item!edit" namespace="/admin/data"/>?requestId=<s:property value="id"/>">修改</a>  
    	<a href="<s:url action="data-item!delete" namespace="/admin/data"/>?requestId=<s:property value="id"/>"  onclick="return confirmDel();">删除</a>  
    </td>
  </tr>
  </s:iterator>
</table>
</div>
<!--end list -->
<div class="Toolbar">
  <div class="toolBt">
 		<a href="<s:url action="data-item!input" namespace="/admin/data"/>" title="新建"><span class="btn">新建</span></a>
  </div>
  <z:pagination></z:pagination>
</div>
 
</body>
</html>

