<?php
//-------------------------------------------------------------------
// 作成日: 2020/08/05
// 作成者: fukushima
// 内  容: プライバシーポリシー
//-------------------------------------------------------------------

//----------------------------------------
//  共通設定
//----------------------------------------
require "./config.ini";


//----------------------------------------
//  ヘッダー情報
//----------------------------------------
// タイトル
$_HTML_HEADER["title"] = "プライバシーポリシー";

// ディスクリプション
$_HTML_HEADER["description"] = "";

// キーワード
$_HTML_HEADER["keyword"] = "";



//----------------------------------------
//  smarty設定
//----------------------------------------
$smarty = new MySmarty("front");
$smarty->compile_dir .= "privacy/";

// 表示
$smarty->display("index.tpl");
?>