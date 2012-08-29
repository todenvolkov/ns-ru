<!doctype html>
<!--[if lt IE 7 ]> <html class="ie ie6" lang="ru"> <![endif]-->
<!--[if IE 7 ]> <html class="ie ie7" lang="ru"> <![endif]-->
<!--[if IE 8 ]> <html class="ie ie8" lang="ru"> <![endif]-->
<!--[if IE 9 ]> <html class="ie ie9" lang="ru"> <![endif]-->
<!--[if gt IE 9]><!--><html lang="ru"><!--<![endif]-->
<head>
<title><?php echo CHtml::encode(Yii::app()->name);?> <?php echo CHtml::encode($this->pageTitle); ?></title>
<meta charset="utf-8" />
<meta name="language" content="<?=Yii::app()->language?>" />
<meta name="keywords" content="<?=$this->keywords?>" />
<meta name="description" content="<?=$this->description?>" />
<!-- CSS: screen, mobile & print are all in the same file -->

<meta name="viewport" content="width=device-width, initial-scale=1.0"> <!-- эта хрень делает размер колонки 60px. Должна по крайней мере-->

<link rel="stylesheet" href="<?=Yii::app()->theme->baseUrl?>/css/style.css" media="all" />
<link rel="stylesheet" href="/lib/fancybox/jquery.fancybox.css" media="all" />
</head>
<body dir="ltr">
<div class="wrapper">
  <header>
    <div class="logo"> <a href="/"><img src="<?=Yii::app()->theme->baseUrl?>/images/logo.png" width="72" height="46" alt="" /></a>
      <h1>systems</h1>
      <span class="tag-line">изобретая будущее</span> </div>
     <div class="sacred-button"><span>Священная кнопка</span><a href="#" class="button">Почему мы?</a></div>
    <div class="contact-info"> Ждем вашего звонка&#58; <strong>&#40;3452&#41; 500&ndash;348</strong> </div>
    <nav>
        <?php  $this->widget('application.modules.menu.widgets.TopMenuWidget');?>

    </nav>
  </header>
  <!-- HEADER ENDS AND CONTENT GOES NEXT -->
  <?=$content?>
  <!-- ABOUT COMPANY ENDS --> 
  <footer>
     <div class="columns clearfix">
         <nav>
            <?php $this->widget('application.modules.menu.widgets.BottomMenuWidget');?>
         </nav>
     </div>
     <div class="contact-address clearfix">
     <div class="powered-by">    
         <p><a href="http://mediatemple.net/#a_aid=4fff97e8cc179" target="_blank" title="Хостинг Mediatemple">Мы выбираем</a></p>
     </div>
     <div class="contact">
     <address>
         <a href="#">ул. Герцена 64</a>(Сити-Центр)
     <span>    Ждем вашего звонка: </span><strong>(3452) 500-348</strong>
        </address>      
    </div> 
     <p class="features">Создание сайтов Тюмень, разработка сайтов Тюмень, раскрутка сайта тюмень, создание интернет-магазинов, изготовление сайтов Тюмень.</p>    
         
     </div>
    </footer><!-- FOOTER ENDS -->
</div>
<!-- .WRAPPER ENDS --> 

<!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->

<!-- here comes the javascript --> 
<!-- Grab Google CDN's jQuery. fall back to local if necessary --> 
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="<?=Yii::app()->theme->baseUrl?>/js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="<?=Yii::app()->theme->baseUrl?>/js/slides.min.jquery.js"></script>
<script src="<?=Yii::app()->theme->baseUrl?>/js/common.js" type="text/javascript"></script>
<script type="text/javascript" src="/lib/fancybox/jquery.fancybox.pack.js"></script>
<script type="text/javascript" src="<?=Yii::app()->theme->baseUrl?>/js/bootstrap.min.js"></script>
<script type="text/javascript">
    $('#myModal').modal('hide');
</script>
<!-- this is where we put our custom functions --> 
<!-- Asynchronous google analytics; this is the official snippet.
     Replace UA-XXXXXX-XX with your site's ID and uncomment to enable.
<script>
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-XXXXXX-XX']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>-->

</body>
</html>