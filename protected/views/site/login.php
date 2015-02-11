<?php
$this->layout = 'blank';
?>

<div class="form-box" id="login-box">
    <div class="login_header"><?php echo Yii::t('home', 'header_sign_in'); ?></div>
    <br />
    <div class="form">
        <?php
        $form = $this->beginWidget('CActiveForm', array(
            'id' => 'login-form',
            'enableClientValidation' => true,
            'clientOptions' => array(
                'validateOnSubmit' => true,
            ),
        ));
        ?>

        <div class="login_body">
            <div class="form-group">
                <?php echo $form->labelEx($model, 'username'); ?>
                <?php echo $form->textField($model, 'username', array('class' => 'form-control')); ?>
                <?php echo $form->error($model, 'username', array('class' => 'errMessage')); ?>
            </div>
            <div class="form-group">
                <?php echo $form->labelEx($model, 'password'); ?>
                <?php echo $form->passwordField($model, 'password', array('class' => 'form-control')); ?>
                <?php echo $form->error($model, 'password', array('class' => 'errMessage')); ?>
            </div>          
            <div class="form-group">
                <div class="row rememberMeLogin">
                    <?php echo $form->checkBox($model, 'rememberMe'); ?>
                    <?php echo $form->label($model, 'rememberMe'); ?>
                    <?php echo $form->error($model, 'rememberMe'); ?>
                </div>
            </div>
        </div>
        <div class="footer">                                                               
            <div class="row buttons" style="text-align: center">
                <?php echo CHtml::submitButton(Yii::t('home', 'btn_login'), array('class' => 'btn_login')); ?>
            </div>
        </div>

        <?php $this->endWidget(); ?>
    </div>
</div>