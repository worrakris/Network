<?php
$this->layout = 'blank';
?>

<div class="form-box" id="signup-box">
    <div class="login_header"><?php echo Yii::t('home', 'btn_sign_up'); ?></div>
    <div class="login_phase"><?php echo Yii::t('home', 'phase_sign_up'); ?></div>
    <br />
    <div class="form-inline">
        <?php
        $form = $this->beginWidget('CActiveForm', array(
            'id' => 'sign-form',
            'enableAjaxValidation' => true,
            'stateful' => true,
            'enableClientValidation' => true,
            'clientOptions' => array(
                'validateOnSubmit' => true,
            ),
        ));
        ?>

        <div class="login_body">
            <div class="row">
                <span style="float:left; width: 50%; padding: 0px 3px;">
                    <div class="form-group">
                        <?php //echo $form->labelEx($model, 'signup_firstname', array('class' => 'form_font')); ?>
                        <?php echo $form->textField($model, 'signup_firstname', array('placeholder' => $model->getAttributeLabel('signup_firstname'), 'class' => 'form-control form_font')); ?>
                        <?php echo $form->error($model, 'signup_firstname', array('class' => 'errMessage')); ?>
                    </div>
                </span>
                <span style="float:right; width:50%;  padding: 0px 3px;">
                    <div class="form-group">    
                        <?php //echo $form->labelEx($model, 'signup_lastname', array('class' => 'form_font')); ?>
                        <?php echo $form->textField($model, 'signup_lastname', array('placeholder' => $model->getAttributeLabel('signup_lastname'), 'class' => 'form-control form_font')); ?>
                        <?php echo $form->error($model, 'signup_lastname', array('class' => 'errMessage')); ?>
                    </div>
                </span>
            </div>    
            <div class="row">
                <span style="float:right; width:100%;  padding: 0px 3px;">
                <div class="form-group">
                    <?php //echo $form->labelEx($model, 'signup_email', array('class' => 'form_font')); ?>
                    <?php echo $form->emailField($model, 'signup_email', array('placeholder' => $model->getAttributeLabel('signup_email'), 'class' => 'form-control form_font')); ?>
                    <?php echo $form->error($model, 'signup_email', array('class' => 'errMessage')); ?>
                </div>          
                </span>
            </div>
            <div class="form-group">
                <?php //echo $form->labelEx($model, 'signup_mobile', array('class' => 'form_font')); ?>
                <?php echo $form->telField($model, 'signup_mobile', array('placeholder' => $model->getAttributeLabel('signup_mobile'), 'class' => 'form-control form_font')); ?>
                <?php echo $form->error($model, 'signup_mobile', array('class' => 'errMessage')); ?>
            </div>    
            <div class="form-group">
                <?php echo $form->labelEx($model, 'signup_birthday', array('class' => 'form_font')); ?>
                <?php echo $form->dateField($model, 'signup_birthday', array('placeholder' => $model->getAttributeLabel('signup_birthday'), 'class' => 'form-control form_font')); ?>sfasd;fjasdfj
                <?php echo $form->error($model, 'signup_birthday', array('class' => 'errMessage')); ?>
            </div>
            User Account
            <div class="form-group">
                <?php //echo $form->labelEx($model, 'signup_birthday', array('class' => 'form_font')); ?>
                <?php echo $form->dateField($model, 'signup_birthday', array('placeholder' => $model->getAttributeLabel('signup_birthday'), 'class' => 'form-control form_font')); ?>sfasd;fjasdfj
                <?php echo $form->error($model, 'signup_birthday', array('class' => 'errMessage')); ?>
            </div>
            <div class="form-group">
                <?php //echo $form->labelEx($model, 'signup_birthday', array('class' => 'form_font')); ?>
                <?php echo $form->dateField($model, 'signup_birthday', array('placeholder' => $model->getAttributeLabel('signup_birthday'), 'class' => 'form-control form_font')); ?>sfasd;fjasdfj
                <?php echo $form->error($model, 'signup_birthday', array('class' => 'errMessage')); ?>
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