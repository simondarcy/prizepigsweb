{extends 'base.tpl'} 

{block categories-nav}{/block}

{block "content"}
	{json file="http://localhost:8888/prizepigs.ie/api/competitions_service.php" assign="json"}
	<div class="gap"></div>
	<div class="container content" data-page="categories" data-category="latest">
		<div class="row">
			<div class="col-md-3">
			{include file="snippets/categories-nav.tpl"} 
			</div>

		    {include file="snippets/competition-list.tpl"}
		</div>
	</div>

{/block}

<!--template: category.tpl -->

