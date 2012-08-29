<?php
/**
 * Created by JetBrains PhpStorm.
 * User: denisvolkov
 * Date: 18.05.12
 * Time: 1:27
 * To change this template use File | Settings | File Templates.
 */
class PortfolioWidget extends YWidget{
    
    public $view;
    
    public function init()
                {
                    parent::init();


                }

                public function run()
                {
                        $view = $this->view ? $this->view : 'portfoliowidget';
						//$dependency = new CDbCacheDependency("SELECT MAX(release_date) FROM portfolio");
                        $portfolio=ContentBlock::model()->cache(600)->findAll(array('order'=>'id DESC','limit'=>5,'condition'=>"code LIKE '%slider%'"));
                        $this->render($view, array(
                                                 'portfolio' => $portfolio,
                                             ));

                }
}
?>

