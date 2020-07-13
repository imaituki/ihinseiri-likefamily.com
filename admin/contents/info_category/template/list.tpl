{literal}
<script type="text/javascript">
	sortableInit();
</script>
{/literal}
{include file=$template_pagenavi}
<table class="footable table table-stripped toggle-arrow-tiny tbl_1" data-page-size="15" id="sortable-table">
	<thead>
		<tr>
			<th width="50"></th>
			<th>名称</th>
			<th class="showhide" width="100">表示</th>
			<th class="delete" width="100">削除</th>
		</tr>
	</thead>
	<tbody>
		{foreach from=$arr_data item=data}
		<tr id="{$data.$_CONTENTS_ID}">
			<td class="move_i">{if $arr_post.mode|default:"" == "search"}☓{else}<i class="fa fa-sort"><span></span></i>{/if}</td>
			<td><a href="./edit.php?id={$data.$_CONTENTS_ID}">{$data.title}</a></td>
			<td class="pos_ac">
				<div class="switch">
					<div class="onoffswitch">
						<input type="checkbox" value="1" class="onoffswitch-checkbox btn_display" id="display{$data.$_CONTENTS_ID}" data-id="{$data.$_CONTENTS_ID}"{if $data.display_flg == 1} checked{/if}>
						<label class="onoffswitch-label" for="display{$data.$_CONTENTS_ID}">
							<span class="onoffswitch-inner"></span>
							<span class="onoffswitch-switch"></span>
						</label>
					</div>
				</div>
			</td>
			<td class="pos_ac">
				<a href="javascript:void(0)" class="btn btn-danger btn_delete" data-id="{$data.$_CONTENTS_ID}">削除</a>
			</td>
		</tr>
		{foreachelse}
		<tr>
			<td colspan="6">{$_CONTENTS_NAME}は見つかりません。</td>
		</tr>
		{/foreach}
	</tbody>
	<tfoot>
		<tr>
			<td colspan="10">
				<ul class="pagination pull-right"></ul>
			</td>
		</tr>
	</tfoot>
</table>
<div id="blueimp-gallery" class="blueimp-gallery">
	<div class="slides"></div>
	<h3 class="title"></h3>
	<a class="prev">‹</a>
	<a class="next">›</a>
	<a class="close">×</a>
	<a class="play-pause"></a>
	<ol class="indicator"></ol>
</div>
{include file=$template_pagenavi}