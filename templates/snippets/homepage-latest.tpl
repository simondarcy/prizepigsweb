<h1 class="mb20">Latest Competitions <small><a href="latest.php">View All</a></small></h1>
<div class="row row-wrap">
    <!-- top 3 large -->
    {foreach from=$latest.competitions|array_slice:0:3 item=competition name=competitions_list}
    <a class="col-md-4" href="competition.php?id={$competition.id}">
        <div class="product-thumb">
            <header class="product-header">
                <img src="{$competition.image|ppimage:300}" alt="{$competition.title}" title="{$competition.title}" />
            </header>
            <div class="product-inner">
                <h5 class="product-title">{$competition.title}</h5>
                <p class="product-desciption">{$competition.excerpt}</p>
                <div class="product-meta"><span class="product-time"><i class="fa fa-clock-o"></i> {$competition.enddate|remaining} remaining</span>
                    
                </div>
                {if $competition.county}
                <p class="product-location"><i class="fa fa-map-marker"></i> {$competition.county}</p>{/if}
            </div>
        </div>
    </a>
    {/foreach}
</div>
<!-- latest small -->
<div class="row row-wrap">
    {foreach from=$latest.competitions|array_slice:3:8 item=competition name=competitions_list}
    <a class="col-md-3" href="competition.php?id={$competition.id}">
        <div class="product-thumb">
            <header class="product-header">
                <img src="{$competition.image|ppimage:300}" alt="{$competition.title}" title="{$competition.title}" />
            </header>
            <div class="product-inner">
                <h5 class="product-title">{$competition.title}</h5>
                <p class="product-desciption">{$competition.excerpt}</p>
                <div class="product-meta"><span class="product-time"><i class="fa fa-clock-o"></i>  {$competition.enddate|remaining} remaining</span>
                </div>
                {if $competition.county}
                <p class="product-location"><i class="fa fa-map-marker"></i> {$competition.county}</p>{/if}
            </div>
        </div>
    </a>
    {/foreach}
    
</div>