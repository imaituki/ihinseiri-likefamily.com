<?php
//-------------------------------------------------------------------
// 作成日: 2020/07/14
// 作成者: fukushima
// 内  容: TOP
//-------------------------------------------------------------------

//----------------------------------------
//  共通設定
//----------------------------------------
require "./config.ini";


//----------------------------------------
//  ヘッダー情報
//----------------------------------------
// タイトル
$_HTML_HEADER["title"] = "";

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
$objWork        = new FT_work( $objManage );

// 新着情報
$t_information = $objInformation->GetSearchList( null, array("fetch" => _DB_FETCH_ALL), 3 );
// 作業実績
$t_work        = $objWork->GetSearchList( null, array("fetch" => _DB_FETCH_ALL), 3 );

// クラス削除
unset( $objManage );
unset( $objInformation, $objWork );

//----------------------------------------
//  smarty設定
//----------------------------------------
$smarty = new MySmarty("front");
$smarty->compile_dir .= "";

// テンプレートに設定
$smarty->assign( "t_information", $t_information );
$smarty->assign( "t_work"       , $t_work        );

// 表示
$smarty->display("_index.tpl");
?>
