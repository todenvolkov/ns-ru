<?php
class BottomMenuWidget extends YWidget
{
    public $code;
    public $silent = false;

    public function init()
    {
//        if (!$this->code)
//            throw new CException(Yii::t('contentblock', 'Укажите название контент блока для ContentBlockWidget !'));
    }

    public function run()
    {
        $cacheName = "BottomMenuBlock{$this->id}";
        $output = Yii::app()->cache->get($cacheName);

        if ($output === false)
        {
            $menuItems = MenuItem::model()->FirstLevelOfBottomMenu()->findAll();

            foreach ($menuItems as &$item)
            {
                $item->getRelated('children',true);  // Второй уровень

//                if ($item->hasRelated('children'))
//                {
//                    $b=$item->children;
//                    foreach ($b as &$subitem)
//                    {
//                        $subitem->getRelated('children',true); // Третий уровень
//                    }
//                }

            }

            $output=$menuItems;
            Yii::app()->cache->set($cacheName, $output);
        }

        $this->render('bottommenuview', array(
            'output' => $output
        ));
    }
}