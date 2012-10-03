
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<%
	String loginId = "我的账号";
	if(request.getAttribute("loginId")!=null){
		loginId = request.getAttribute("loginId").toString();
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="description"
			content="西南石油大学,在身边 - 全国最大的大学生交易平台,inside,大学生二手交易平台,电子商务,和谐节约型社会,专注于大学生的生活,简单,方便,实惠,节约,衣食住行" />
		<meta name="keywords"
			content="西南石油大学,在身边 - 全国最大的大学生交易平台,inside,大学生二手交易平台,,电子商务,和谐节约型社会,专注于大学生的生活,简单,方便,实惠,节约,衣食住行" />
		<title>登录Inside</title>
		<link href="${ctx}/static/css/login/bottom.css" type="text/css"
			rel="stylesheet" />
		<link href="${ctx}/static/css/login/login.css" type="text/css"
			rel="stylesheet" />
			<link rel="shortcut icon" href="${ctx}/static/images/logo.ico" />		
		<script type="text/javascript"
			src="${ctx}/static/js/secondary_market/jquery-1.4.4.js"></script>
		<!--jQUERY ，不能删-->

		<script type="text/javascript"
			src="${ctx}/static/fancybox/jquery.mousewheel-3.0.4.pack.js"></script>
		<script type="text/javascript"
			src="${ctx}/static/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
		<link rel="stylesheet" type="text/css"
			href="${ctx}/static/fancybox/jquery.fancybox-1.3.4.css"
			media="screen" />
	</head>
	<body style="overflow: hidden">
		<div class="bg_border">
			<div class="out_border">
				<a href="${ctx}/index">
					<div class="left_border">
					</div> </a>
				<form:form action="login" method="post">
					<div class="right_border">
						<div class="in_border">
							<div style="margin-top: 50px;">
								<input type="text" class="login_hui" id="userNameOrEmail"
									name="userNameOrEmail" tabindex="1" value=<%=loginId%>
									onclick="if(this.value=='我的账号'){this.value='';this.className='login_hei';}"
									onblur="if(this.value==''){this.value='我的账号';this.className='login_hui';}" />
							</div>
							<div class="interval" style="text-align: right;">
								<a href="${ctx}/user/new">没有在身边账号?赶快注册一个吧</a>
							</div>
							<div>
								<input type="password" class="login_hui" id="passWord"
									name="passWord" tabindex="2" value="请输入密码"
									onclick="if(this.value=='请输入密码'){this.type='password';this.value='';this.className='login_hei';this.style='font-weight:bold;';}"
									onblur="if(this.value==''){this.type='text';this.value='请输入密码';this.className='login_hui';}" />
							</div>
							<div class="interval">
								<input type="checkbox" value="1" id="rememberme"
									name="rememberme" style="line-height: 30px;" />
								<label for="auto_login">
									两周内自动登录
								</label>
								<a href="${ctx}/user/pass_back">找回密码</a>
							</div>
							<div style="margin-top: 50px;">
								<c:if test="${!empty errorMsg}">
									<label class="errorMsg" id="errorMsg" name="errorMsg">
										${errorMsg}
									</label>
								</c:if>
								<input
									style='border-left: 0px; border-top: 0px; border-right: 0px; border-bottom: 0px'
									type="submit" class="login" id="login" name="login" value="登录" />
							</div>

						</div>
					</div>
				</form:form>
			</div>
		</div>
		<script type="text/javascript">
	$(document).ready(function() {
		$("#about").fancybox({
			'overlayShow' : true,
			'width' : '75%',
			'height' : '75%',
			'autoScale' : false,
			'transitionIn' : 'elastic',
			'transitionOut' : 'elastic',
			'type' : 'iframe',
			'overlayColor' : '#000',
			'overlayOpacity' : 0.7
		});
	});
</script>
		<div class="bottom">
			<div class="bottom_line">
				Copyright © 20012-2012 熊猫超人科技有限公司 Inc.All rights reserved
				闽ICP备07050274号 |
				<a href="${ctx}/about" id="about">关于我们</a>
			</div>
		</div>
		<script type="text/javascript">
	$(function() {
		$(window).scroll(function() {
			if ($(this).scrollTop() > 101) {
				$('#topcontrol').css({
					"display" : "block"
				});
			} else {
				$('#topcontrol').css({
					"display" : "none"
				});
			}
		})
	})
</script>
	</body>
</html>
