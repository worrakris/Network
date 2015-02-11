<style type="text/css">
    /* PROMOTIONS */

    .blog__home-promotions-arrow {
        padding: 10px 10px 5px 0px;
    }

    .blog__promotions-container {
        display: block;
        overflow: hidden;
        height: 400px;
        position: relative;
        margin-top: 20px;
    }

    .blog__promotion-blog {
        width: 342px;
        /*border: solid 1px;*/
    }

    .blog__promotion-blog-content {
        width: 300px;
        text-align: left;
        font-family: myArial;
        background-image: url(<?php echo Yii::app()->baseUrl; ?>/images/site/text-pic-promotion.png);
    }

    .blog__promotion-blog-content-title {
        font-family: myArial;
        font-size: 2rem;
        color: #000;
        padding: 0px 10px;
    }

    .blog__promotion-blog-content-detail {
        //max-height: 130px;
        height: 9rem;
        text-align: justify;
        font-family: myArial;
        font-size: 1.5rem;
        color: #898989;
        white-space: normal;
        overflow: hidden;
        text-overflow: ellipsis;
    }

    .blog__promotion-slider {
        position: absolute;
        top: 0;
        left: 0;
    }

    .blog__promotion-home-all {
        margin: 		30px 0px;
        text-align:		center;
    }
</style>
<?php
$cdate = date('Y-m-d H:i:s');
$pData = $model->findAll(array(
    'condition' => 'promotion_status="Active" AND promotion_start_date <= :promotion_start_date AND promotion_expire_date > :promotion_expire_date',
    'params' => array(':promotion_start_date' => $cdate, ':promotion_expire_date' => $cdate),
    'order' => 'promotion_start_date DESC',
    'limit' => $limit,
        ));
$cntPro = count($pData);
?>
<?php if ($cntPro > 0) { ?>
    <div class="w__inner">
        <table class="w__100">
            <tr>
                <td>
                    <div align="left" class="txt__home-head"><?php echo Yii::t('home', 'head_promotion'); ?></div>
                </td>
                <td align="right" class="blog__home-promotions-arrow">
                    <a href="#carousel-promotion" role="button" data-slide="prev">
                        <?php echo CHtml::image(Yii::app()->baseUrl . '/images/site/arrow-left.png', 'Back'); ?>
                    </a>
                    <a href="#carousel-promotion" role="button" data-slide="next">
                        <?php echo CHtml::image(Yii::app()->baseUrl . '/images/site/arrow-right.png', 'Next'); ?>
                    </a>
                </td>
            </tr>
        </table>
        <br/>
        <div id="carousel-promotion" class="carousel slide" data-ride="carousel" data-interval="false" data-wrap="false" style="width: 100%; margin: 0 auto">
            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <?php
                $num = 0;
                foreach ($pData as $value) {
                    ?>
                    <?php if (($num % 3) == 0) { ?>
                        <div class="item <?php if ($num == 0) echo "active"; ?>">
                            <div class="col-md-12 column">
                                <div class="row">
                                <?php } ?>                               
                                <div class="col-md-4">
                                    <div class="thumbnail">
                                        <img alt="300x200" src="<?php echo Yii::app()->baseUrl; ?>/images/promotions/thumb/<?php echo $value['promotion_picture']; ?>" />
                                        <div class="caption">
                                            <a href="<?php echo Yii::app()->baseUrl; ?>/promotions/detail/<?php echo $value->promotion_id; ?>" class = 'fancybox' data-fancybox-type = 'iframe' >
                                                <?php if (Yii::app()->language == 'en') { ?>
                                                    <h4><strong><?php echo $value['promotion_title_en']; ?></strong></h4>
                                                    <p class="blog__promotion-blog-content-detail"><?php echo $value['promotion_content_en']; ?></p>
                                                <?php } else { ?>
                                                    <h4><strong><?php echo $value['promotion_title_local']; ?></strong></h4>
                                                    <p class="blog__promotion-blog-content-detail"><?php echo $value['promotion_content_local']; ?></p>
                                                <?php } ?>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <?php if (($num % 3) == 2) { ?>
                                </div>
                            </div>
                        </div>
                        <?php
                    }
                    $num++;
                }
                ?>
            </div>
        </div>
    </div>

    <div class="blog__promotion-home-all">
        <?php
        echo CHtml::link(Yii::t('home', 'btn_all_promotion'), array('promotions/list', 'id' => 1), array(
            'class' => 'all'
        ));
        ?>
    </div>

<?php } ?>

<style type="text/javascript">

</style>