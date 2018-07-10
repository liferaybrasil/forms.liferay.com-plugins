<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600" rel="stylesheet">
	<link href="https://afeld.github.io/emoji-css/emoji.css" rel="stylesheet">

	<@liferay_util["include"] page=top_head_include />
</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<#if !is_signed_in>
	<div id="wrapper">
		<header id="banner" role="banner">
			<div class="header-logo"></div>
		</header>

		<div class="section-one" id="sign-in">
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
<#else>	
	<div id="wrapper">
		<div class="section-one" id="welcome-sheet">
			<section class="container-fluid-1280" id="content">
				<div class="sheet sheet-lg">
					<div class="sheet-header">
						<h2 class="sheet-title">Manage your forms</h2>
						<div class="sheet-text">Here you can go to your personal Forms or your groups. You can always come back to this page by clicking Liferay Logo on the sidebar.</div>
					</div>
					
					<div id="manage-forms">
						<div class="sheet-section">
							<h3 class="sheet-subtitle">Manage your Personal Forms</h3>
							<div class="sheet-text">You can create Forms and share them with whoever you want. Only you can see and edit the Forms and their entries.<br>&nbsp</div>
							<a class="btn btn-primary" href="https://forms.liferay.com/user/${themeDisplay.getUser().screenName}/~/control_panel/manage?p_p_id=com_liferay_dynamic_data_mapping_form_web_portlet_DDMFormAdminPortlet&p_p_lifecycle=0&p_p_state=maximized">My Personal Forms</a>
						</div>
						
						<div class="sheet-section">
							<h3 class="sheet-subtitle">Manage your Groups</h3>
							<div class="sheet-text">You can be part of one or more groups. In these groups, you can create Forms with your team members. Only you and your group colleagues can see and edit the Forms and their entries within the groups.</div>
							<a class="btn btn-primary" href="https://forms.liferay.com/web/guest/my-groups">My Groups</a>
						</div>
					</div>

					<div class="sheet-footer">
						<h4 class="sheet-tertiary-title">Reporting bugs and feedback</h4>
						<div class="sheet-text">Since this is still a beta product, you might face some bugs. Don't worry about losing your data though, we are always making backups. If you have any feedback to share with us, we will be happy to hear you through <a href="https://loop.liferay.com/web/guest/home/-/loop/topics/_FormsFeedback"> #FormsFeedback </a>on Loop.</div>
					</div>
				</div>

				<div id="forms-team">
					<p>Maintained with 
					<svg class="lexicon-icon">
						<use xlink:href="/o/forms-landing-page-theme/images/lexicon/icons.svg#heart" />
					</svg>
					 by Forms Team!</p>
				</div>
			</section>
		</div>
	</div>
</#if>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

</body>

</html>