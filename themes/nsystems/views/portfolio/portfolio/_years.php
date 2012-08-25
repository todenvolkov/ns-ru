<?php
$data = Yii::app()->db->cache(600)->createCommand("SELECT DISTINCT YEAR(release_date) as year FROM portfolio ORDER BY release_date DESC LIMIT 5")->queryAll();
?>
<ul class="years clearfix">
<?php foreach($data as $item): ?>
      <li><?=$item['year']==date("Y")?"По годам: ":""?><a href="/portfolio/year/<?=$item['year']?>"><?=$item['year']?></a></li>
<?php endforeach; ?>
      <li><a href="/portfolio">Все...</a></li>
</ul>