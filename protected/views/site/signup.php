<?php
$this->layout = 'blank';
?>

<div class="form-box" id="login-box">
    <div class="login_header"><?php echo Yii::t('home', 'btn_sign_up'); ?></div>
    <br />
    <div class="form">
        <?php
        $form = $this->beginWidget('CActiveForm', array(
            'id' => 'sign-form',
            'enableClientValidation' => true,
            'clientOptions' => array(
                'validateOnSubmit' => true,
            ),
        ));
        ?>

        <div class="login_body">
            <div class="form-group">
                <?php echo $form->labelEx($model, 'fullname'); ?>
                <?php echo $form->textField($model, 'fullname', array('class' => 'form-control form_font')); ?>
                <?php echo $form->error($model, 'fullname', array('class' => 'errMessage')); ?>
            </div>
            <div class="form-group">
                <?php echo $form->labelEx($model, 'username'); ?>
                <?php echo $form->textField($model, 'username', array('class' => 'form-control form_font')); ?>
                <?php echo $form->error($model, 'username', array('class' => 'errMessage')); ?>
            </div>  
            <div class="form-group">
                <?php echo $form->labelEx($model, 'email'); ?>
                <?php echo $form->emailField($model, 'email', array('class' => 'form-control form_font')); ?>
                <?php echo $form->error($model, 'email', array('class' => 'errMessage')); ?>
            </div>          
            <div class="form-group">
                <?php echo $form->labelEx($model, 'mobile'); ?>
                <?php echo $form->telField($model, 'mobile', array('class' => 'form-control form_font')); ?>
                <?php echo $form->error($model, 'mobile', array('class' => 'errMessage')); ?>
            </div>    
        </div>
        <div class="footer">                   
            <?php echo CHtml::hiddenField('country'); ?>
            <?php echo CHtml::hiddenField("phoneNumber"); ?>
            <div class="row buttons" style="text-align: center">
                <?php echo CHtml::submitButton(Yii::t('home', 'btn_sign_up'), array('class' => 'btn_login')); ?>
            </div>
        </div>

        <?php $this->endWidget(); ?>
    </div>
</div>