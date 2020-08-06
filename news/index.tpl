<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="utf-8">
    {include file=$template_meta}
	<link rel="stylesheet" href="/common/css/import.css">
	{include file=$template_javascript}
</head>
<body id="news">
<div id="base">
{include file=$template_header_}
<main>
<div id="body">
	<div id="page_title">
		<div class="img_back"><img src="/common/image/contents/news/top.jpg" alt="お知らせ"></div>
		<div class="page_title_wrap">
			<div class="center">
				<h2><span class="main">お知らせ</span></h2>
			</div>
		</div>
	</div>
	<section>
		<div class="wrapper center">
			{foreach from=$t_information item="info" name="loopInfo"}
			<div class="info_box">
				<a class="ov" href="./detail.php?id={$info.id_information}{if !empty( $arr_get.page )}&page={$arr_get.page}{/if}">
					<div class="photo img_rect">
						<img src="{if !empty( $info.image1 )}{$_IMAGEPATH}/information/image1/m_{$info.image1}{else}/common/image/contents/null.jpg{/if}" alt="{$info.title}">
					</div>
					<div class="text">
						<div class="disp_td">
							<p class="mb10">
								<span class="tag">{$OptionInfoCategory[$info.id_category]}</span>
								<span class="date cg2">{$info.date|date_format:"%Y.%m.%d"}</span>
							</p>
							<h3>{$info.title}</h3>
						</div>
					</div>
				</a>
			</div>
			{foreachelse}
			<p>お知らせは準備中です。</p>
			{/foreach}
			{*<div class="info_box">
				<a class="ov" href="###">
					<div class="photo img_rect">
						<img src="/common/image/contents/null.jpg" alt="">
					</div>
					<div class="text">
						<div class="disp_td">
							<p class="mb10">
								<span class="tag">お知らせ</span>
								<span class="date cg2">2020.01.01</span></p>
							<h3>ここにお知らせタイトルが入ります。</h3>
						</div>
					</div>
				</a>
			</div>
			<div class="info_box">
				<a class="ov" href="###">
					<div class="photo img_rect">
						<img src="/common/image/contents/null.jpg" alt="">
					</div>
					<div class="text">
						<div class="disp_td">
							<p class="mb10">
								<span class="tag">お知らせ</span>
								<span class="date cg2">2020.01.01</span></p>
							<h3>ここにお知らせタイトルが入ります。</h3>
						</div>
					</div>
				</a>
			</div>*}
			<div class="list_pager">
				<ul class="mt10">
					{$page_navi.LinkPage}
				</ul>
			</div>
		</div>
	</section>
</div>
</main>
{include file=$template_footer_}
</div>
</body>
</html>
