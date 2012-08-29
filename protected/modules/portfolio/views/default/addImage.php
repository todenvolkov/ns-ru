<h1><?php echo Yii::t('portfolio', 'Добавление изображения в портфолио');?> <br/>
    "<?php echo $portfolio->title;?>"</h1>

<?php $this->renderPartial('_add_foto_form', array('model' => $model)); ?>

