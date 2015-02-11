<?php

class NewsController extends Controller {

    public function actionList() {
        $model = new News;

        // Display data perpage
        $limit = 10;

        if (isset($_GET['id']))
            $page = $_GET['id'];
        else
            $page = 1;

        $offset = ($page - 1) * $limit;

        $cdate = date('Y-m-d H:i:s');
        $data = $model->findAll(array(
            'condition' => 'news_status="Active" AND news_expire_date > :news_expire_date',
            'params' => array(':news_expire_date' => $cdate),
            'order' => 'news_create_date DESC',
            'offset' => $offset,
            'limit' => $limit,
        ));

        if (count($data)) {

            $all_data = $model->findAll(array(
                'condition' => 'news_status="Active" AND news_expire_date > :news_expire_date',
                'params' => array(':news_expire_date' => $cdate)
            ));

            $num_page = ceil(count($all_data) / $limit);

            if ($num_page > 1) {
                $page_limit = 9;
                $page_before = floor($page_limit / 2);
                $page_start = $page - $page_before;
                $page_end = $page + $page_before;

                if ($num_page <= $page_limit) {
                    $page_start = 1;
                    $page_end = $num_page;
                } else if ($page_end > $num_page) {
                    $page_start = $num_page - $page_limit + 1;
                    $page_end = $num_page;
                } else if (($page - $page_before) < 1) {
                    $page_start = 1;
                    $page_end = $page_limit;
                }
            } else {
                $page_start = '';
                $page_end = '';
            }

            $this->render('list', array(
                'news' => $data,
                'page_start' => $page_start,
                'page_end' => $page_end,
            ));
        } else {
            throw new CHttpException(404, 'Page not found.');
        }
    }

    public function actionDetail() {
        $model = new News;

        $cdate = date('Y-m-d H:i:s');
        $data = $model->findByPk($_GET['id'], array(
            'condition' => 'news_status="Active" AND news_expire_date > :news_expire_date',
            'params' => array(':news_expire_date' => $cdate),
        ));

        if (count($data)) {
            $this->render('detail', array(
                'data' => $data,
            ));
        } else
            throw new CHttpException(404, 'Page not found.');
    }

}
