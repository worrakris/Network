<style>
    .promo_header {
        font-family: Lobster;
        font-size: 2.8rem;
        width: 100%;
        background-color: #2F77F0;
        color: white;
        text-align: center;
    }

    .promo_paragraph {
        font-family: Lobster;
        font-size: 2.0rem;
        width: 100%;
        text-align: center;        
    }

    .promo_img {
        height: 250px;
        line-height: 250px;
        background-color: gainsboro;
        text-align: center;
        border-radius: 10px;
    }
    .promo_row {
        width: 90%;
        display: table;
        margin: 0 auto;
    }
    .outer {
        width: 100%;
        text-align: center;
    }
</style>

<?php
?>

<div class="w__inner">
    <div align="left" class="txt__home-head"><?php echo Yii::t('myoffice', 'title_myoffice'); ?></div>
    <br/>
    <div class="promo_header"><?php echo Yii::t('myoffice', 'intro_pro'); ?></div>
    <br/>
    <div class="promo_paragraph"><?php echo Yii::t('myoffice', 'pg1_pro'); ?></div>
    <br/>
    <div class="outer">
        <div class="row promo_row">
            <div class="col-lg-5 col-md-5 col-sm-5 promo_img">PROMOTION IMAGE</div>
            <div class="col-lg-2 col-md-2 col-sm-2"></div>
            <div class="col-lg-5 col-md-5 col-sm-5 promo_img">PROMOTION IMAGE</div>
        </div>
        <br/>
        <div class="row promo_row">
            <div class="col-lg-5 col-md-5 col-sm-5 promo_img">PROMOTION IMAGE</div>
            <div class="col-lg-2 col-md-2 col-sm-2"></div>
            <div class="col-lg-5 col-md-5 col-sm-5 promo_img">PROMOTION IMAGE</div>
        </div>
        <br/>
        <div class="row promo_row">
            <div class="col-lg-5 col-md-5 col-sm-5 promo_img">PROMOTION IMAGE</div>
            <div class="col-lg-2 col-md-2 col-sm-2"></div>
            <div class="col-lg-5 col-md-5 col-sm-5 promo_img">PROMOTION IMAGE</div>
        </div>
        <br/>
        <div class="row promo_row">
            <div class="col-lg-5 col-md-5 col-sm-5 promo_img">LOGIN FORM</div>
            <div class="col-lg-2 col-md-2 col-sm-2"></div>
            <div class="col-lg-5 col-md-5 col-sm-5 promo_img">SIGN UP</div>
        </div>
        <br/>
    </div>
</div>