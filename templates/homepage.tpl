{extends 'base.tpl'} 

{nocache}
{block "meta"}
    <title>Prize Pigs - Competitions and Giveaways</title>
    <meta name="description" content="Prize Pigs is Ireland's first dedicated mobile app for competitions and giveaways. Prize Pigs is packed with fabulous prizes and exclusive giveaways.">

    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:site" content="@prizepigs">
    <meta name="twitter:creator" content="@prizepigs">
    <meta name="twitter:title" content="Prize Pigs - Competitions and Giveaways">
    <meta name="twitter:description" content="Prize Pigs is Ireland's first dedicated mobile app for competitions and giveaways. Prize Pigs is packed with fabulous prizes and exclusive giveaways.">
    <meta name="twitter:url" content="https://www.prizepigs.ie/">
    <meta name="twitter:image:src" content="https://www.prizepigs.ie/img/social/twitter-card.jpg"> 
    
    <meta property="og:title" content="Prize Pigs - Competitions and Giveaways" />
    <meta property="og:type" content="article" />
    <meta property="og:url" content="https://www.prizepigs.ie/" />
    <meta property="og:image" content="https://www.prizepigs.ie/img/social/og-image-png.png" />
    <meta property="og:description" content="Prize Pigs is Ireland's first dedicated mobile app for competitions and giveaways. Prize Pigs is packed with fabulous prizes and exclusive giveaways."/> 
{/block}
{/nocache}

{block "content"}
          
		{json file="http://localhost:8888/prizepigs.ie/api/competitions_service.php?limit=11" assign="latest"}

        {json file="http://localhost:8888/prizepigs.ie/api/competitions_service.php?limit=6&featured=1" assign="featured"} 
 		
 		<div class="gap"></div>
        <div class="container content" data-page="home" data-category="latest">
            <div class="row">
                <div class="col-md-3">
            	{include file="snippets/categories-nav.tpl"} 
                </div>
                {include file="snippets/carousel.tpl"}

            </div>
            <div class="gap gap-small"></div>
            {include file="snippets/homepage-latest.tpl"}
            <div class="gap gap-small"></div>
        </div>

{/block}
<!-- template: homepage.tpl -->
