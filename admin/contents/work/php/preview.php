<?php
//-------------------------------------------------------------------
// 作成日: 2016/11/01
// 作成者: 鈴木
// 内  容: 作業実績 プレビュー
//-------------------------------------------------------------------

//----------------------------------------
//  共通設定
//----------------------------------------
require "./config.ini";
require _CGI_PATH. "/config/front.ini";

// タイトル
$_HTML_HEADER["title"] = "作業実績";

//----------------------------------------
//  データ整理
//----------------------------------------
// 保存済みの画像
if( is_array( $_ARR_IMAGE ) ) {
	foreach( $_ARR_IMAGE as $key => $val ) {
		if( !empty($arr_post["_image". $key. "_now"]) ){
			$arr_post["image". $key] = $arr_post["_image". $key. "_now"];
		}
	}
}

// 保存済みのファイル
if( is_array( $_ARR_FILE ) ) {
	foreach( $_ARR_FILE as $key => $val ) {
		if( !empty($arr_post["_file". $key. "_now"]) ){
			$arr_post["file". $key] = $arr_post["_file". $key. "_now"];
		}
	}
}

// タグ許可
if( !empty($arr_post["comment"]) ){
	$arr_post["comment"] = html_entity_decode( $arr_post["comment"] );
}


//----------------------------------------
//  表示
//----------------------------------------
$smarty = new MySmarty("front");
$smarty->compile_dir .= "news/";

// テンプレート設定
$smarty->assign( "info", $arr_post );

// 表示
$html = $smarty->fetch( _PREVIEW_TPL, "",  "news_preview" );

echo $html;
?>