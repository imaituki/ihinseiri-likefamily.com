<?php
//-------------------------------------------------------------------
// 作成日: 2020/08/05
// 作成者: fukushima
// 内  容: お問い合わせ
//-------------------------------------------------------------------

//----------------------------------------
//  共通設定
//----------------------------------------
require "./config.ini";


//----------------------------------------
//  ヘッダー情報
//----------------------------------------
// タイトル
$_HTML_HEADER["title"] = "お問い合わせ・お見積り";

// ディスクリプション
$_HTML_HEADER["description"] = "";

// キーワード
$_HTML_HEADER["keyword"] = "";


//----------------------------------------
//  smarty設定
//----------------------------------------
$smarty = new MySmarty("front");
$smarty->compile_dir .= "contact/";

// オプション
$smarty->assign( "OptionContent", $OptionContent );
$smarty->assign( "OptionContactType", $OptionContactType );
$smarty->assign( "OptionRoom", $OptionRoom );
$smarty->assign( "OptionBuilding", $OptionBuilding );

// 表示
$smarty->display("index.tpl");
?>