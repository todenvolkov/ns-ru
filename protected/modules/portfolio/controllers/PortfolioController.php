<?php

class PortfolioController extends YFrontController
{
	const ITEMS_PER_PAGE=12;
	
	public function actionIndex()
	{
        //$model =  Portfolio::model()->findAll(array('order'=>'release_date'));
		$criteria = new CDbCriteria();
		$criteria->order = "release_date DESC";
		$count=Portfolio::model()->count($criteria);
		$pages=new CPagination($count);
		// элементов на страницу
		$pages->pageSize = self::ITEMS_PER_PAGE;
		$pages->applyLimit($criteria);
		
		$model =  Portfolio::model()->cache(600)->findAll($criteria);
		
		$this->render('list', array("model"=>$model, "pages"=>$pages));
	}
    public function actionList($part)
    {
        //$model =  Portfolio::model()->findAll(array('order'=>'release_date','condition'=>array_key_exists($part,SiteTypes::getTypesList())?"siteType='".$part."'":""));
		$criteria = new CDbCriteria();
		$criteria->condition = array_key_exists($part,SiteTypes::getTypesList())?"siteType='".$part."'":"";
		$criteria->order = "release_date DESC";
		$count=Portfolio::model()->count($criteria);
		$pages=new CPagination($count);
		// элементов на страницу
		$pages->pageSize = self::ITEMS_PER_PAGE;
		$pages->applyLimit($criteria);
		
		$model =  Portfolio::model()->cache(600)->findAll($criteria);
        $this->render('list',array("model"=>$model,"part"=>$part, 'pages'=>$pages));
    }
    public function actionListYear($year='2012')
    {
        //$model =  Portfolio::model()->findAll(array('order'=>'release_date','condition'=>'YEAR(release_date)='.(int)$year));
		
		$criteria = new CDbCriteria();
		$criteria->condition = 'YEAR(release_date)='.(int)$year;
		$criteria->order = "release_date DESC";
		$count=Portfolio::model()->count($criteria);
		$pages=new CPagination($count);
		$pages->pageSize = self::ITEMS_PER_PAGE;
		$pages->applyLimit($criteria);
		
		$model =  Portfolio::model()->cache(600)->findAll($criteria);
        $this->render('list', array("model"=>$model, 'pages'=>$pages));
    }
    public function actionListStatus($status=SiteTypes::SITE_STATUS_RELEASED)
    {
        //$model =  Portfolio::model()->findAll(array('order'=>'release_date','condition'=>"currentState='".(array_key_exists($status,SiteTypes::getStatusList())?$status:SiteTypes::SITE_STATUS_RELEASED)."'"));
        $criteria = new CDbCriteria();
		$criteria->condition = "currentState='".(array_key_exists($status,SiteTypes::getStatusList())?$status:SiteTypes::SITE_STATUS_RELEASED)."'";
		$criteria->order = "release_date DESC";
		$count=Portfolio::model()->count($criteria);
		$pages=new CPagination($count);
		$pages->pageSize = self::ITEMS_PER_PAGE;
		$pages->applyLimit($criteria);
		
		$model =  Portfolio::model()->cache(600)->findAll($criteria);
        $this->render('list', array("model"=>$model, 'pages'=>$pages));
    }
    public function actionListSector($sector=1)
    {
       // $model =  Portfolio::model()->findAll(array('order'=>'release_date','condition'=>"businessType=".(int)$sector));
		$criteria = new CDbCriteria();
		$criteria->condition = "businessType=".(int)$sector;
		$criteria->order = "release_date DESC";
		$count=Portfolio::model()->count($criteria);
		$pages=new CPagination($count);
		$pages->pageSize = self::ITEMS_PER_PAGE;
		$pages->applyLimit($criteria);
		
		$model =  Portfolio::model()->cache(600)->findAll($criteria);
        $this->render('list', array("model"=>$model, 'pages'=>$pages));
    }
    public function actionShow($id)
    {
        $model = Portfolio::model()->findByPk((int)$id);
        $this->render('show',array("model"=>$model));
    }
}


