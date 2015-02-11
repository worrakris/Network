<?php
/* @var $this SiteController */

$this->pageTitle	= Yii::app()->name;

$root	= Yii::app()->baseUrl;

if(isset($_GET['faq'])){
	$title		= 'Frequently Asked Questions';
	$menu_faq	= 'faq__left-menu-selected';
	$menu_help 	= 'faq__left-menu-unselect';
}
else{
	$title		= 'Search Help Center';
	$menu_faq	= 'faq__left-menu-unselect';
	$menu_help 	= 'faq__left-menu-selected';
}

?>

<style type="text/css">

.faq__left {
	float: 		left;
	width: 		220px;
	text-align: left;
}

.faq__right {
	float:		right;
	width:		790px;
}

a.faq__left-menu-selected:link , a.faq__left-menu-selected:visited , a.faq__left-menu-selected:active , a.faq__left-menu-selected:hover {
	display:		inline-block;
	font-family: 	myArial;
	font-size: 		20px;
	min-width: 		190px;
	line-height: 	60px;
	background-position: left center;
	background-repeat: no-repeat;
	background-image: url(<?php echo $root?>/images/site/faq-selected.png);
	text-indent: 70px;
	color: #6e6e6e;
}

a.faq__left-menu-unselect:link , a.faq__left-menu-unselect:visited , a.faq__left-menu-unselect:active , a.faq__left-menu-unselect:hover {
	display:		inline-block;
	font-family: 	myArial;
	font-size: 		20px;
	min-width: 		190px;
	line-height: 	60px;
	background-position: left center;
	background-repeat: no-repeat;
	background-image: url(<?php echo $root?>/images/site/faq-unselect.png);
	text-indent: 31px;
	color: #9f9f9f;
}

.faq__search-form-container {
	text-align: right;
}

.faq__search-form-input {
	width:			230px;
	border: 		solid 1px #d3d3d3;
	padding: 		10px;
	font-size:		16px;
	font-family:	myArial;
}

.faq__search-form-button {
	width: 				100px;
	background-color:	#42b3e5;
	border: 			solid 1px #42b3e5;
	padding: 			10px;
	font-size: 			16px;
	font-family: 		myArial;
}

</style>

<br /><br />

<div class="w__inner">

	<p align="left" class="txt__home-head">HELP & FAQ</p>

	<br /><br />

	<div class="faq__left">
		<?php echo CHtml::link('Help'	, array('site/haf','id'=>'help')	, array('class' => $menu_help , 'target'=>'_self'));?>
		<br /><br />
		<?php echo CHtml::link('Faq'	, array('site/haf','id'=>'faq')		, array('class' => $menu_faq , 'target'=>'_self'));?>
	</div>

	<div class="faq__right">
		
		<section id="faq__search">

			<p align="left" class="txt__home-head"><?php echo $title?></p>

			<br /><br />

			<div class="faq__search-form-container" align="right">

				<?php $form = $this->beginWidget('CActiveForm', array('action' => Yii::app()->createUrl($this->route) , 'id' => 'faq__search-form', 'method' => 'post')); ?>

				<?php echo CHtml::textField('keyword' , '' , array('placeholder' => 'Search...' , 'class' => 'faq__search-form-input'))?><?php echo CHtml::button('Search' , array('class' => 'faq__search-form-button cursor'))?>

				<?php $this->endWidget(); ?>

			</div>

			<br />

			<div id="accordion" align="left">
				<h3>Q : This is a Book ?</h3>
				<div>A : Yes is it.</div>
				<h3>Q : This is a Book ?</h3>
				<div>A : Yes it is a book.</div>
				<h3>Q : This is a Book ?</h3>
				<div>A : No, It's a manga.</div>
			</div>

		</section>

		<br /><br />

		<section id="faq__search-content">

			<div></div>

		</section>

	</div>

	<div class="clear"></div>

</div>

<br /><br /><br />

<script type="text/javascript">
$( "#accordion" ).accordion();
</script>