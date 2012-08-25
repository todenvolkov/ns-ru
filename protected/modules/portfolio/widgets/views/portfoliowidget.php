<div id="slides">
      <div class="slides_container">
        <?php foreach($portfolio as $item):?>
        <div><?=$item->content?>
        </div>
        <?php endforeach;?>
      </div>
      <div class="previous-tooltip">
        <p>Предыдущий</p>
      </div>
      <div class="next-tooltip">
        <p>Следующий</p>
      </div>
      <div><a href="#" class="prev">prev</a> <a href="#" class="next">Next</a> </div>
      <a href="/portfolio" class="back-to-portfolio">Перейти в портфолио</a>
</div>