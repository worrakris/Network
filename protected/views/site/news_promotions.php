<?php
/* @var $this SiteController */

$this->pageTitle = Yii::app()->name;
?>

<br />

<section id="section-news">
    <?php
    $this->renderPartial('_news', array(
        'model' => $news,
        'limit' => 6,
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