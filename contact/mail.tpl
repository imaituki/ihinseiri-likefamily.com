--------------------------------------------------------
[ご用件]
{$OptionContent[$arr_post.content]}

{if $arr_post.content == 1}[お申し込み種別]{else}[お問い合わせ種別]{/if}
{$OptionContactType[$arr_post.type]}

{if $arr_post.content == 1 && !empty( $arr_post.building )}[建物種別]
{$OptionBuilding[$arr_post.building]}

{/if}
{if $arr_post.content == 1 && !empty( $arr_post.room )}[お部屋の広さ]
{$OptionRoom[$arr_post.room]}

{/if}
{if $arr_post.content == 1 && ( !empty( $arr_post.image1 ) || !empty( $arr_post.image2 ) || !empty( $arr_post.image3 ) || !empty( $arr_post.image4 ) )}[お部屋の写真]
{if !empty( $arr_post.image1 )}{if $smarty.server.HTTPS}https://{else}http://{/if}{$smarty.server.HTTP_HOST}{$_IMAGEPATH}/contact/image1/l_{$arr_post.image1}
{/if}
{if !empty( $arr_post.image2 )}{if $smarty.server.HTTPS}https://{else}http://{/if}{$smarty.server.HTTP_HOST}{$_IMAGEPATH}/contact/image2/l_{$arr_post.image2}
{/if}
{if !empty( $arr_post.image3 )}{if $smarty.server.HTTPS}https://{else}http://{/if}{$smarty.server.HTTP_HOST}{$_IMAGEPATH}/contact/image3/l_{$arr_post.image3}
{/if}
{if !empty( $arr_post.image4 )}{if $smarty.server.HTTPS}https://{else}http://{/if}{$smarty.server.HTTP_HOST}{$_IMAGEPATH}/contact/image4/l_{$arr_post.image4}
{/if}

{/if}
[お問い合わせ内容]
{$arr_post.comment|default:""}

[お名前]
{$arr_post.name|default:""}

[メールアドレス]
{$arr_post.mail|default:""}

{if $arr_post.content == 1}[電話番号]
{$arr_post.tel|default:""}

{if !empty( $arr_post.zip ) || !empty( $arr_post.prefecture ) || !empty( $arr_post.address1 ) || !empty( $arr_post.address2 )}[住所]
{if !empty( $arr_post.zip )}〒{$arr_post.zip|default:""}
{/if}
{if !empty( $arr_post.prefecture )}{html_select_ken selected=$arr_post.prefecture pre=1}{/if}{$arr_post.address1|default:""}{$arr_post.address2|default:""}

{/if}
{/if}
--------------------------------------------------------