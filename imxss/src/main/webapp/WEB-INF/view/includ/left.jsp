<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="/WEB-INF/tld/c.tld"%>
<div class="tpl-left-nav-title">功能列表</div>
<div class="tpl-left-nav-list">
	<ul class="tpl-left-nav-menu">
		<c:forEach items="${menus }" var="menu">
			<li class="tpl-left-nav-item"><a href="#"
				class="nav-link tpl-left-nav-link-list"> <i
					class="am-icon-wpforms"></i> <span>${menu.title }</span> <i
					class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right tpl-left-nav-more-ico-rotate"></i>
			</a> <c:if test="${!empty  menu.childMenus}">
					<ul class="tpl-left-nav-sub-menu" style="display: block;">

						<li><c:forEach items="${menu.childMenus }" var="chileMenu">
								<a href="${basePath}${chileMenu.url}.${defSuffix}"> <i
									class="am-icon-angle-right"></i> <span>${chileMenu.title }</span>
								</a>
							</c:forEach></li>
					</ul>
				</c:if></li>
		</c:forEach>

	</ul>
</div>