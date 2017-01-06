<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600" rel="stylesheet">

	<@liferay_util["include"] page=top_head_include />
</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<div id="wrapper">
	<header id="banner" role="banner">
		<div class="header-logo"></div>
	</header>

	<div class="section-one">
		<section class="container-fluid-1280" id="content">
			<#if selectable>
				<@liferay_util["include"] page=content_include />
			<#else>
				${portletDisplay.recycle()}

				${portletDisplay.setTitle(the_title)}

				<@liferay_theme["wrap-portlet"] page="portlet.ftl">
					<@liferay_util["include"] page=content_include />
				</@>
			</#if>
		</section>
	</div>
</div>
<footer id="footer" role="contentinfo">
	<div class="row container-fluid-1280">
		<div id="copyright" class="col-sm-5 col-md-5 col-lg-5">
			Liferay Inc. Copyright © ${the_year} All Rights Reserved.
		</div>
		<div class="form-release-notes col-sm-3 col-md-3 col-lg-3">
			<a href="https://loop.liferay.com/web/guest/home/-/loop/topics/_FormsReleaseNotes" class="btn btn-link" target="_blank">Release Notes</a>
		</div>
	</div>
</footer>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

</body>

</html>