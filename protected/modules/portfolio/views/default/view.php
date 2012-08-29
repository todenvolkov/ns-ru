<?php
$this->breadcrumbs=array(
	'Portfolios'=>array('index'),
	$model->title,
);

$this->menu=array(
	array('label'=>'List Portfolio', 'url'=>array('index')),
	array('label'=>'Create Portfolio', 'url'=>array('create')),
	array('label'=>'Update Portfolio', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete Portfolio', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Portfolio', 'url'=>array('admin')),
    array('label'=>'Добавить картинку', 'url' => array('addImage', 'portfolioId' => $model->id)),
);
?>

<h1>View Portfolio #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'title',
		'href',
		'fullDescription',
		'release_date',
		'businessType',
		'siteType',
		'currentState',
		'shortDescription',
	),
)); ?>

<h1><?php echo Yii::t('portfolio', 'Фотографии в этом портфолио');?></h1> <?php echo CHtml::link(Yii::t('gallery', 'Добавить изображение'), array('/portfolio/default/addImage/', 'portfolioId' => $model->id)); ?>

<?php $this->widget('zii.widgets.grid.CGridView', array(
                                                       'id' => 'image-grid',
                                                       'dataProvider' => new CActiveDataProvider('ImageToPortfolio', array(
                                                                                                                        'criteria' => array(
                                                                                                                            'condition' => 'portfolioId = :portfolioId',
                                                                                                                            'params' => array(':portfolioId' => (int)$model->id)
                                                                                                                        )
                                                                                                                   )),
                                                       'columns' => array(
                                                           'id',
                                                           array(
                                                               'name' => 'image_id',
                                                               'type' => 'raw',
                                                               'value' => 'CHtml::image($data->image->file,$data->image->alt,array("width" => 50,"height" => 50))'
                                                           ),
                                                           array(
                                                               'name' => Yii::t('gallery', 'Название'),
                                                               'value' => '$data->image->name'
                                                           ),
                                                           array(
                                                               'name' => Yii::t('gallery', 'Автор'),
                                                               'value' => '$data->image->user->getFullName()'
                                                           ),
                                                           array(
                                                               'name' => Yii::t('gallery', 'Описание'),
                                                               'value' => '$data->image->description'
                                                           ),
                                                           'creation_date',
                                                           array(
                                                               'class' => 'CButtonColumn',
                                                               'template' => '{delete}',
                                                               'deleteButtonUrl' => 'Yii::app()->request->baseUrl."/portfolio/default/deleteImage/id/{$data->id}"'
                                                           ),
                                                       ),
                                                  )); ?>