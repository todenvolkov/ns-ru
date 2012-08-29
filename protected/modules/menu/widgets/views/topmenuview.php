    <ul>
        <?php foreach ($output as $new): ?>
            <li><a href="<?=$new->href?>"><span><?=$new->title?></span></a>
            <?php if (!empty($new['children'])){ $column="one"; ?>
                <div class="drop-down clearfix">
                    <div class="top-shadow">&nbsp;</div>


                    <?php foreach ($new['children'] as $newsub)  { ?>

                       <?php if(!empty($newsub['children']))
                {  unset($oneColumnedDropDown);
                    ?>
                        <section class="column-<?=$column?>">
                        <h2><?=$newsub->title?></h2>
                            <ul>
                                <?php foreach ($newsub['children'] as $newsubsub) { // TODO: Количество работ в портфолио 
							    $type = explode("/",$newsubsub->href);
								?>  
                                    <li><a href="<?=$newsubsub->href?>"><?=$newsubsub->title?><?=($column=="one")?"<span>(".Portfolio::getTypeCount($type[2]).")</span><strong>".$newsubsub->description."</strong>":""?></a> </li>
                                <?php } ?>
                            </ul>
                        </section>
                    <?php } else { ?>
                        <?php if ($column=="one") { $oneColumnedDropDown=1; ?><ul><?php }?>
                           <li><a href="<?=$newsub->href?>"><?=$newsub->title?></a></li>


                       <?php }?>

                    <?php $column="two"; }?>
                  <?php if (isset($oneColumnedDropDown)) { ?> </ul> <?php } ?>

                </div>
            <?php } ?>
            </li>
        <?php endforeach;?>
     </ul>