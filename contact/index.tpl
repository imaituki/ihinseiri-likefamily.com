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
				<div class="tel_unit mb50">
					<h3 class="mb10">お急ぎの場合はお電話にてご連絡ください！</h3>
					<p class="img"><img src="/common/image/contents/contact/person.png" alt=""></p>
					<div class="tel_box">
						<p class="num">
							<span class="tel" data-tel="086-250-7283"><a href="tel:086-250-7283">086-250-7283</a></span>
							<span class="time"><span class="tag">相談無料</span>受付時間 9:00〜20:00</span>
						</p>
					</div>
				</div>
				<h2 class="hl_2 mb30"><span>お問い合わせ・見積もりフォーム</span></h2>
				<form action="./check.php#form" method="post" enctype="multipart/form-data">
					<table class="tbl_form mb50">
						<tbody>
							<tr class="first">
								<th scope="row">ご用件<span class="need">必須</span></th>
								<td class="content">
									{if !empty( $message.ng.content )}<p class="error">{$message.ng.content}</p>{/if}
									{html_radios name="content" options=$OptionContent selected=$arr_post.content|default:1}
								</td>
							</tr>
							<tr>
								<th scope="row">お申し込み種別<span class="need">必須</span></th>
								<td>
									{if !empty( $message.ng.type )}<p class="error">{$message.ng.type}</p>{/if}
									<select name="type">
										<option value="">選択してください</option>
										{html_options options=$OptionContactType selected=$arr_post.type}
									</select>
								</td>
							</tr>
							<tr class="content1">
								<th scope="row">お部屋の広さ</th>
								<td>
									{if !empty( $message.ng.room )}<p class="error">{$message.ng.room}</p>{/if}
									<select name="room">
										<option value="">選択してください</option>
										{html_options options=$OptionRoom selected=$arr_post.room}
									</select>
								</td>
							</tr>
							<tr class="content1">
								<th scope="row">お部屋の写真</th>
								<td class="photo">
									<div>
										<label class="photo_uload" for="fuload-1">
											<input type="file" name="image1" class="file" id="f-1" onchange="$('#fpath-1').val($(this).val())">
											<input class="button type-6" type="button" id="fuload-1" value="ファイルを選択" onclick="$('#f-1').click();">
										</label>
										<input class="fpath" type="text" id="fpath-1" value="ファイルが選択されていません" size="35" readonly="" onclick="$('#f-1').click();">
									</div>
									<div>
										<label class="photo_uload" for="fuload-2">
											<input type="file" name="image2" class="file" id="f-2" onchange="$('#fpath-2').val($(this).val())">
											<input class="button type-6" type="button" id="fuload-2" value="ファイルを選択" onclick="$('#f-2').click();">
										</label>
										<input class="fpath" type="text" id="fpath-2" value="ファイルが選択されていません" size="35" readonly="" onclick="$('#f-2').click();">
									</div>
									<div>
										<label class="photo_uload" for="fuload-3">
											<input type="file" name="image3" class="file" id="f-3" onchange="$('#fpath-3').val($(this).val())">
											<input class="button type-6" type="button" id="fuload-3" value="ファイルを選択" onclick="$('#f-3').click();">
										</label>
										<input class="fpath" type="text" id="fpath-3" value="ファイルが選択されていません" size="35" readonly="" onclick="$('#f-3').click();">
									</div>
									<div>
										<label class="photo_uload" for="fuload-4">
											<input type="file" name="image4" class="file" id="f-4" onchange="$('#fpath-4').val($(this).val())">
											<input class="button type-6" type="button" id="fuload-4" value="ファイルを選択" onclick="$('#f-4').click();">
										</label>
										<input class="fpath" type="text" id="fpath-4" value="ファイルが選択されていません" size="35" readonly="" onclick="$('#f-4').click();">
									</div>
									<p>※送信可能なファイルのサイズは20MBまでとなります。</p>
								</td>
							</tr>
							<tr>
								<th scope="row">お問い合わせ内容<span class="need">必須</span></th>
								<td>
									{if !empty( $message.ng.comment )}<p class="error">{$message.ng.comment}</p>{/if}
									<textarea rows="5" name="comment" placeholder="例）母が亡くなり、遺品整理をお願いしたいです。私自身は東京に住んでおり、○月○日から3日しか岡山に滞在できませんが大丈夫ですか？">{$arr_post.comment|default:""}</textarea>
								</td>
							</tr>
							<tr>
								<th scope="row">お名前<span class="need">必須</span></th>
								<td>
									{if !empty( $message.ng.name )}<p class="error">{$message.ng.name}</p>{/if}
									<input type="text" name="name" value="{$arr_post.name|default:''}">
								</td>
							</tr>
							<tr>
								<th scope="row">メールアドレス<span class="need">必須</span></th>
								<td>
									{if !empty( $message.ng.mail )}<p class="error">{$message.ng.mail}</p>{/if}
									<input type="text" name="mail" value="{$arr_post.mail|default:''}" maxlength="255">
								</td>
							</tr>
							<tr class="content1">
								<th scope="row">電話番号<span class="need">必須</span></th>
								<td>
									{if !empty( $message.ng.tel )}<p class="error">{$message.ng.tel}</p>{/if}
									<input type="text" name="tel" value="{$arr_post.tel|default:''}" maxlength="13" class="w150" placeholder="090-000-000">
								</td>
							</tr>
							<tr class="last content1">
								<th class="pos-vt">住所</th>
								<td>
									{if !empty( $message.ng.zip )}<p class="error">{$message.ng.zip}</p>{/if}
									{if !empty( $message.ng.prefecture )}<p class="error">{$message.ng.prefecture}</p>{/if}
									{if !empty( $message.ng.address1 )}<p class="error">{$message.ng.address1}</p>{/if}
									{if !empty( $message.ng.address2 )}<p class="error">{$message.ng.address2}</p>{/if}
									<dl>
										<dt>郵便番号</dt>
										<dd class="mb20">
											<input name="zip" value="{$arr_post.zip|default:''}" type="text" class="zip w150" placeholder="000-0000" maxlength="8">
											<a href="javascript:AjaxZip3.zip2addr('zip','','prefecture','address1');" class="bTn wp100 w_sm_A dis_b dis_sm_ib zip_block ov">郵便番号から検索する</a>
										</dd>
									</dl>
									<dl>
										<dt>都道府県</dt>
										<dd class="mb20">
											{html_select_ken name="prefecture" selected=$arr_post.prefecture|default:''}
										</dd>
									</dl>
									<dl>
										<dt>市区町村・番地</dt>
										<dd class="mb20">
											<input name="address1" value="{$arr_post.address1|default:''}" type="text" placeholder="市区町村・番地を入力してください" maxlength="255">
										</dd>
									</dl>
									<dl>
										<dt>建物・マンション名</dt>
										<dd class="mb20">
											<input name="address2" value="{$arr_post.address2|default:''}" type="text" placeholder="建物・マンション名を入力してください" maxlength="255">
										</dd>
									</dl>
								</td>
							</tr>
						</tbody>
					</table>
					<div class="form_button pos_ac">
						<button class="button" type="submit">入力内容を確認する<i class="fas fa-caret-right"></i></button>
					</div>
				</form>
			</div>
		</div>
	</section>
</div>
{include file=$template_footer_}
</div>
</body>
</html>
