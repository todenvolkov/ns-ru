<?php

class PortfolioModule extends YWebModule
{
    public function getCategory()
        {
            return Yii::t('portfolio', 'Контент');
        }


        public function getName()
        {
            return Yii::t('portfolio', 'Портфолио');
        }

        public function getDescription()
        {
            return Yii::t('portfolio', 'Портфолио');
        }

        public function getVersion()
        {
            return Yii::t('portfolio', '0.1 (dev)');
        }

        public function getAuthor()
        {
            return Yii::t('portfolio', 'N team');
        }

        public function getAuthorEmail()
        {
            return Yii::t('portfolio', 'info@neo-systems.ru');
        }

        public function getUrl()
        {
            return Yii::t('portfolio', 'http://neo-systems.ru');
        }
        public function getIcon()
        {
            return "list";
        }

        public function init()
        {
            parent::init();
            $this->setImport(array(
                'portfolio.models.*',
                'portfolio.components.*',
            ));
        }


	public function beforeControllerAction($controller, $action)
	{
		if(parent::beforeControllerAction($controller, $action))
		{
			// this method is called before any module controller action is performed
			// you may place customized code here
			return true;
		}
		else
			return false;
	}
}
