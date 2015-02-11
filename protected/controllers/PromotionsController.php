<?php

class PromotionsController extends Controller
{
	public function actionList()
	{
		$model 		= new Promotions;

		// Display data perpage
		$limit		= 3;

		if(isset($_GET['id']))
			$page	= $_GET['id'];
		else
			$page	= 1;

		$offset		= ($page-1) * $limit;

		$cdate		= date('Y-m-d H:i:s');
		$data		= $model->findAll(array(
			'condition'	=> 'promotion_status="Active" AND promotion_start_date <= :promotion_start_date AND promotion_expire_date >= :promotion_expire_date' ,
			'params'	=> array(':promotion_start_date' => $cdate , ':promotion_expire_date' => $cdate) ,
			'order' 	=> 'promotion_start_date DESC' ,
			'offset'	=> $offset ,
			'limit'		=> $limit ,
		));

		if(count($data))
		{

			$all_data	= $model->findAll(array(
				'condition'	=> 'promotion_status="Active" AND promotion_start_date <= :promotion_start_date AND promotion_expire_date >= :promotion_expire_date' ,
				'params'	=> array(':promotion_start_date' => $cdate , ':promotion_expire_date' => $cdate) ,
			));

			$num_page	= ceil(count($all_data)/$limit);

			if($num_page > 1)
			{
				$page_limit		= 9;
				$page_before	= floor($page_limit/2);
				$page_start		= $page-$page_before;
				$page_end 		= $page+$page_before;

				if($num_page <= $page_limit)
				{
					$page_start		= 1;
					$page_end 		= $num_page;
				}
				else if($page_end > $num_page)
				{
					$page_start	= $num_page-$page_limit+1;
					$page_end	= $num_page;
				}
				else if(($page-$page_before) < 1)
				{
					$page_start	= 1;
					$page_end	= $page_limit;
				}
			}
			else
			{
				$page_start	= '';
				$page_end	= '';
			}

			$this->render('list' , array(
				'promotions'	=> $data ,
				'page_start'	=> $page_start ,
				'page_end'		=> $page_end ,
			));

		}
		else
		{
			throw new CHttpException(404, 'Page not found.');
		}
	}

	public function actionDetail()
	{
		$model	= new Promotions;

		$cdate	= date('Y-m-d H:i:s');
		$data	= $model->findByPk($_GET['id'] , array(
					'condition'	=> 'promotion_status="Active" AND promotion_start_date <= :promotion_start_date AND promotion_expire_date >= :promotion_expire_date' ,
					'params'	=> array(':promotion_start_date' => $cdate , ':promotion_expire_date' => $cdate) ,
				));

		if(count($data))
		{
			$this->render('detail' , array(
				'data'	=> $data,
			));
		}
		else
			throw new CHttpException(404, 'Page not found.');
	}
}
