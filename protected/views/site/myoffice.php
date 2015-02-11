<?php
/* @var $this SiteController */

$this->pageTitle = Yii::app()->name;

if (isset(Yii::app()->session['isLogin']) && Yii::app()->session['isLogin']) {
    $this->renderPartial('_myoffice', array(
        'page' => $page,
    ));
} else {
    $this->renderPartial('_promote_myoffice');
}
?>
