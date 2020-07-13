{if empty( $manage )}{assign "manage" ""}{/if}
<nav class="navbar-default navbar-static-side" role="navigation">
	<div class="sidebar-collapse">
		<ul class="nav metismenu" id="side-menu" style="padding-bottom:30px;">
			<li class="nav-header">
			</li>
			<li{if $manage == ""} class="active"{/if}><a href="{$_ADMIN.home}/"><i class="fa fa-home"></i><span class="nav-label">HOME</span></a></li>
			<li{if $manage == "information"} class="active"{/if}><a href="{$_ADMIN.home}/contents/information/"><i class="fa fa-info-circle"></i><span class="nav-label">お知らせ管理</span></a></li>
			<li{if $manage == "info_category"} class="active"{/if}><a href="{$_ADMIN.home}/contents/info_category/"><i class="fa fa-database"></i><span class="nav-label">お知らせカテゴリー管理</span></a></li>
			<li{if $manage == "work"} class="active"{/if}><a href="{$_ADMIN.home}/contents/work/"><i class="fa fa-newspaper-o"></i><span class="nav-label">作業実績管理</span></a></li>
			<li{if $manage == "siteconf"} class="active"{/if}><a href="{$_ADMIN.home}/contents/siteconf/"><i class="fa fa-gear"></i><span class="nav-label">サイト設定</span></a></li>
		</ul>
	</div>
</nav>