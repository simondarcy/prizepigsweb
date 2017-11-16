{extends 'base.tpl'} 

{nocache}
{block "meta"}
{json file="http://www.prizepigs.ie/api/competition_detail.php?compid=$id" assign="competition"}
<title>Prize Pigs - {$competition.title}</title>
<meta name="description" content="{$competition.excerpt}">
<meta name='twitter:card' content="summary_large_image">
<meta name='twitter:site' content="@prizepigs">
<meta name='twitter:creator' content="@prizepigs">
<meta name='twitter:title' content="{$competition.title}">
<meta name='twitter:description' content="{$competition.excerpt}">
<meta name='twitter:url' content='https://www.prizepigs.ie{$smarty.server.REQUEST_URI}'>
<meta name='twitter:image:src' content='{$competition.image|ppimage:"600"}'> 
<meta property='og:title' content='{$competition.title}' />
<meta property='og:type' content='article' />
<meta property='og:url' content='https://www.prizepigs.ie{$smarty.server.REQUEST_URI}' />
<meta property='og:image' content='{$competition.image|ppimage:"600"}' />
<meta property='og:description' content='{$competition.excerpt}' />
 
{/block}
{/nocache}

{block "content"}
{json file="http://localhost:8888/prizepigs.ie/api/competition_detail.php?compid=$id" assign="competition"}
<div class="gap"></div>

<div class="container content" data-page="competition" data-competition="{$competition.id}" data-category="{$competition.category}">
    <div class="row">
        <div class="col-md-3">
            <div class="product-page-meta box">
                <h1 id="comp-title">{$competition.title}</h1>
                <p>{$competition.excerpt}</p>
                <a class="btn btn-primary btn-lg btn-block" href="#question">Enter Now</a>
                {include file="snippets/sharelinks.tpl"}
                <ul class="list product-page-meta-info">
                    {if $competition.finished == 1}
                        <li><span class="product-page-meta-title">Competition has ended</span>
                    {else}
                        <li><span class="product-page-meta-title">Time Left to enter</span>
                            <!-- COUNTDOWN -->
                            <div data-countdown="{$competition.enddate|date_format:'%b %d, %Y %H:%M:%S'}" class="countdown countdown-inline"></div>
                        </li>
                         {if $competition.enddate|isendingsoon}
                        <li><span class="product-page-meta-title red">Ending Soon!</span></li>
                        {/if}
                    {/if}
                    
                </ul>
            </div>
            <div class="gap gap-small"></div>
            {include file="snippets/categories-nav.tpl"} 
        </div>
        <div class="col-md-9">

                <img src="{$competition.image|ppimage:960:540}" alt="{$competition.title}" title="{$competition.title}" />
                

            <div class="gap gap-small"></div>
            <div class="tabbable">
                <ul class="nav nav-tabs" id="myTab">
                    <li class="active"><a href="#tab-1" data-toggle="tab"><i class="fa fa-tag"></i>About</a>
                    </li>
                    {if $competition.location}
                    <li><a href="#google-map-tab" data-toggle="tab"><i class="fa fa-map-marker"></i>Location</a>
                    </li>
                    {/if}
                    <li><a href="#tab-3" data-toggle="tab"><i class="fa fa-info"></i>Terms</a></li>
                </ul>

                <div class="tab-content">
                    <div class="tab-pane fade in active" id="tab-1">
                        <div class="row">
                            <div class="col-md-12">
                                <h1>{$competition.title}</h1>
                                <p class="pink">
                                    {if $competition.finished == 1}
                                        Competition has ended
                                    {else}
                                        Ends: {$competition.enddate|date_format:"%b %d, %Y at %H:%M:%S"}
                                        {if $competition.enddate|isendingsoon}
                                        <span class="ending red"> Ending soon!</span>
                                        {/if}
                                    {/if}

                                </p>

                                <div class="in-comp-share">
                                     {include file="snippets/sharelinks.tpl"}
                                </div>
                                <p class="bold">{$competition.excerpt}</p>
                                <section class="competition-body">{$competition.body}</section>
                                <a name="question"></a>
                                {nocache}
                                {if $competition.finished == 1}
                                    <section>
                                        <button class="btn btn-primary">
                                            This competition has ended
                                        </button>
                                    </section>
                                {else}
                                    {if $user}
                                    <p>To be in with a chance of winning this prize simply answer the following question:</p>
                                    <section class="question" name="question">
                                    <h3>{$competition.question}</h3>
                                    <button class="btn btn-primary" data-option="1">{$competition.option1}</button>
                                    <button class="btn btn-primary" data-option="2">{$competition.option2}</button>
                                    <button class="btn btn-primary" data-option="3">{$competition.option3}</button>
                                    </section>
                                    {else}
                                    <a class="please-log-in" href="register.php?next={$smarty.server.REQUEST_URI|urlencode}">To be in with a chance of winning this prize, please Sign Up or Sign In to Prize Pigs</a>
                                    {/if}
                                    <section class="already-entered">
                                        <button class="btn btn-primary">
                                            You have already entered this competition.
                                        </button>
                                    </section>
                                    <section class="thanks-message">
                                        <h3>Thank you for entering. Winner will be anounced {$competition.enddate|date_format:"%b %d, %Y"}</h3>
                                        <p>Be in with a chance of winning more prizes by sharing this competition.</p>
                                    </section>
                                {/if}
                            {/nocache}
                                <div class="in-comp-share bottom">
                                     {include file="snippets/sharelinks.tpl"}
                                </div>
                            </div>
                            
                        </div>
                    </div>
                    {if $competition.location}
                    <div class="tab-pane fade" id="google-map-tab">
                        <div class="row">
                            <div class="col-md-12">
                                <div id="map-canvas" style="width:100%; height:300px;" data-location="{$competition.location}"></div>
                            </div>
                            
                        </div>
                    </div>
                    {/if}

                    <div class="tab-pane fade" id="tab-3">
                        <h3>Terms</h3>
                        {$competition.rules}
                        <a class="btn btn-primary" href="pages.php?page=terms" target="_blank">Full Prize Pigs Terms<i class="fa fa-external-link"></i></a>
                    </div>
                </div>
            </div>
            
            <div class="gap gap-small"></div>

            <h3 class="mb20">Latest {$competition.category} competitions <small><a href="category.php?category={$competition.category}">see all</a></small>
            </h3>
            <div class="row row-wrap">

                {json file="http://www.prizepigs.ie/api/competitions_service.php?category={$competition.category}&limit=3" assign="latest"}

                {if $latest.competitions|@count > 0}
                    {foreach from=$latest.competitions item=competition name=competitions_list}
                        <a class="col-md-4" href="competition.php?id={$competition.id}">
                            <div class="product-thumb">
                                <header class="product-header">
                                    <img src="{$competition.image|ppimage:300}" alt="Image Alternative text" title="Aspen Lounge Chair" />
                                </header>
                                <div class="product-inner">
                                    <h5 class="product-title">{$competition.title}</h5>
                                    <p class="product-desciption">
                                        {$competition.title}
                                    <p class="product-location"><i class="fa fa-map-marker"></i> Dublin</p>
                                </div>
                            </div>
                        </a>
                    {/foreach}
                {/if}
  
            </div>
            <div class="gap gap-small"></div>

        </div>
    </div>

</div>


{/block}

<!-- template: competition.tpl -->


