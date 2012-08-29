<?php

/**
 * This is the model class for SiteTypes.
 *
 */
class SiteTypes extends CActiveRecord
{
    const SITE_TYPE_CARD = "card";
    const SITE_TYPE_CORP = "corp";
    const SITE_TYPE_ISHOP = "ishop";
    const SITE_TYPE_SPEC = "special";
    const SITE_TYPE_PROMO = "promo";
    
    const SITE_STATUS_RELEASED = "released";
    const SITE_STATUS_WIP = "wip";
    const SITE_STATUS_SUSPENDED = "suspended";
    
    public function getType($key){
        $data = self::getTypesList();
        return array_key_exists($key,$data)?$data[$key]:Yii::t('sitetypes', '*неизвестно*');
    }
    
    public function getStatus($key){
        $data = self::getStatusList();
        return array_key_exists($key,$data)?$data[$key]:Yii::t('sitetypes', '*неизвестно*');
    }
	
    public function getTypesList()
    {
        return array(
            self::SITE_TYPE_CARD => Yii::t('sitetypes', 'Сайт визитка'),
            self::SITE_TYPE_CORP => Yii::t('sitetypes', 'Корпоративный сайт'),
            self::SITE_TYPE_ISHOP => Yii::t('sitetypes', 'Интернет-магазин'),
            self::SITE_TYPE_SPEC => Yii::t('sitetypes', 'Порталы и спец. проекты'),
            self::SITE_TYPE_PROMO => Yii::t('sitetypes', 'Промо сайт')
        );
    }
    
    public function getStatusList()
    {
        return array(
            self::SITE_STATUS_RELEASED => Yii::t('sitetypes', 'Закончен'),
            self::SITE_STATUS_WIP => Yii::t('sitetypes', 'В работе'),
            self::SITE_STATUS_SUSPENDED => Yii::t('sitetypes', 'Закночен, но не сдан'),
        );
    }
}