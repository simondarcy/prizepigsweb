{extends 'base.tpl'} 

{block categories-nav}{/block}

{block "content"}
	{json file="http://www.prizepigs.ie/api/winners.php" assign="json"}
	<div class="gap"></div>
	<div class="container content" data-page="winners" data-category="winners">
		<div class="row">

		    <div class="col-md-12">

		     <div class="row row-wrap">

			<div class="col-md-12">
		     	<h1>Congratulations to all our winners.</h1>
		     </div>

			{foreach from=$json.competitions item=competition name=competitions_list}
			    <div class="col-md-4">
			      <div class="product-thumb">
			        <header class="product-header">
			          <img src="{$competition.image|ppimage:300}" alt="{$comeptition.title}" title="{$comeptition.title}" />
			        </header>
			        <div class="product-inner">
			          <h5 class="product-title">{$competition.title}</h5>
			          <p class="product-desciption">Congratulations {$competition.winner}</p>
			          <div class="product-meta">
			            <span class="product-time"><i class="fa fa-clock-o"></i> Ended on {$competition.enddate|date_format:'%b %d, %Y'}</span>
			            
			          </div>
			        </div>
			      </div>
			    </div>
			      {if $smarty.foreach.competitions_list.iteration % 3 == 0}
			      <div class="clearfix"></div>
			      {/if}
			{/foreach} 
			</div><!-- end row wrap -->

		    </div><!--end col-md-9-->
	</div><!--end container -->

{/block}

<!--template: winners.tpl -->

