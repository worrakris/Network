<?php

/**
 * Controller is the customized base controller class.
 * All controller classes for this application should extend from this base class.
 */
class Controller extends CController {

    /**
     * @var string the default layout for the controller view. Defaults to '//layouts/column1',
     * meaning using a single column layout. See 'protected/views/layouts/column1.php'.
     */
    public $layout = '//layouts/column1';

    /**
     * @var array context menu items. This property will be assigned to {@link CMenu::items}.
     */
    public $menu = array();

    /**
     * @var array the breadcrumbs of the current page. The value of this property will
     * be assigned to {@link CBreadcrumbs::links}. Please refer to {@link CBreadcrumbs::links}
     * for more details on how to specify this property.
     */
    public $breadcrumbs = array();

    public function init() { // Muti language
        parent::init();

        $session = new CHttpSession;
        $session->open();
//        if (isset(Yii::app()->request->cookies['lang'])) {
//            Yii::app()->language = (string) Yii::app()->request->cookies['lang'];
//        } else {
        Yii::app()->language = isset(Yii::app()->session['sess_lang']) ? Yii::app()->session['sess_lang'] : 'en';
//            $cookie = new CHttpCookie('lang', Yii::app()->language);
//            $cookie->expire = 31104000;
//            Yii::app()->request->cookies['lang'] = $cookie;
//        }
    }

    public function actionSetlanguage($lang = NULL) {
        Yii::app()->session['sess_lang'] = strtolower($lang);
//        $cookie = new CHttpCookie('lang', strtolower($lang));
//        $cookie->expire = 31104000;
//        Yii::app()->request->cookies['lang'] = $cookie;
        Yii::app()->request->redirect(Yii::app()->user->returnUrl);
    }

}
