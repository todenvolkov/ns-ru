<?php $column = "one"; ?>
<?php $i=1; ?>
<?php foreach ($output as $new): ?>
    <?php $i++; ?>
    <div class="column-<?=$column?>">
        <h4><a href="<?=$new->href?>"><span><?=$new->title?></span></a></h4>
        <ul>
            <?php foreach ($new['children'] as $newsub) { ?>
            <li><a href="<?=$newsub->href?>"><?=$newsub->title?></a></li>
            <?php }?>
        </ul>
    </div>
    <?php   if ($i==2) $column="two";
            if ($i==3) $column="three";
            if ($i==4) $column="four";
            if ($i==5) $column="five";
    ?>
<?php endforeach; ?>
