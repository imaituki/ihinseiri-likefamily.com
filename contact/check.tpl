<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="utf-8">
	{include file=$template_meta}
	<link rel="stylesheet" href="/common/css/import.css">
	{include file=$template_javascript}
</head>
<body id="contact">
<div id="base">
{include file=$template_header_}
<main>
<div id="body">
	<div id="page_title">
		<div class="img_back"><img src="/common/image/contents/contact/top.jpg" alt="お問い合わせ・お見積もり"></div>
		<div class="page_title_wrap">
			<div class="center">
				<h2><span class="main">お問い合わせ・お見積もり</span></h2>
			</div>
		</div>
	</div>
	<section>
		<div class="wrapper">
			<div class="center entry">
				<p class="mb10 c_red">まだフォームの送信は完了していません。</p>
				<p class="mb30">下記内容をご確認の上、「送信する」ボタンを押してください。</p>
				<form action="./#form" method="post">
					<table class="tbl_form mb50 check">
						<tbody>
							<tr class="first">
								<th scope="row">ご用件</th>
								<td>
									{$OptionContent[$arr_post.content]}
									<input type="hidden" name="content" value="{$arr_post.content}" >
								</td>
							</tr>
							<tr>
								<th scope="row">お申し込み種別</th>
								<td>
									{$OptionContactType[$arr_post.type]}
									<input type="hidden" name="type" value="{$arr_post.type}">
								</td>
							</tr>
							{if $arr_post.content == 1}
							<tr>
								<th scope="row">お部屋の広さ</th>
								<td>
									{$OptionRoom[$arr_post.room]}
									<input type="hidden" name="room" value="{$arr_post.room}">
								</td>
							</tr>
							{/if}
							<tr>
								<th scope="row">お問い合わせ内容</th>
								<td>
									{$arr_post.comment|nl2br|default:''}
									<input type="hidden" name="comment" value="{$arr_post.comment}" />
								</td>
							</tr>
							{if $arr_post.content == 1}
							<tr>
								<th scope="row">お部屋の写真</th>
								<td class="photo">
									{if empty( $arr_post._preview_image1 ) && empty( $arr_post._preview_image2 ) && empty( $arr_post._preview_image3 ) && empty( $arr_post._preview_image4 )}
									<p>お部屋の写真は選択されていません。</p>
									{/if}
									{if $arr_post._preview_image1  != NULL}
										<div>
											<img src="/common/php/imageDisp.php?dir=contact&image=image1" class="mb10">
											<input type="hidden" name="_preview_image1" value="{$arr_post._preview_image1}">
											<input type="hidden" name="_preview_image_image1" value="{$arr_post._preview_image_image1}">
											<input type="hidden" name="_preview_image_dir" value="{$arr_post._preview_image_dir}">
										</div>
									{/if}
									{if $arr_post._preview_image2  != NULL}
										<div>
											<img src="/common/php/imageDisp.php?dir=contact&image=image2" class="mb10">
											<input type="hidden" name="_preview_image2" value="{$arr_post._preview_image2}">
											<input type="hidden" name="_preview_image_image2" value="{$arr_post._preview_image_image2}">
											<input type="hidden" name="_preview_image_dir" value="{$arr_post._preview_image_dir}">
										</div>
									{/if}
									{if $arr_post._preview_image3  != NULL}
										<div>
											<img src="/common/php/imageDisp.php?dir=contact&image=image3" class="mb10">
											<input type="hidden" name="_preview_image3" value="{$arr_post._preview_image3}">
											<input type="hidden" name="_preview_image_image3" value="{$arr_post._preview_image_image3}">
											<input type="hidden" name="_preview_image_dir" value="{$arr_post._preview_image_dir}">
										</div>
									{/if}
									{if $arr_post._preview_image4  != NULL}
										<div>
											<img src="/common/php/imageDisp.php?dir=contact&image=image4" class="mb10">
											<input type="hidden" name="_preview_image4" value="{$arr_post._preview_image4}">
											<input type="hidden" name="_preview_image_image4" value="{$arr_post._preview_image_image4}">
											<input type="hidden" name="_preview_image_dir" value="{$arr_post._preview_image_dir}">
										</div>
									{/if}
									<input name="image1" type="hidden" value="{$arr_post._preview_image_image1}" />
									<input name="image2" type="hidden" value="{$arr_post._preview_image_image2}" />
									<input name="image3" type="hidden" value="{$arr_post._preview_image_image3}" />
									<input name="image4" type="hidden" value="{$arr_post._preview_image_image4}" />
								</td>
							</tr>
							{/if}
							<tr>
								<th scope="row">お名前</th>
								<td>
									{$arr_post.name}
									<input type="hidden" name="name" value="{$arr_post.name}">
								</td>
							</tr>
							<tr>
								<th scope="row">メールアドレス</th>
								<td>
									{$arr_post.mail}
									<input type="hidden" name="mail" value="{$arr_post.mail}">
								</td>
							</tr>
							{if $arr_post.content == 1}
							<tr>
								<th scope="row">電話番号</th>
								<td>
									{$arr_post.tel}
									<input type="hidden" name="tel" value="{$arr_post.tel}">
								</td>
							</tr>
							<tr>
								<th scope="row">ご住所</th>
								<td>
									{if empty( $arr_post.zip ) && empty( $arr_post.prefecture ) && empty( $arr_post.address1 ) && empty( $arr_post.address2 )}
									<p>ー</p>
									{/if}
									{if !empty( $arr_post.zip )}〒{$arr_post.zip}<br>{/if}
									{if !empty( $arr_post.prefecture )}{html_select_ken pre=1 selected=$arr_post.prefecture}{/if}{$arr_post.address1}{$arr_post.address2}
									<input type="hidden" name="zip" value="{$arr_post.zip}">
									<input type="hidden" name="prefecture" value="{$arr_post.prefecture}">
									<input type="hidden" name="address1" value="{$arr_post.address1}">
									<input type="hidden" name="address2" value="{$arr_post.address2}">
								</td>
							</tr>
							{/if}
						</tbody>
					</table>
					<div class="row form_button _check">
						<div class="col-sm-6 mb20 left">
							<button class="button _back" type="submit"><i class="fas fa-caret-left"></i>修正する</button>
						</div>
						<div class="col-sm-6 right">
							<button id="send_button" class="button" type="submit">送信する<i class="fas fa-caret-right"></i></button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</section>
</div>
</main>
{include file=$template_footer_}
</div>
</body>
</html>
