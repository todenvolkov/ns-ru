<aside>
    <section class="portfolio">
    <h3>Портфолио</h3>
      <div>
            <ul>
              <li><a href="/portfolio/status/released">Готовые сайты</a></li>
              <li><a href="/portfolio/status/wip">Сайты в разработке</a>
                <ul>
                  <li><a href="#">Лучшие</a></li>
                  <li><a href="#">Непревзойденные</a></li>
                  <li><a href="#">Феерические</a></li>
                </ul>
              </li>
              <li><a href="/portfolio/status/suspended">Неопубликованные</a></li>
            </ul>
      </div>
    </section>
    <section class="directions">
          <h3>Смотреть по направлениям</h3>
          <div>
            <ul>
    <?php
        $bt = BusinessTypes::model()->findAll(array("order"=>"sortorder"));
        foreach($bt as $item):
    ?>
    <li><a href="/portfolio/sector/<?=$item->id?>"><?=$item->title?></a></li>
    <?php endforeach;?>
            </ul>
            <a href="/portfolio" class="read-more">Показать все</a>
            <p>Всего компаний <span><?=Portfolio::getCount()?></span><br/>
              <span class="join-us">присоединяйтесь, с нами хорошо!</span></p>
          </div>
    </section>
</aside>