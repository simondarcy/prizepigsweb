<div class="col-md-9">
<div class="gap-small"></div>
            <div class="row">
                <!--div class="col-md-3">
                    <div class="product-sort">
                        <span class="product-sort-selected">sort by <b>Price</b></span>
                        <a href="#" class="product-sort-order fa fa-angle-down"></a>
                        <ul>
                            <li><a href="#">sort by Name</a>
                            </li>
                            <li><a href="#">sort by Ended Soon</a>
                            </li>
                            <li><a href="#">sort by Popularity</a>
                            </li>
                            <li><a href="#">sort by Location</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-2 col-md-offset-7">
                    <div class="product-view pull-right">
                        <a class="fa fa-th-large active" href="#"></a>
                        <a class="fa fa-list" href="category-page-thumbnails-coupon-horizontal.html"></a>
                    </div>
                </div-->
            </div>


 <div class="row row-wrap">

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
</div>

  <!--pagination etc

  <ul class="pagination">
      <li class="prev disabled">
          <a href="#"></a>
      </li>
      <li class="active"><a href="#">1</a>
      </li>
      <li><a href="#">2</a>
      </li>
      <li><a href="#">3</a>
      </li>
      <li><a href="#">4</a>
      </li>
      <li><a href="#">5</a>
      </li>
      <li class="next">
          <a href="#"></a>
      </li>
  </ul>
  -->
  <div class="gap"></div>


  <!-- end pago -->


</div> 
