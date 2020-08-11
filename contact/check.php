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
$_HTML_HEADER["title"] = "お問い合わせ・お見積もり";

// ディスクリプション
$_HTML_HEADER["description"] = "";

// キーワード
$_HTML_HEADER["keyword"] = "";


//----------------------------------------
//  データチェック
//----------------------------------------
// 操作クラス
$objManage  = new DB_manage( _DNS );
$objContact  = new FT_contact( $objManage );

// データチェック
$message = $objContact->check( $arr_post );

// クラス削除
unset( $objManage     );
unset( $objContact );

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

//テンプレートに設定
$smarty->assign( "arr_post", $arr_post );
$smarty->assign( "message", $message );


if( empty( $message["ng"] ) ) {

	// 表示
	$smarty->display("check.tpl");
} else {

	// 表示
	$smarty->display("index.tpl");

}


?>