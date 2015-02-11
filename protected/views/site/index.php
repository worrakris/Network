<?php
/* @var $this SiteController */

$this->pageTitle = Yii::app()->name;
?>

<section id="section-banner">
    <?php
    $this->renderPartial('_banner', array(
        'model' => $banner,
    ));
    ?>
</section>

<br />

<section id="section-news">
    <?php
    $this->renderPartial('_news', array(
        'model' => $news,
        'limit' => 4,
    ));
    ?>
</section>

<br />
<hr class="w__inner hr__home">
<br />

<section id="section-promotions">
    <?php
    $this->renderPartial('_promotion', array(
        'model' => $promotions,
        'limit' => 9
    ));
    ?>
</section>

<br />

<section id="section-subscribe" >
    <?php
    $this->renderPartial('_subscribe', array(
        'model' => $subscribe,
    ));
    ?>
</section>

<br /><br /><br />

