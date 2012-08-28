<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="zsec" uri="/WEB-INF/security.tld" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<title>中国电信·汇聚门户</title>
<link href="${pageContext.request.contextPath}/static/css/admin.css" rel="stylesheet" type="text/css" />

<style type="text/css">
<!--
body{background-color:#FAFAFA;} 
-->
</style>

</head>


<body>

<div class="welcomeTop">
<h1>您好，<sec:authentication property="principal.username" /> </h1>
<p>欢迎使用管理平台</p>
</div>

<div class="welcomeNewsBorder">
  <div class="newsTitle"><b>项目</b>
  	<zsec:authorize ifAnyGranted="BG_PROJECT">
  	<s:a namespace="/admin/project" action="project" method="edit"><s:param name="requestId" value="id" />修改</s:a>
  	</zsec:authorize>
  </div>
  <div class="welcomeNewsTop"><span class="">&nbsp;</span><b>${name }</b></div>
  <div class="welcomeNewsBottom"><b>简介：</b><p>${intro }</p></div>
  <div class="welcomeNewsBottom">
	<div class="list"></div>
  </div>
</div>
<div class="copyright">Copyright &copy; 2008-2009 &nbsp;All Rights Reserved</div>
</body>
</html>