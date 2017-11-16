{extends 'base.tpl'} 

{block categories-nav}{/block}

{block "content"}
	{json file="http://localhost:8888/prizepigs.ie/api/ending.php" assign="json"}
	<div class="gap"></div>
	<div class="container content" data-page="ending" data-category="ending">
		<div class="row">

		    <div class="col-md-12">

		     <div class="row row-wrap">

			<div class="col-md-12">
		     	<h1>Competitions ending soon.</h1>
		     </div>

			{foreach from=$json.competitions item=competition name=competitions_list}
			    <a class="col-md-4" href="competition.php?id={$competition.id}">
			      <div class="product-thumb">
			        <header class="product-header">
			          <img src="{$competition.image|ppimage:300}" alt="{$comeptition.title}" title="{$comeptition.title}" />
			        </header>
			        <div class="product-inner">
			          <h5 class="product-title">{$competition.title}</h5>
			          <p class="product-desciption">{$competition.excerpt}</p>
			          <div class="product-meta">
			            <span class="product-time"><i class="fa fa-clock-o"></i> {$competition.enddate|remaining} remaining</span>
            			{if $competition.county}
            			<p class="product-location"><i class="fa fa-map-marker"></i> {$competition.county}</p>{/if}
			          </div>
			        </div>
			      </div>
			    </a>
			      {if $smarty.foreach.competitions_list.iteration % 3 == 0}
			      <div class="clearfix"></div>
			      {/if}
			{/foreach} 
			</div><!-- end row wrap -->

		    </div><!--end col-md-9-->
	</div><!--end container -->

{/block}

<!--template: winners.tpl -->

