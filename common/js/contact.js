$(function(){
	$('form').append('<input type="hidden" name="_contents_dir" id="_contents_dir" value="contact" />');

	// 用件切り替え
	if( $('input[name="content"]:checked').val() == "2" ){
		$('.content1').hide();
		$('tr.first').next().children('th').text('お問い合わせ種別');
	}
	$('input[name="content"]').on('change',function(){
		if( $(this).val() == 2 ){
			$('.content1').hide();
			$('tr.first').next().children('th').text('お問い合わせ種別');
		}else{
			$('.content1').show();
			$('tr.first').next().children('th').text('お申し込み種別');
		}
	});

	$(document).on('click', '.img_remove', function(){
		$(this).prev('.load_image').remove();
		$(this).parent().next('.fpath').val('ファイルが選択されていません');
		$(this).remove();
	});

	//-------------------------------------------
	//  画像変更処理
	//-------------------------------------------
	// 設定
	var php_path   = "/common/php/";
	var photo_path = "/common/photo/";

	$(".file").change( function(){
		if( $(this).val() != '' ){
			var clone = $(this).clone(true);
			$(this).imageupload( function(res) {
				$(this).parents('label').children('.load_image').remove();
				$(this).before(res);
				if( $(res).find('.err-img').length > 0 ) {
					$(this).after(clone).remove();

				}
				$('#fileup_cover').remove();
				$(this).val('');
			});
		}
	});


	//-------------------------------------------
	//  画像アップロード
	//-------------------------------------------
	// iframeID
	var iframeID = 0;

	// アップロード処理
	$.fn.imageupload = function ( callback ) {

		// 対象
		var my = this;

		// iframe名
		var iframeName = 'fileupload_fm' + ++iframeID;

		// iframe HTML
		var iframeHtml = '<iframe name="' + iframeName + '" style="display:none;" ></iframe>';
		var fileupCoverHtml = '<div id="fileup_cover"><div id="fileup_cover_in"><div id="loader"></div>読み込み中</div></div>';

		// form HTML
		var formHtml  = '<form target="' + iframeName + '" method="post" enctype="multipart/form-data" />';
		var inputHtml = '<input type="hidden" name="_contents_dir" value="' + $('#_contents_dir').val() + '" /><input type="hidden" name="_contents_conf_path" value="' + $('#_contents_conf_path').val() + '" />';

		// 追加オプション
		$('.optimg').each( function() {
			inputHtml += this.outerHTML;
		});


		// iframe 追加（</body>上にこっそり追加）
		var iframe = $(iframeHtml).appendTo('body');
		var fileupCover = $(fileupCoverHtml).appendTo('body');

		// form 追加（対象タグの上下にこっそり追加）
		var form = my.wrapAll(formHtml).parent('form').attr( 'action', php_path + 'imageUp.php' );

		// input 追加
		my.before(inputHtml);

		// 実行
		form.submit(function() {
			iframe.on('load',function() {

				// 対象をformからはじき出してform削除
				form.after(my).remove();

				// iframeの中身取得
				data = $(iframe).contents().find('body').html();

				// iframe削除
				setTimeout(function() {
					iframe.remove();
					if( callback ) {
						callback.call( my, data );
					}

				}, 0 );

			});
		}).submit();

		// 戻り
		return this;

	}

});
