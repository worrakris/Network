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
            'stateful' => false,
            'enableClientValidation' => true,
            'clientOptions' => array(
                'validateOnSubmit' => true,
            ),
            'htmlOptions' => array(
                'target' => '_top',
            ),
        ));
        ?>
        <div class="login_body">
            <div class="row"> <!-- First name &  Last name Section -->
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
            </div> <!-- END -->   
            <div class="row">  <!-- E-Mail -->
                <span style="float:left; width:100%;  padding: 0px 3px;">
                    <div class="form-group">
                        <?php //echo $form->labelEx($model, 'signup_email', array('class' => 'form_font')); ?>
                        <?php echo $form->textField($model, 'signup_email', array('placeholder' => $model->getAttributeLabel('signup_email'), 'class' => 'form-control form_font')); ?>
                        <?php echo $form->error($model, 'signup_email', array('inputID'=>'signup_email', 'class' => 'errMessage')); ?>
                    </div>          
                </span>
            </div> <!-- END -->   
            <div class="row">  <!-- Mobile Number -->
                <span style="float:left; width:100%;  padding: 0px 3px;">
                    <div class="form-group">
                        <?php //echo $form->labelEx($model, 'signup_email', array('class' => 'form_font')); ?>
                        <?php echo $form->textField($model, 'signup_mobile', array('placeholder' => $model->getAttributeLabel('signup_mobile'), 'class' => 'form-control form_font')); ?>
                        <?php echo $form->error($model, 'signup_mobile', array('class' => 'errMessage')); ?>
                    </div>          
                </span>
            </div> <!-- END -->   
            <div class="row"> <!-- Birthday -->
                <span style="float:left; width: 100%; padding: 0px 3px;">
                    <div class="form-group">
                        <?php echo $form->labelEx($model, 'signup_birthday', array('class' => 'form_font')); ?>
                        &nbsp;&nbsp;<a href="#" class="btn form_popup" data-trigger="focus" data-toggle="popover" data-placement="top" data-content="<?php echo Yii::t('home', 'helpmsg_signup_birthday'); ?>"><?php echo Yii::t('home', 'help_signup_birthday'); ?></a>
                        <?php echo $form->dateField($model, 'signup_birthday', array('class' => 'form-control form_font', 'value' => '0000-00-00')); ?>
                        <?php echo $form->error($model, 'signup_birthday', array('class' => 'errMessage')); ?>
                    </div>
                </span>
            </div> <!-- END -->   
            <div class="row"> <!-- User Account -->
                <span style="float:left; width: 100%; padding: 0px 3px;">
                    <div class="form-group">
                        <div class="form_font" style="font-weight: bold;"><?php echo Yii::t('home', 'lbl_useraccount'); ?></div>
                        <?php echo $form->textField($model, 'signup_username', array('placeholder' => $model->getAttributeLabel('signup_username'), 'class' => 'form-control form_font')); ?>
                        <?php echo $form->error($model, 'signup_username', array('class' => 'errMessage')); ?>
                    </div>
                </span>
            </div> <!-- END -->
            <div class="row"> <!-- Password -->
                <span style="float:left; width: 50%; padding: 0px 3px;">
                    <div class="form-group">
                        <?php echo $form->passwordField($model, 'signup_password', array('placeholder' => $model->getAttributeLabel('signup_password'), 'class' => 'form-control form_font')); ?>
                        <?php echo $form->error($model, 'signup_password', array('class' => 'errMessage')); ?>
                    </div>
                </span>
                <span style="float:right; width: 50%; padding: 0px 3px;">
                    <div class="form-group">
                        <?php echo $form->passwordField($model, 'signup_repassword', array('placeholder' => $model->getAttributeLabel('signup_repassword'), 'class' => 'form-control form_font')); ?>
                        <?php echo $form->error($model, 'signup_repassword', array('class' => 'errMessage')); ?>
                    </div>
                </span>
            </div> <!-- END -->
        </div>

        <div class="row"> <!-- Data Privacy -->
            <span style="float:left; width: 100%; padding: 0px 3px;">
                <div class="form_privacy">
                    <?php echo Yii::t('home', 'right_privacy'); ?>
                </div>
            </span>
        </div> <!-- END -->   
        <br/>

        <div class="footer">                   
            <?php echo CHtml::hiddenField('country'); ?>
            <?php echo CHtml::hiddenField("phoneNumber"); ?>
            <div class="row buttons" style="text-align: center">
                <?php echo CHtml::submitButton(Yii::t('home', 'btn_sign_up'), array('class' => 'btn_login', 'name' => 'btnSubmit')); ?>
            </div>
        </div>
        <?php $this->endWidget(); ?>
    </div>
</div>