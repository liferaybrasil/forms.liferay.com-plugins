<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

	<head>
		<title>${the_title} - ${company_name}</title>

		<!-- Google Tag Manager -->
		<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
		new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
		j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
		'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
		})(window,document,'script','dataLayer','GTM-54T24JN');</script>
		<!-- End Google Tag Manager -->

		<meta content="initial-scale=1.0, width=device-width" name="viewport" />
		<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600|Source+Sans+Pro:300,400,600" rel="stylesheet">

		<@liferay_util["include"] page=top_head_include />
	</head>

	<body class="${css_class}">

		<!-- Google Tag Manager (noscript) -->
		<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-54T24JN"
		height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
		<!-- End Google Tag Manager (noscript) -->

		<@liferay_ui["quick-access"] contentId="#main-content" />

		<@liferay_util["include"] page=body_top_include />

		<div id="form-wrapper">
			<header class="container-fluid-1280" id="banner" role="banner">
				<div class="logo"></div>
			</header>

			<div class="form-wrapper-content">
				<section class="container-fluid-1280" id="content">
					<h1 class="hide-accessible">${the_title}</h1>

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

			<footer id="footer" role="contentinfo">
				<div class="container-fluid-1280">
					<div class="row col-md-12">
						Liferay Inc<br>
						Copyright © ${the_year} All Rights Reserved.
					</div>
				</div>
			</footer>
		</div>

		<@liferay_util["include"] page=body_bottom_include />

		<@liferay_util["include"] page=bottom_include />

	</body>

</html>