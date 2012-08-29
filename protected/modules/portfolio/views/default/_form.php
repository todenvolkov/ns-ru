<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'portfolio-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'title'); ?>
		<?php echo $form->textField($model,'title',array('size'=>60,'maxlength'=>500)); ?>
		<?php echo $form->error($model,'title'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'href'); ?>
		<?php echo $form->textField($model,'href',array('size'=>60,'maxlength'=>500)); ?>
		<?php echo $form->error($model,'href'); ?>
	</div>
    
    <div class="row">
		<?php echo $form->labelEx($model,'designer'); ?>
		<?php echo $form->textField($model,'designer',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'designer'); ?>
	</div>
    
    <div class="row">
		<?php echo $form->labelEx($model,'programmer'); ?>
		<?php echo $form->textField($model,'programmer',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'programmer'); ?>
	</div>
    
    <div class="row">
		<?php echo $form->labelEx($model,'manager'); ?>
		<?php echo $form->textField($model,'manager',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'manager'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'fullDescription'); ?>
		<?php echo $form->textArea($model,'fullDescription',array('rows'=>6, 'cols'=>50)); ?>
		<?php echo $form->error($model,'fullDescription'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'release_date'); ?>
		<?php $this->widget('zii.widgets.jui.CJuiDatePicker', array(
                                                                   'model' => $model,
                                                                   'attribute' => 'release_date',
                                                                   'options' => array(
                                                                       'dateFormat' => 'yy-mm-dd',
                                                                   ),
                                                              ));?>
		<?php echo $form->error($model,'release_date'); ?>
	</div>



    <div class="row">
            <?php echo $form->labelEx($model, 'businessType'); ?>
            <?php echo $form->dropDownList($model, 'businessType', CHtml::listData(BusinessTypes::model()->findAll(), 'id', 'title')); ?>
            <?php echo $form->error($model, 'businessType'); ?>
        </div>


	<div class="row">
		<?php echo $form->labelEx($model,'siteType'); ?>
        <?php echo $form->dropDownList($model,'siteType',SiteTypes::getTypesList()); ?>

		<?php echo $form->error($model,'siteType'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'currentState'); ?>
        <?php echo $form->dropDownList($model,'currentState',SiteTypes::getStatusList()); ?>
				<?php echo $form->error($model,'currentState'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'shortDescription'); ?>
		<?php echo $form->textArea($model,'shortDescription',array('rows'=>6, 'cols'=>50)); ?>
		<?php echo $form->error($model,'shortDescription'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->