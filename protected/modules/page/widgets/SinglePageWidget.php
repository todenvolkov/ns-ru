<?php
class SinglePageWidget extends YWidget
{   
    public $id = 1;      
    public function init()
    {
        parent::init();

    }

    public function run()
    {
        // content cached for 5 min
        $page = Yii::app()->db->cache(600)->createCommand("SELECT * FROM page WHERE id=".$this->id)->queryRow();
        echo $page["body"];
    }
}