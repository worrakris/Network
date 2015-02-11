<style type="text/css">
    /* NEWS */

    .blog__news-home-date {
        background-image: url(<?php echo Yii::app()->baseUrl; ?>/images/site/date.png);
        background-repeat: no-repeat;
        background-position: center 10px;
        width: 100px;
    }

    .blog__news-home-date-text {
        text-align: center;
        margin-top: 30px;
        color: white;
    }

    .blog__news-home-date-text-day {
        padding: 0;
        font-family: abeatbyKai;
        font-size: 2.5rem;
        color: #FFF;
        margin: 0;
    }

    .blog__news-home-date-text-month {
        font-family: abeatbyKai;
        font-size: 1.6rem;
        color: #FFF;
        padding: 0;
        margin: 0;
    }

    .blog__news-home-content {
        text-align: justify;
        font-family: myArial;
        font-size: 1.5rem;
        color: #898989;
    }

    .blog__news-home-content-more {
        margin-top: 10px;
        text-align: left;
    }

    .blog__news-home-all {
        margin: 15px 0px;
        text-align: center;
    }

    a.more:link {text-decoration: underline; font-family: myArial; font-size: 17px; color: #3156a3; line-height: 30px;}
    a.more:visited {}
    a.more:hover {color: black;}
    a.more:active {}
</style>

<?php
$expire_date = date('Y-m-d H:i:s');
$nData = $model->findAll(array(
    'condition' => 'news_status="Active" AND news_expire_date > :expDate',
    'params' => array(':expDate' => $expire_date),
    'order' => 'news_create_date DESC',
    'limit' => $limit,
        ));
?>

<div class="w__inner">

    <div align="left" class="txt__home-head"><?php echo Yii::t('home', 'head_news'); ?></div>

    <?php
    $cntCol = 0;

    foreach ($nData as $key => $value) {

        if ($cntCol == 2) {
            $cntCol = 1;
        } else {
            $cntCol++;
        }
        //$float = (($key % 2) == 0 ? 'f__left' : 'f__right');

        $raw_date = new DateTime($value->news_create_date);

        $day = date('d', $raw_date->getTimestamp());
        $month = date('M', $raw_date->getTimestamp());

        $news_id = $value->news_id;
        if (Yii::app()->language == 'en') {
            $content = $value->news_content_en;
            $headline = $value->news_title_en;
        } else {
            $content = $value->news_content_local;
            $headline = $value->news_title_local;
        }
        ?>

        <?php
        if ($cntCol == 1) {
            echo '<div class="row clearfix">';
        }
        ?>
        <div class="col-md-6 column">
            <table width="100%" height="100%">
                <tr>
                    <td valign="top" class="blog__news-home-date">
                        <div class="blog__news-home-date-text">
                            <p class="blog__news-home-date-text-day"><?php echo $day; ?></p>
                            <p class="blog__news-home-date-text-month"><?php echo $month; ?></p>
                        </div>
                    </td>
                    <td valign="top" class="pd__5px">
                        <h4>
                            <strong><?php echo $headline; ?></strong>
                        </h4>
                        <p class="blog__news-home-content"><?php echo $content; ?></p>
                        <p class="blog__news-home-content-more"><?php echo CHtml::link(Yii::t('home', 'btn_read_more'), array('news/detail', 'id' => $news_id), array('class' => 'fancybox', 'data-fancybox-type' => 'iframe')); ?></p>
                    </td>
                </tr>
            </table>
        </div>
        <?php
        if ($cntCol == 2) {
            echo '</div>';
            echo '<div class="clear"></div>';
        }
    }
    ?>

    <div class="clear"></div>

    <div class="blog__news-home-all">
        <?php
        echo CHtml::link(Yii::t('home', 'btn_all_news'), array('news/list', 'id' => 1), array(
            'class' => 'all'
        ));
        ?>
    </div>

</div>