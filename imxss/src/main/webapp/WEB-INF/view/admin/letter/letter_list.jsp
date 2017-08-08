<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="/WEB-INF/tld/c.tld"%>
<%@ taglib prefix="fmt" uri="/WEB-INF/tld/fmt.tld"%>
<%@ taglib prefix="fn" uri="/WEB-INF/tld/fn.tld"%>
<!doctype html>
<html>

<head>
<jsp:include page="../../includ/header.jsp" />
</head>

<body data-type="index">


	<header class="am-topbar am-topbar-inverse admin-header">
		<jsp:include page="../../includ/nav.jsp" />
	</header>

	<div class="tpl-page-container tpl-page-header-fixed">
		<div class="tpl-left-nav tpl-left-nav-hover">
			<jsp:include page="../../includ/left.jsp" />
		</div>

		<div class="tpl-content-wrapper">
			<ol class="am-breadcrumb">
				<li><a href="#" class="am-icon-home">信封中心</a></li>
				<li class="am-active">信封管理</li>
			</ol>
			<form name="dataForm" action="" method="post">
				<div class="tpl-portlet-components">
					<div class="portlet-title">
						<div class="caption font-green bold">
							<span class="am-icon-code"></span> 列表
						</div>
					</div>
					<div class="tpl-block">
						<div class="am-g">
							<div class="am-u-sm-12 am-u-md-6">
								<div class="am-btn-toolbar">
									<div class="am-btn-group am-btn-group-xs"></div>
								</div>
							</div>
							<!-- 搜索 -->
							<div class="am-u-sm-12 am-u-md-3">
								<div class="am-input-group am-input-group-sm">
									<input type="text" class="am-form-field" name="keyWorld"
										placeholder="输入关键字搜索" value="${keyWorld }"> <span
										class="am-input-group-btn">
										<button
											class="am-btn  am-btn-default am-btn-success tpl-am-btn-success am-icon-search"
											type="submit"></button>
									</span>
								</div>
							</div>
						</div>
						<div class="am-g">
							<hr>
						</div>
						<div class="am-g">
							<div class="tpl-table-images">
								<c:if test="${empty dataPager.data }">
									<center>暂无数据</center>
								</c:if>
								<c:forEach items="${dataPager.data }" var="letter">
									<div class="am-u-sm-12 am-u-md-6 am-u-lg-4">
										<div class="tpl-table-images-content">
											<div class="tpl-table-images-content-i-time tpl-i-font">
												<c:if test="${letter.isReaded==0 }">
													<span class="am-badge tpl-badge-success am-round">未读</span>
												</c:if>
												<c:if test="${letter.isReaded==1 }">
													<span class="am-badge  am-round">已读</span>
												</c:if>
												<a href="#">&nbsp;<fmt:formatDate
														value="${letter.updateTime }"
														pattern="yyyy-MM-dd HH:mm:ss" /></a>
											</div>
											<div class="tpl-i-title">
												<a href="${letter.refUrl }">${fn:length(letter.refUrl)>95?fn:substring(letter.refUrl, 0, 95):letter.refUrl }</a>
											</div>

											<div class="tpl-table-images-content-block">
												<div class="tpl-i-font ">${letter.ip }${letter.ipInfo }</div>
												<div class="tpl-i-more">
													<ul>
														<li><span style="white-space:nowrap;"
															class="am-icon-envelope am-text-warning">
																${letter.projectName==null?'(已删除)':letter.projectName }</span></li>
													</ul>
													<ul>
														<li><span style="white-space:nowrap;"
															class="am-icon-user am-text-warning">
																${letter.userEmail }</span></li>
													</ul>
												</div>
												<div class="am-btn-toolbar">
													<div
														class="am-btn-group am-btn-group-xs tpl-edit-content-btn">
														<button type="button"
															onclick="location.href='letterInfo.${defSuffix}?letterId=${letter.id }'"
															class="am-btn am-btn-default am-btn-secondary">
															<span class="am-icon-edit"></span> 查看
														</button>
														<button type="button" onclick="delData(${letter.id})"
															class="am-btn am-btn-default am-btn-danger">
															<span class="am-icon-trash-o"></span> 删除
														</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
								<div class="am-u-lg-12">
									<div class="am-cf"><jsp:include
											page="../../includ/pager.jsp" /></div>
									<hr>
								</div>

							</div>

						</div>
					</div>
					<div class="tpl-alert"></div>
				</div>
			</form>
		</div>
	</div>


	<jsp:include page="../../includ/js.jsp" />
</body>
<script>
	function delData(id) {
		if (!confirm("数据删除后将无法恢复,确定执行此操作?")) {
			return;
		}
		$.ajax({
			type : "POST",
			dataType : 'json',
			data : 'id=' + id,
			url : 'letterDel.${defSuffix}',
			timeout : 60000,
			success : function(json) {
				alert(json.msg);
				if (json.code == 0) {
					location.reload(true);
				}
			},
			error : function() {
				alert("系统繁忙");
			}
		});
	}
</script>
<style>
.am-btn-group .am-btn+.am-btn, .am-btn-group .am-btn+.am-btn-group,
	.am-btn-group .am-btn-group+.am-btn, .am-btn-group .am-btn-group+.am-btn-group
	{
	margin-left: 1rem;
}

.tpl-i-title {
	word-break: break-all;
	height: 54px;
}

.tpl-table-images-content .tpl-i-more li {
	text-align: left;
}
</style>
</html>