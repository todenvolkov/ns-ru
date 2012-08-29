<?php  $this->widget('application.modules.portfolio.widgets.PortfolioWidget');?>
  <!-- SLIDES ENDS -->
  
  <?php $this->widget("application.modules.contentblock.widgets.ContentBlockWidget", array("code" => "benefits")); ?>
  <!-- BLOCKS ENDS -->
  <div class="why-do clearfix">
    <section class="block-one">
      <?php $this->widget("application.modules.contentblock.widgets.ContentBlockWidget", array("code" => "block_one")); ?>
    </section>
    <section class="block-two">
      <?php $this->widget("application.modules.contentblock.widgets.ContentBlockWidget", array("code" => "block_two")); ?>
    </section>
    
  </div>
  <section class="about-company clearfix">
    <h3>О компании</h3>
    <p class="features">Создание сайтов, разработка и продажа программного обеспечения</p>
    <div class="about-company-div">
      <?php $this->widget("application.modules.page.widgets.SinglePageWidget", array("id" => 1)); ?>
  </section>
  <!-- WHY-DO ENDS -->