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


if( !empty( $arr_get["page"] ) && is_numeric( $arr_get["page"] ) ){
	$arr_post["page"] =  $arr_get["page"] ;
}

//----------------------------------------
//  ヘッダー情報
//----------------------------------------
// タイトル
$_HTML_HEADER["title"] = "お知らせ";

// ディスクリプション
$_HTML_HEADER["description"] = "";

// キーワード
$_HTML_HEADER["keyword"] = "";


//----------------------------------------
//  データ取得
//----------------------------------------
// 操作クラス
$objManage      = new DB_manage( _DNS );
$objInformation = new FT_information( $objManage );

// 新着情報
$t_information = $objInformation->GetSearchList( $arr_post );

// クラス削除
unset( $objManage );
unset( $objInformation );

//----------------------------------------
//  smarty設定
//----------------------------------------
$smarty = new MySmarty("front");
$smarty->compile_dir .= "news/";

// テンプレートに設定
$smarty->assign( "page_navi"    , $t_information["page"] );
$smarty->assign( "t_information", $t_information["data"] );

// 表示
$smarty->display("index.tpl");
?>