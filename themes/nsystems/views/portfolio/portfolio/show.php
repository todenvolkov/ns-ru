<?php 
$crumbs = array();
//$crumbs

/*$this->widget('MyBreadCrumb', array(
  'crumbs' => array(
    array('name' => 'Главная', 'url' => '/'),
    array('name' => 'Портфолио', 'url' => '/portfolio'),
    array('name' => 'Проект «'.$model->title.'»'),
  ),
  //'delimiter' => ' &rarr; ', // if you want to change it
)); */
?>
<?php $this->renderPartial("_menu"); ?>
<div id="portfolio">
	<?php $this->renderPartial("_years"); 
	$img = $model->images[0]->file;
	?>
    <section class="posts">
        <span class="images">
            <span class="portfolio"><a href="<?=$img?>" class="fancybox" rel="<?=$model->id?>"><img src="/timthumb.php?src=<?=urlencode($img)?>&w=290&q=95"><span class="overlay"></span></a></span>
            <?php foreach($model->images as $image): if($image->file!=$img):?>
            <span class="portfolio"><a href="<?=$image->file?>" class="fancybox" rel="<?=$model->id?>"><img src="/timthumb.php?src=<?=urlencode($image->file)?>&amp;w=140&amp;q=95&amp;a=t"></a></span>
            <?php endif; endforeach;?>
        </span>
        <span class="info">
            <ul class="lst">
                <li style="margin:0px"><h3>Проект «<?=$model->title?>»</h3></li>
                <li class="lnk"><span class="label">Ссылка:</span> <a href="<?=$model->href?>" target="_blank"><span style="display:inline-block"><?=$model->href?></span></a></li>
                <li class="type"><span class="label">Тип:</span> <a href="/portfolio/<?=$model->siteType?>"><span style="display:inline-block"><?=SiteTypes::getType($model->siteType)?></span></a></li>
                <li class="separator"></li>
                <li><span class="want-it"><a href="#">Хочу такой же сайт</a></span><span style="display:inline-block; margin-left:5px;">- отправить заявку!</span></li>
                <li class="separator"></li>
                <li><span class="label">Дизайнер:</span> <?=$model->designer?> </li>
                <li><span class="label">Программирование:</span> <?=$model->programmer?></li>
                <li><span class="label">Контент:</span> <?=$model->manager?></li>
                <li>&nbsp;</li>
                <li><span class="label">Статус:</span> <?=SiteTypes::getStatus($model->currentState)?></li>
                <li><span class="label">Дата запуска:</span> <?=($model->currentState=="released")?$model->release_date:"---"?></li>
                <li><span class="label">Раздел:</span> <?=$model->bt->title?></li>
                <li class="separator"></li>
                <li><?=$model->fullDescription?></li>
                <li class="separator"></li>
                <li class="tags"><span class="label">Теги:</span> //TODO: Add tags table, static function for implode records by comma!</li>
                
            </ul>
        </span>
       </section>
</div>
