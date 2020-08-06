<?php
//-------------------------------------------------------------------
// 作成日: 2020/08/05
// 作成者: fukushima
// 内  容: お知らせ
//-------------------------------------------------------------------

//----------------------------------------
//  共通設定
//----------------------------------------
require "./config.ini";


if( !empty( $arr_get["id"] ) && is_numeric( $arr_get["id"] ) ){
	$id =  $arr_get["id"] ;
}

//----------------------------------------
//  データ取得
//----------------------------------------
// 操作クラス
$objManage      = new DB_manage( _DNS );
$objInformation = new FT_information( $objManage );

// 新着情報
$t_information = $objInformation->GetIdRow( $id );

// クラス削除
unset( $objManage );
unset( $objInformation );


//----------------------------------------
//  ヘッダー情報
//----------------------------------------
// タイトル
$_HTML_HEADER["title"] = $t_information["title"] . " | お知らせ";

// ディスクリプション
$_HTML_HEADER["description"] = "";

// キーワード
$_HTML_HEADER["keyword"] = "";


if( $t_information["id_information"] ){
	//----------------------------------------
	//  smarty設定
	//----------------------------------------
	$smarty = new MySmarty("front");
	$smarty->compile_dir .= "news/";

	// テンプレートに設定
	$smarty->assign( "info", $t_information );

	// 表示
	$smarty->display("detail.tpl");
}else{
	header( "Location:./" );
}
?>