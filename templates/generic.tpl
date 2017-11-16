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
    <meta name="twitter:url" content="https://www.prizepigs.ie{$smarty.server.REQUEST_URI}">
    <meta name="twitter:image:src" content="https://www.prizepigs.ie/img/social/twitter-card.jpg"> 
    
    <meta property="og:title" content="Prize Pigs - Competitions and Giveaways" />
    <meta property="og:type" content="article" />
    <meta property="og:url" content="https://www.prizepigs.ie{$smarty.server.REQUEST_URI}" />
    <meta property="og:image" content="https://s3-eu-west-1.amazonaws.com/prizepigs/img/social/ways-to-win-fb.png" />
    <meta property="og:description" content="Prize Pigs is Ireland's first dedicated mobile app for competitions and giveaways. Prize Pigs is packed with fabulous prizes and exclusive giveaways."/> 
{/block}
{/nocache}
{block "content"}
	<div class="gap"></div>
	<div class="container content" data-page="{$page}">
	{nocache}
	{json file="https://www.prizepigs.ie/api/pages.php" assign="json"}

	<h1>{$json.$page.title}</h1>
	{$json.$page.content}
	</div>
	{/nocache}
	<div class="gap"></div>
{/block}
<!-- template: generic.tpl -->


