<?php
/* @var $this SiteController */

$this->pageTitle	= Yii::app()->name;
$root				= Yii::app()->baseUrl;
?>

<style type="text/css">

.contact__article-head {
	font-family:	myArial;
	font-size: 		22px;
	padding: 		10px;
	color: 			#42b3e5;
}

.contact__article-address , .contact__article-tel , .contact__article-mail , .contact__article-msg {
	font-family:	myArial;
	font-size: 		17px;
	color: 			#898989;
	padding: 		15px 80px;
}

.contact__article-address {
	background-image:		url(<?php echo $root?>/images/site/contact-adds.png);
	background-repeat:		no-repeat;
	background-position: 	7px center;
}

.contact__article-tel {
	background-image:		url(<?php echo $root?>/images/site/contact-tel.png);
	background-repeat:		no-repeat;
	background-position: 	7px center;
}

.contact__article-mail {
	background-image:		url(<?php echo $root?>/images/site/contact-mail.png);
	background-repeat:		no-repeat;
	background-position: 	7px center;
	margin-top:				10px; 
}

.contact__article-msg {
	background-image:		url(<?php echo $root?>/images/site/contact-msg.png);
	background-repeat:		no-repeat;
	background-position: 	7px 10px;
}

.contact__article-msg-more-textarea {
	padding: 10px;
}

.contact__article-msg-more-container {
	padding: 0px 0px 15px 10px;
}

.contact__article-msg-more-btn {
  font-family: 		Arial;
  color: 			#898989;
  font-size: 		17px;
  padding: 			10px 30px;
  border: solid 	#898989 1px;
  text-decoration:	none;
  vertical-align:	middle;
 }
</style>

<br /><br />

<section id="section-contact" class="w__inner" >

	<p align="left" class="txt__home-head">Contact Us</p>

	<br />

	<article id="thai" align="left">
		
		<p class="contact__article-head">Thai</p>

		<p class="contact__article-address">
			Mida-Medalist Entertainment Public Co.,Ltd.<br />
			96/2 Moo4, T. Lamphaya, A. Muang, Nakornphthom 73000 Thailand
		</p>

		<p class="contact__article-tel">+33 (0)299 810 718</p>

		<p class="contact__article-mail">center@mmeplc.co.th</p>

		<div class="contact__article-msg">
			<table>
				<tr>
					<td><textarea cols="50" rows="5" class="contact__article-msg-more-textarea"></textarea></td>
					<td valign="bottom" class="contact__article-msg-more-container">
						<?php echo CHtml::link('Send' , array('site/contactus') , array('class'=>'contact__article-msg-more-btn' , 'target'=>'_self'));?>
					</td>
				</tr>
			</table>
		</div>

	</article>

	<br />
	
	<hr class="hr__home" />

	<br />

	<article id="thai" align="left">
		
		<p class="contact__article-head">Japan</p>

		<p class="contact__article-address">
			Mida-Medalist Entertainment Public Co.,Ltd.<br />
			96/2 Moo4, T. Lamphaya, A. Muang, Nakornphthom 73000 Thailand
		</p>

		<p class="contact__article-tel">+33 (0)299 810 718</p>

		<p class="contact__article-mail">center@mmeplc.co.th</p>

		<div class="contact__article-msg">
			<table>
				<tr>
					<td><textarea cols="50" rows="5" class="contact__article-msg-more-textarea"></textarea></td>
					<td valign="bottom" class="contact__article-msg-more-container">
						<?php echo CHtml::link('Send' , array('site/contactus') , array('class'=>'contact__article-msg-more-btn' , 'target'=>'_self'));?>
					</td>
				</tr>
			</table>
		</div>

	</article>

	<br />
	
	<hr class="hr__home" />

	<br />

	<article id="thai" align="left">
		
		<p class="contact__article-head">Korea</p>

		<p class="contact__article-address">
			Mida-Medalist Entertainment Public Co.,Ltd.<br />
			96/2 Moo4, T. Lamphaya, A. Muang, Nakornphthom 73000 Thailand
		</p>

		<p class="contact__article-tel">+33 (0)299 810 718</p>

		<p class="contact__article-mail">center@mmeplc.co.th</p>

		<div class="contact__article-msg">
			<table>
				<tr>
					<td><textarea cols="50" rows="5" class="contact__article-msg-more-textarea"></textarea></td>
					<td valign="bottom" class="contact__article-msg-more-container">
						<?php echo CHtml::link('Send' , array('site/contactus') , array('class'=>'contact__article-msg-more-btn' , 'target'=>'_self'));?>
					</td>
				</tr>
			</table>
		</div>

	</article>

	<br />
	
	<hr class="hr__home" />

</section>

<br /><br /><br /><br /><br /><br /><br /><br />