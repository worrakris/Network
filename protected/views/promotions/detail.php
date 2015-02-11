<?php
// Variable
// $news 		[Object] data of news
// $_GET['id'] 	[Int] news id
$this->layout = "blank";

if (Yii::app()->language === 'en') {
    $title = $data->promotion_title_en;
    $content = $data->promotion_content_en;
} else {
    $title = $data->promotion_title_local;
    $content = $data->promotion_content_local;
}

$create = new DateTime($data->promotion_start_date);
$expire = new DateTime($data->promotion_expire_date);
$picture = $data->promotion_picture;
?>
<style type="text/css">

    .detail__title {
        padding: 5px;
        font-family: abeatbyKai;
        font-size: 2.1rem;
        font-weight: bold;
        color: #000;
    }

    .detail__date {
        padding: 5px;
        font-family: myArial;
        font-size: 1.2rem;
        color: #888;
/*        background-color: #f0f0f0;
        border: 1px solid #e8e8e8;
        -webkit-border-radius: 5px;
        -moz-border-radius: 5px;
        border-radius: 5px;*/
    }

    .detail__picture-image {
        max-width: 100%;
        -webkit-border-radius: 10px;
        -moz-border-radius: 10px;
        border-radius: 10px;
    }

    .detail__content {
        padding: 10px;
        text-indent: 60px;
        font-family: abeatbyKai;
        font-size: 1.6rem;
        color: #000;
        text-align: justify;
    }

    .detail__header {
        background-color: #e8e8e8;
    }

</style>

<div class="popup__inner">
    <section id="promotion__list">
        <div class="row clearfix detail__header">
            <div class="col-lg-4 col-md-4 col-sm-4 txt__home-head">
                <?php echo Yii::t('promotion', 'header_promotion'); ?>
            </div>
            <div class="col-lg-8 col-md-8 col-sm-8 social__bar">
                <?php
                $this->widget('application.extensions.SocialShareButton.SocialShareButton', array(
                    'style' => 'horizontal',
                    'networks' => array('facebook', 'googleplus', 'twitter'),
                    'data_via' => 'mNetworkBusiness', //twitter username (for twitter only, if exists else leave empty)
                ));
                ?>
            </div>
        </div>
        <br/>
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12 detail__title">
                <?php echo $title ?>
            </div>
        </div>
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12 detail__date">
                <?php echo Yii::t('promotion', 'pro_period') . " : " . date('m/d/Y', $create->getTimestamp()) . " - " . date('m/d/Y', $expire->getTimestamp());  ?>
            </div>
        </div>
        <br/>
        <div>
            <?php echo CHtml::image(Yii::app()->request->baseUrl . '/images/promotions/full/' . $picture, $title, array('class' => 'detail__picture-image')); ?>
        </div>
        <br/>
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12 detail__content">
                <?php echo $content ?>
            </div>
        </div>
    </section>
</div>
