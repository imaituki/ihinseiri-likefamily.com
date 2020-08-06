<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="utf-8">
    {include file=$template_meta}
	<link rel="stylesheet" href="/common/css/import.css">
	{include file=$template_javascript}
</head>
<body id="privacy">
<div id="base">
{include file=$template_header_}
<main>
<div id="body">
	<div id="page_title">
		<div class="img_back"><img src="/common/image/contents/privacy/top.jpg" alt="お知らせ"></div>
		<div class="page_title_wrap">
			<div class="center">
				<h2><span class="main">プライバシーポリシー</span></h2>
			</div>
		</div>
	</div>
    <section>
		<div class="wrapper privacy" >
			<div class="center">
				<h2 class="hl_2 mb20"><span>個人情報保護方針</span></h2>
				<p class="mb20">株式会社LikeFamily（以下「当社」）は、以下のとおり個人情報保護方針を定め、個人情報保護の仕組みを構築し、全従業員に個人情報保護の重要性の認識と取組みを徹底させることにより、個人情報の保護を推進致します。</p>
				<div class="box bg0">
					<h3 class="hl_3">1. 個人情報の管理</h3>
					<p class="mb50">当社は、お客さまの個人情報を正確かつ最新の状態に保ち、個人情報への不正アクセス・紛失・破損・改ざん・漏洩などを防止するため、セキュリティシステムの維持・管理体制の整備・社員教育の徹底等の必要な措置を講じ、安全対策を実施し個人情報の厳重な管理を行ないます。</p>
					<h3 class="hl_3">2.個人情報の利用目的</h3>
					<p class="mb50">当社は、お客さまよりお預かりした個人情報を適切に管理し、次のいずれかに該当する場合を除き、個人情報を第三者に開示いたしません。<br>
                    ・お客さまの同意がある場合<br>
                    ・お客さまが希望されるサービスを行なうために当社が業務を委託する業者に対して開示する場合<br>
                    ・法令に基づき開示することが必要である場合</p>
					<h3 class="hl_3">3.個人情報の第三者への開示・提供の禁止</h3>
					<p class="mb50">当社は、お客さまよりお預かりした個人情報を適切に管理し、次のいずれかに該当する場合を除き、個人情報を第三者に開示いたしません。<br>
					・お客さまの同意がある場合<br>
					・お客さまが希望されるサービスを行なうために当社が業務を委託する業者に対して開示する場合<br>
					・法令に基づき開示することが必要である場合</p>
					<h3 class="hl_3">4.個人情報の安全対策</h3>
					<p class="mb50">当社は、個人情報の正確性及び安全性確保のために、セキュリティに万全の対策を講じています。</p>
					<h3 class="hl_3">5.ご本人の照会</h3>
					<p class="mb50">お客さまからお預かりした個人情報は、当社からのご連絡や業務のご案内やご質問に対する回答として、電子メールや資料のご送付に利用いたします。</p>
					<h3 class="hl_3">6.法令、規範の遵守と見直し</h3>
					<p class="mb50">当社は、保有する個人情報に関して適用される日本の法令、その他規範を遵守するとともに、本ポリシーの内容を適宜見直し、その改善に努めます。</p>
					<h3 class="hl_3">7.お問い合わせ</h3>
					<p class="mb10">当社の個人情報の取扱に関するお問い合せは下記までご連絡ください。</p>
					<p>{$_INFO.company|default:'株式会社LikeFamily'}<br />
						〒{$_INFO.zip|default:'701-0221'}  {$_INFO.address|default:'岡山県岡山市南区藤田888-4'}<br />
						TEL：<span class="tel" data-tel="{$_INFO.tel|replace:'-':''|default:'0862507283'}">{$_INFO.tel|default:'086-250-7283'}</span>　FAX：{$_INFO.fax|default:'086-250-7751'}
					</p>
				</div>
			</div>
		</div>
	</section>
</div>
</main>
{include file=$template_footer_}
</div>
</body>
</html>
