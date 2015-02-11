<?php ?>
<div class="form">
    <article class="subscribe__blog w__inner">
        <?php
        $form = $this->beginWidget('CActiveForm', array(
            'id' => 'subscribe-form',
            'enableAjaxValidation' => false,
            'htmlOptions' => array(
                'onsubmit' => "return false;", /* Disable normal form submit */
            ),
        ));
        ?>

        <div class="subscribe">
            <i id="animCir" class="fa fa-circle-o-notch fa-2x fa-spin" style="display: none;"></i>
            <p  id="subscribeDiv" class="subscribe__blog-text">
                <?php echo Yii::t('home', 'head_subscribe'); ?>
                <?php echo $form->textField($model, 'scb_name', array('placeholder' => Yii::t('home', 'placeh_name'))); ?>
                <?php echo $form->emailField($model, 'scb_email', array('placeholder' => Yii::t('home', 'placeh_email'))); ?>
                <?php echo CHtml::Button(Yii::t('home', 'btn_subscribe'), array('onclick' => 'send();', 'class' => 'btn btn-primary')); ?> 
                
            </p>
            
        </div>
        <?php $this->endWidget(); ?>
    </article>
</div>

<script type="text/javascript">

    function send()
    {

        var data = $("#subscribe-form").serialize();
        $('#animCir').show();
        $.ajax({
            type: 'POST',
            url: '<?php echo Yii::app()->createAbsoluteUrl("site/subscription"); ?>',
            data: data,
            success: function (data) {
                if (data === 'fin') {
                    $("#subscribeDiv").html("<?php echo Yii::t('home', 'lbl_thank_subscribe'); ?>");
                } else if (data === 'dup') {
                    alert("<?php echo Yii::t('home', 'lbl_warn_subscribe'); ?>");
                } else {

                }
                $('#animCir').hide();
            },
            error: function (data) { // if error occured
                alert("<?php echo Yii::t('home', 'lbl_wrong_email'); ?>");
                $('#animCir').hide();
            },
            dataType: 'html'
        });
    }

</script>