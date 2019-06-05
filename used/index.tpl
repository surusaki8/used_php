{include file="../../common/header.tpl" title={$page_title} _css="product,../lightbox/css/lightbox"}
<body>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/ja_JP/sdk.js#xfbml=1&version=v2.4";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<script src="../../lightbox/js/lightbox.js" type="text/javascript"></script>  
<!-- header -->
{include file="../../common/header_menu.tpl"}
<!-- header -->

<!-- pan -->
<p class="pan"><a href="../../">HOME</a> > <a href="../../product/">製品情報</a> > 中古製品</p><!-- pan -->

<!-- cts -->
<div class="cts">
	<div class="wrap ">
		<div class="mainBlock used">
			<h1><img src="../../images/product/ttl_used.png" width="720" height="33" alt=""></h1>
			<div class="greeting">
				<dl>
					<dt>メンテ済みのお得な中古テーブルも多数！</dt>
					<dd>弊社では、弊社製造及び輸入販売を行った中古品に修理･メンテナンスを施し、販売を行っております。<br />
					ご希望の製品がございましたらお気軽にお問い合わせください。<br />
					画像をクリックすれば、各商品の詳細情報をご覧いただけます。<br />
					また、ご使用になられていない弊社販売テーブルがございましたら、下取り・買取のご相談を承ります。<br />
					お気軽に御相談ください！</dd>
				</dl>
				<p><img src="images/img_used.png" width="720" height="147" alt=""></p>
				<p><img src="images/tel.png" width="720" height="60" alt=""></p>
			</div>
			<h2>販売中の中古カイロプラクティックテーブル</h2>
		{if $list}
			{foreach from=$list key=k item=vs}
			<!-- アイテムブロック -->
			<div class="item">
				<h3>{$vs.title}</h3>
				<div class="imgBlock">
			{for $i=1 to 4}
				{if $vs["image_file_ext$i"]}
					<p class="img"><a href="../../app/images/used/{$vs.id}_{$i}.{$vs["image_file_ext$i"]}" rel="lightbox"><img src="../../app/images/used/{$vs.id}_{$i}.{$vs["image_file_ext$i"]}" width="340" height="240" alt=""></a></p>
				{/if}
			{/for}
				</div>
				<div class="table">
					<table>
					{if $vs.size}
						<tr>
							<th>サイズ：</th>
							<td>{$vs.size|escape|nl2br nofilter}</td>
						</tr>
					{/if}
					{if $vs.weight}
						<tr>
							<th>重量：</th>
							<td>約{$vs.weight}kg</td>
						</tr>
					{/if}
					{if $vs.color}
						<tr>
							<th>カラー：</th>
							<td>{$vs.color}</td>
						</tr>
					{/if}
					{if $vs.model_year}
						<tr>
							<th>年式：</th>
							<td>{$vs.model_year}年</td>
						</tr>
					{/if}
					</table>
					<table>

					{if $vs.comment}
						<tr>
							<th>コメント：</th>
							<td>{$vs.comment}</td>
						</tr>
					{/if}
					{if $vs.information}
						<tr>
							<th>製品情報：</th>
							<td>{if $vs.information_url}<a href="{$vs.information_url}">{/if}{$vs.information}{if $vs.information_url}</a>{/if}</td>
						</tr>
					{/if}
					{if $vs.price}
						<tr>
							<th>価格：</th>
							<td>{$vs.price}</td>
						</tr>
					{/if}
					</table>
				</div>
			</div><!-- アイテムブロック -->
		{/foreach}
	{/if}
	{$paging_html nofilter}
		</div>
		{include file="../../common/side_product.tpl"}
	</div>
</div>
<!-- cts -->

<!-- footer -->
{include file="../../common/footer.tpl"}
<!-- footer -->

</body>
</html>
