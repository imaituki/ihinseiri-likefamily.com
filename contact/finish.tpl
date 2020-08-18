<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="utf-8">
	{include file=$template_meta}
	<link rel="stylesheet" href="/common/css/import.css">
	{include file=$template_javascript}
</head>
<body id="contact">
<div id="base">
{include file=$template_header}
<main>
<div id="body">
	<div id="page_title">
		<div class="img_back"><img src="/common/image/contents/contact/top.jpg" alt="お問い合わせ・お見積り"></div>
		<div class="page_title_wrap">
			<div class="center">
				<h2><span class="main">お問い合わせ・お見積り</span></h2>
			</div>
		</div>
	</div>
    <section>
        <div class="wrapper">
            <div class="center finish">
                <div class="box">
                    <h2>お問い合わせが完了しました</h2>
                    <p class="mb20">ご入力いただいたメールアドレス{if !empty( $mail )}({$mail}){/if}宛に、確認メールをお送りしておりますのでご確認ください。</p>
                    <p class="mb20">
                        しばらくたっても自動送信メールが届かない場合には、主に次の原因が考えられます。<br>
                        「ご入力いただいたメールアドレスが間違っている」<br>
                        「迷惑メール対策による受信メールの自動削除設定」<br>
                        「メールボックスの容量オーバー（特にフリーメール）」<br>
                        「メールの受信制限や拒否設定（特に携帯メール）」</p>
                    <p class="mb20">メールアドレスの間違いや、ドメイン指定などの受信設定を今一度ご確認いただき、<br>
                        送受信できる正しいメールアドレスを、メールまたはお電話にてご連絡くださいますようお願い申し上げます。</p>
                    <p class="mb50">その他、何かご不明な点等ございましたら、お気軽にお問い合わせください。</p>
        			<div class="button"><a href="/" class="_type1 ov">トップページに戻る<i class="fas fa-caret-right"></i></a></div>
    			</div>
            </div>
        </div>
    </section>
</div>
</main>
{include file=$template_footer}
</div>
</body>
</html>
