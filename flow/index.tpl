<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
{include file=$template_meta}
<link rel="stylesheet" href="/common/css/import.css">
{include file=$template_javascript}
</head>
<body id="flow">
<div id="base">
{include file=$template_header_}
<main>
<div id="body">
	<div id="page_title">
		<div class="img_back"><img src="/common/image/contents/flow/top.jpg" alt="作業の流れ"></div>
		<div class="page_title_wrap">
			<div class="center">
				<h2><span class="main">遺品整理の流れ</span></h2>
			</div>
		</div>
	</div>
    <section>
		<div class="wrapper flow">
			<div class="center">
				<div class="row mb50">
                    <div class="height-1 col-xs-4 col-xs-push-8 disp_tbl2 img">
                        <div class="disp_td">
                            <img src="/common/image/contents/flow/flow1.jpg" alt="見積りの依頼">
                        </div>
                    </div>
                    <div class="col-xs-8 col-xs-pull-4">
                        <div class="unit height-1 disp_tbl2">
                            <div class="disp_td">
                                <div class="num_hl mb20"><span class="num">1</span><span class="title">見積りの依頼</span></div>
                                <p class="mb20">お見積りは無料です。お電話またはお見積りフォームにてお問い合わせください。<br>
																	担当スタッフがお電話で丁寧にご説明しますので、ご要望をお聞かせください。遺品整理だけでなく、ハウスクリーニングや不用品回収、空家の管理、遺品の供養など、さまざまなサービスをご用意していますので、気軽にご相談ください。<br>
                                    <span data-tel="0862507283"><a href="tel:0862507283" class="tel ov">086-250-7283</a></span>（受付時間 {$_INFO.worktime|default:'9:00〜20:00'}）
                                </p>
                    			<div class="button"><a href="/contact/" class="_type2 ov">お見積りはこちら</a></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="mb50 pos_ac"><img src="/common/image/contents/flow/arrow.jpg" alt="矢印"></div>
                <div class="row mb50">
                    <div class="height-1 col-xs-4 disp_tbl2 img">
                        <div class="disp_td">
                            <img src="/common/image/contents/flow/flow2.jpg" alt="無料お見積り・契約">
                        </div>
                    </div>
                    <div class="height-1 col-xs-8">
                        <div class="unit height-1 disp_tbl2">
                            <div class="disp_td">
                                <div class="num_hl mb20"><span class="num">2</span><span class="title">無料お見積り・契約</span></div>
                                <p class="mb20">担当スタッフが直接お伺いし、無料でお見積りをいたします。<br>「少しでも安く済ませるにはどうすればよいか」「探し物がある」など、気になることがあれば何でもお聞きください。できる限り、お客様のご要望に沿ったプランのご提案をいたします。<br>
																お見積り内容・金額にご納得いただけましたら、ご契約、作業日程の確定を行います。<br>
																お見積り金額が20万円を超える場合には、事前に着手金（50％）のお支払いをお願いいたします。
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="mb50 pos_ac"><img src="/common/image/contents/flow/arrow.jpg" alt="矢印"></div>
                <div class="row mb50">
                    <div class="height-1 col-xs-4 col-xs-push-8 disp_tbl2 img">
                        <div class="disp_td">
                            <img src="/common/image/contents/flow/flow3.jpg" alt="作業開始">
                        </div>
                    </div>
                    <div class="col-xs-8 col-xs-pull-4">
                        <div class="unit height-1 disp_tbl2">
                            <div class="disp_td">
                                <div class="num_hl mb20"><span class="num">3</span><span class="title">作業開始</span></div>
                                <p class="mb20">当日は、お客様のお立ち会いのもと、ユニフォームを着た当社スタッフが作業を始めます。事前にお伺いしたご要望に合わせ、探し物や思い出の品の整理、不用品の処分などを進めます。ご親族が遠方にお住まいのため、立ち会いが難しい場合もご相談ください。お電話やメール、SNSなどで連絡を取りながら、作業させていただきます。
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="mb50 pos_ac"><img src="/common/image/contents/flow/arrow.jpg" alt="矢印"></div>
                <div class="row mb50">
                    <div class="height-1 col-xs-4 disp_tbl2 img">
                        <div class="disp_td">
                            <img src="/common/image/contents/flow/flow4.jpg" alt="作業完了報告">
                        </div>
                    </div>
                    <div class="height-1 col-xs-8">
                        <div class="unit height-1 disp_tbl2">
                            <div class="disp_td">
                                <div class="num_hl mb20"><span class="num">4</span><span class="title">作業完了報告</span></div>
                                <p class="mb20">ご契約内容に沿って、最後まで丁寧に、心を込めて作業いたします。<br>
																	作業終了後、お客様にご確認いただいたのち、ご請求書をお渡しいたしますので、1週間以内にお支払いください。<br>
																	また、作業終了後、1週間程度で作業完了報告書をご郵送いたします。
                                </p>
                            </div>
                        </div>
                    </div>
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
