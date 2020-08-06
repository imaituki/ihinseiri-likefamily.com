<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="utf-8">
    {include file=$template_meta}
	<link rel="stylesheet" href="/common/css/import.css">
	{include file=$template_javascript}
	<script type="text/javascript" src="/common/js/lightbox/import.js"></script>
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
		<div id="info_detail" class="wrapper-t center">
			<div class="box">
				<div class="box_in">
					<div class="mb20"><span class="date cg2">{$info.date|date_format:"%Y.%m.%d"}</span><span class="tag _c1">{$OptionInfoCategory[$info.id_category]}</span></div>
					<h2 class="title">{$info.title}</h2>
					{if !empty( $info.image1 )}<div class="pos_ac mb50"><img src="{$_IMAGEPATH}/information/image1/l_{$info.image1}" alt="{$info.image1_caption|default:$info.title}"></div>{/if}
					<div class="entry mb50">
						{$info.comment|default:""}
					</div>
					{if !empty( $info.image2 ) || !empty( $info.image3 ) || !empty( $info.image4 ) || !empty( $info.image5 )}
					<div class="row">
						{if !empty( $info.image2 )}
						<div class="col-xs-3 col-6 height-1 mb20">
							<a class="ov" href="{$_IMAGEPATH}/information/image2/l_{$info.image2}" rel="lightbox">
								<div class="img_rect"><img src="{$_IMAGEPATH}/information/image2/m_{$info.image2}" alt="{$info.image2_caption|default:$info.title}"></div>
							</a>
							{if !empty( $info.image2_caption )}<p>{$info.image2_caption}</p>{/if}
						</div>
						{/if}
						{if !empty( $info.image3 )}
						<div class="col-xs-3 col-6 height-1 mb20">
							<a class="ov" href="{$_IMAGEPATH}/information/image3/l_{$info.image3}" rel="lightbox">
								<div class="img_rect"><img src="{$_IMAGEPATH}/information/image3/m_{$info.image3}" alt="{$info.image3_caption|default:$info.title}"></div>
							</a>
							{if !empty( $info.image3_caption )}<p>{$info.image3_caption}</p>{/if}
						</div>
						{/if}
						{if !empty( $info.image4 )}
						<div class="col-xs-3 col-6 height-1 mb20">
							<a class="ov" href="{$_IMAGEPATH}/information/image4/l_{$info.image4}" rel="lightbox">
								<div class="img_rect"><img src="{$_IMAGEPATH}/information/image4/m_{$info.image4}" alt="{$info.image4_caption|default:$info.title}"></div>
							</a>
							{if !empty( $info.image4_caption )}<p>{$info.image4_caption}</p>{/if}
						</div>
						{/if}
						{if !empty( $info.image5 )}
						<div class="col-xs-3 col-6 height-1 mb20">
							<a class="ov" href="{$_IMAGEPATH}/information/image5/l_{$info.image5}" rel="lightbox">
								<div class="img_rect"><img src="{$_IMAGEPATH}/information/image5/m_{$info.image5}" alt="{$info.image5_caption|default:$info.title}"></div>
							</a>
							{if !empty( $info.image5_caption )}<p>{$info.image5_caption}</p>{/if}
						</div>
						{/if}
					</div>
					{/if}
				</div>
			</div>
		</div>
		<div class="wrapper">
			<div class="button"><a href="./{if !empty( $arr_get.page )}?page={$arr_get.page}{/if}" class="_type1 ov"><i class="fas fa-caret-left"></i>一覧へ戻る</a></div>
		</div>
	</section>
</div>
</main>
{include file=$template_footer_}
</div>
</body>
</html>
