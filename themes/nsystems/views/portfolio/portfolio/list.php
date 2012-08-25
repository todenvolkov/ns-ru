<?php $this->renderPartial("_menu"); ?>
<div id="portfolio">
    <?php $this->renderPartial("_years"); ?>
    <section class="posts">
      <ul class="clearfix">
        <?php foreach($model as $portfolio): 
		$img = count($portfolio->images)>0?$portfolio->images[0]->file:"";
		?>
        <li><span class="portfolio_title"><?=$portfolio->title?></span>
        	<a href="<?=$portfolio->href?>" target="_blank"><span><?=$portfolio->href?></span></a>
            <a class="fancybox" rel="portfolio" href="<?=$img?>"><img src="/timthumb.php?src=<?=urlencode($img)?>&w=190&h=250&q=95&a=t"></a>
            <a href="/portfolio/<?=$portfolio->siteType?>/<?=$portfolio->id?>"><span class="read-post">Подробнее</span></a>
        </li>
        <?php endforeach; ?>
      </ul>
    </section>
    <?php $this->widget('DigitsListPager',array(
										"pages"=>$pages,
										"header"=>"Страницы: ",
										"cssFile"=>Yii::app()->theme->baseUrl."/css/style.css",
										"htmlOptions"=>array("class"=>"pages"),
	))?>
    <ul class="pages clearfix">
      <li>Страница: <a href="#" class="active">1</a></li>
      <li><a href="#">2</a></li>
      <li><a href="#">3</a></li>
      <li><a href="#">4</a></li>
      <li><a href="#">5</a></li>
      <li><a href="#">6</a></li>
      <li class="last-child"><a href="#">7</a></li>
    </ul>
 </div>
<div class="content">
    <ul class="portfolio">
        
    </ul>
</div>
