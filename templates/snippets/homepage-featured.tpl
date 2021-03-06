 <div class="col-md-9">
<h1 class="mb20">Featured Competitions</h1>
        <div class="row row-wrap">
            {foreach from=$featured.competitions item=competition name=competitions_list}
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
    </div>
