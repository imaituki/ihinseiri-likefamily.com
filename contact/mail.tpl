--------------------------------------------------------
[ご用件]
{$OptionContent[$arr_post.content]}

[お申し込み種別]
{$OptionContactType[$arr_post.type]}

[お問い合わせ内容]
{$arr_post.comment|default:""}

[お名前]
{$arr_post.name|default:""}

[メールアドレス]
{$arr_post.mail|default:""}

{if $arr_post.content == 1}
{if $arr_post.tel}[電話番号]
{$arr_post.tel|default:""}

{/if}
{if !empty( $arr_post.zip ) || !empty( $arr_post.prefecture ) || !empty( $arr_post.address1 ) || !empty( $arr_post.address2 )}[住所]
{if !empty( $arr_post.zip )}〒{$arr_post.zip|default:""}
{/if}
{if !empty( $arr_post.prefecture )}{html_select_ken selected=$arr_post.prefecture pre=1}{/if}{$arr_post.address1|default:""}{$arr_post.address2|default:""}

{/if}
{/if}