<!--  snippets/carousel.tpl -->
<div class="col-md-9">

    <div class="owl-carousel owl-slider" id="owl-carousel-slider" data-pagination="false" data-nav="top-right">
        
        {foreach from=$featured.competitions item=competition name=competitions_list}
         <div>
            <a href="competition.php?id={$competition.id}" class="bg-holder">
                <img src="{$competition.image|ppimage:900:500}" alt="{$competition.title}" title="{$competition.title}" />
                <div class="text-white text-center slider-caption slider-caption-bottom">
                    <h3 class="text-uc">{$competition.title}</h3>
                    <div class="countdown countdown-big" data-countdown="{$competition.enddate|date_format:'%b %d, %Y %H:%M:%S'}"></div>
                    <a class="btn btn-lg btn-ghost btn-white" href="competition.php?id={$competition.id}">Enter Now</a>
                </div>
            </a>
        </div>

       {/foreach}


</div>
</div>

<!-- END TOP AREA snippets/carousel.tpl -->