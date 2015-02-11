<?php
// Variable
// $news 		[Object] data of news
// $_GET['id'] 	[Int] current page
// $page_start	[Int] pagging start
// $page_end 	[Int] pagging end
?>
<style type="text/css">
    .news__list-blogs {
        margin-top: 5px;
        width: 95%;
    }

    .news__list-blogs-date {
        background-image: url(<?php echo Yii::app()->baseUrl; ?>/images/site/date.png);
        background-repeat: no-repeat;
        background-position: center 10px;
        width: 100px;
    }

    .news__list-blogs-date-text {
        text-align: center;
        margin-top: 30px;
        color: white;
    }

    .news__list-blogs-date-day {
        padding: 0;
        font-family: abeatbyKai;
        font-size: 2.5rem;
        color: #FFF;
        margin: 0;
    }

    .news__list-blogs-date-month {
        font-family: abeatbyKai;
        font-size: 1.6rem;
        color: #FFF;
        padding: 0;
        margin: 0;
    }

    .news__list-blogs-detail {
        padding: 10px;
        font-family: myArial;
        font-size: 1.6rem;
        text-align: justify;
        text-indent: 30px;
        line-height: 20px;
        color: #898989;
    }

    a.more:link { 
        text-decoration: none; 
        font-family: myArial; 
        font-size: 1.6rem; 
        color: #3156a3; 
    //    line-height: 40px;
    }
    a.more:visited	{}
    a.more:hover	{color: black;}
    a.more:active	{}

    .news__list-blogs-over {
        background-color: #efefef;
    }

</style>

<div class="w__inner">
    <section id="news__list">
        <div id="list"></div>
        <p align="left" class="txt__home-head">News</p>
        <br />
        <?php
        $num_loop = 0;
        $num_news = count($news);

        foreach ($news as $key => $value) {
            $num_loop++;
            $raw_date = new DateTime($value->news_create_date);
            $day = date('d', $raw_date->getTimestamp());
            $month = date('M', $raw_date->getTimestamp());

            $news_id = $value->news_id;
            $content = $value->news_content_en;
            ?>

            <div class="news__list-blogs">
                <table width="100%">
                    <tr>
                        <td valign="top" class="news__list-blogs-date">
                            <div class="news__list-blogs-date-text">
                                <p class="news__list-blogs-date-day"><?php echo $day; ?></p>
                                <p class="news__list-blogs-date-month"><?php echo $month; ?></p>
                            </div>
                        </td>
                        <td valign="top">
                            <p class="news__list-blogs-detail">
                                <?php echo $content ?>
                                <br />
                                <?php echo CHtml::link(Yii::t('home', 'btn_read_more'), array('news/detail', 'id' => $news_id), array('class' => 'fancybox', 'data-fancybox-type' => 'iframe')); ?>
                            </p>
                        </td>
                    </tr>
                </table>
            </div>

            <?php if ($num_loop <= $num_news) { ?><br /><hr class="hr__home" /><?php } ?>

            <?php
        }
        ?>

        <br />

        <p class="page__container">
            <?php
            // PAGE
            if (!empty($page_start)) {
                for ($i = $page_start; $i <= $page_end; $i++) {
                    if ($_GET['id'] == $i)
                        echo CHtml::link($i, array('news/list', 'id' => $i, '#' => 'list'), array('id' => 'page-' . $i, 'class' => 'cpage-split', 'target' => '_self'));
                    else
                        echo CHtml::link($i, array('news/list', 'id' => $i, '#' => 'list'), array('id' => 'page-' . $i, 'class' => 'page-split', 'target' => '_self'));
                }
            }
            ?>
        </p>

        <br /><br /><br /><br />

    </section>

</div>

<script type="text/javascript">
    $('.news__list-blogs').hover(
            function () {
                $(this).addClass('news__list-blogs-over')
            },
            function () {
                $(this).removeClass('news__list-blogs-over')
            }
    );
</script>