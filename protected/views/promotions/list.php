<?php
// Variable
// $promotions 	[Object] data of promotions
// $_GET['id'] 	[Int] current page
// $page_start	[Int] pagging start
// $page_end 	[Int] pagging end
?>
<style type="text/css">

.promotions__list-picture {
	width: 	500px;
	margin: 5px;
}

.promotions__list-content {
	min-height:		200px; 
	padding: 		0px 10px;
}

.promotions__list-content-title {
	color: 			#000;
	font-family:	abeatbyKai;
	font-size: 		20px;
	text-align: 	left;
	line-height: 	25px;
	margin-top: 	10px;
}

.promotions__list-content-detail {
	color: 			#898989;
	font-family:	myArial;
	font-size: 		18px;
	line-height: 	20px;
	text-align:		justify;
	text-indent: 	30px;
	margin-top: 	10px;
}

.promotions__list-more {
	text-align: 	right;
	margin: 		10px;
}

</style>

<br /><br />

<div class="w__inner">

	<section id="promotions__list">

		<div id="list"></div>

		<p align="left" class="txt__home-head">Promotions</p>

		<br /><br />

		<?php
			$num_loop		= 0;
			$num_promotion	= count($promotions);

			if($num_promotion){
				foreach ($promotions as $key => $value) {
					$num_loop++;
					$id 		= $value->promotion_id;
					$title		= $value->promotion_title_en;
					$content	= $value->promotion_content_en;
					$picture	= $value->promotion_picture;
		?>

		<table class="w__100">
			<tr>
				<td valign="top" class="w__50">
					<?php echo CHtml::image(Yii::app()->request->baseUrl.'/images/promotions/thumb/list_'.$picture, $title , array('class'=>'promotions__list-picture'));?>
				</td>
				<td valign="top" class="w__50" valign="top">

					<div class="promotions__list-content">
						<p class="promotions__list-content-title"><?php echo $title?></p>
						<p class="promotions__list-content-detail"><?php echo $content?></p>
					</div>

					<p class="promotions__list-more"><?php echo CHtml::link('Read More' , array('promotions/detail', 'id'=>$id) , array('class'=>'btn__more-list'));?></p>
				</td>
			</tr>
		</table>

		<br />

		<hr class="hr__home" />

		<br />

		<?php
				}
			}
		?>

		<br /><br />

		<p class="page__container">
			<?php
				// PAGE
				if(!empty($page_start))
				{
					for ($i=$page_start; $i <= $page_end; $i++)
					{ 
						if($_GET['id'] == $i)
							echo CHtml::link($i , array('promotions/list','id' => $i,'#'=>'list') , array('id'=>'page-'.$i , 'class'=>'cpage-split' , 'target'=>'_self'));
						else
							echo CHtml::link($i , array('promotions/list','id' => $i,'#'=>'list') , array('id'=>'page-'.$i , 'class'=>'page-split' , 'target'=>'_self'));
					}
				}
			?>
		</p>

		<br /><br /><br />

	</section>

</div>