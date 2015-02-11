<?php

class SiteController extends Controller {

    /**
     * Declares class-based actions.
     */
    public function actions() {
        return array(
            // captcha action renders the CAPTCHA image displayed on the contact page
            'captcha' => array(
                'class' => 'CCaptchaAction',
                'backColor' => 0xFFFFFF,
            ),
            // page action renders "static" pages stored under 'protected/views/site/pages'
            // They can be accessed via: index.php?r=site/page&view=FileName
            'page' => array(
                'class' => 'CViewAction',
            ),
        );
    }

    /**
     * This is the default 'index' action that is invoked
     * when an action is not explicitly requested by users.
     */
    public function actionIndex() {
        $this->render('index', array(
            'news' => new News,
            'promotions' => new Promotions,
            'banner' => new Banner,
            'subscribe' => new Subscription,
        ));
    }

    public function actionNews_Promotions() {
        $this->render('news_promotions', array(
            'news' => new News,
            'promotions' => new Promotions,
        ));
    }

    public function actionContactUs() {
        $this->render('contactus');
    }

    public function actionHAF() {
        $this->render('haf');
    }

    public function actionMyoffice() {
        $param = "";
        if (isset($_GET['page']) && !empty($_GET['page'])) {
            $param = $_GET['page'];
        } else {
            $param = 'commission';
        }
        
        $this->render('myoffice' , array(
            'page' => $param,
        ));
    }
    
    public function actionCommission() {
        $this->render('myoffice' , array(
            'page' => 'commission',
        ));
    }
    
    

    /**
     * This is the action to handle external exceptions.
     */
    public function actionError() {
        if ($error = Yii::app()->errorHandler->error) {
            if (Yii::app()->request->isAjaxRequest)
                echo $error['message'];
            else
                $this->render('error', $error);
        }
    }

    /**
     * Displays the contact page
     */
    public function actionContact() {
        $model = new ContactForm;
        if (isset($_POST['ContactForm'])) {
            $model->attributes = $_POST['ContactForm'];
            if ($model->validate()) {
                $name = '=?UTF-8?B?' . base64_encode($model->name) . '?=';
                $subject = '=?UTF-8?B?' . base64_encode($model->subject) . '?=';
                $headers = "From: $name <{$model->email}>\r\n" .
                        "Reply-To: {$model->email}\r\n" .
                        "MIME-Version: 1.0\r\n" .
                        "Content-Type: text/plain; charset=UTF-8";

                mail(Yii::app()->params['adminEmail'], $subject, $model->body, $headers);
                Yii::app()->user->setFlash('contact', 'Thank you for contacting us. We will respond to you as soon as possible.');
                $this->refresh();
            }
        }
        $this->render('contact', array('model' => $model));
    }

    /**
     * Displays the login page
     */
    public function actionLogin() {
        $model = new LoginForm;

        // if it is ajax validation request
        $ajaxForm = filter_input(INPUT_POST, 'ajax');
        if (isset($ajaxForm) && $ajaxForm === 'login-form') {
            echo CActiveForm::validate($model);
            Yii::app()->end();
        }

        // collect user input data
        if (isset($_POST['LoginForm'])) {
            $model->attributes = $_POST['LoginForm'];
            // validate user input and redirect to the previous page if valid
            if ($model->validate() && $model->login()) {
                Yii::app()->session['sess_lang'] = strtolower(Yii::app()->user->language);
                Yii::app()->session['isLogin'] = true;
                $this->redirect('index');
            }
        }
        // display the login form
        $this->render('login', array('model' => $model));
    }

    public function actionSignup() {
        $model = new SignupForm;

        // if it is ajax validation request
        $ajaxForm = filter_input(INPUT_POST, 'ajax');
        if (isset($ajaxForm) && $ajaxForm === 'signup-form') {
            echo CActiveForm::validate($model);
            Yii::app()->end();
        }

        if (isset($_POST['SignupForm'])) {
            $model->attributes = $_POST['SignupForm'];
            $model->mobile = $_POST['phoneNumber'];
            $country = $_POST['country'];

            if ($model->validate()) {

                // Generate Ref.No. & OTP 
                echo $today = time();
                echo $tomorrow = mktime(date("H"), date("i"), date("s"), date("m"), date("d") + 1, date("Y"));
                $validtime = date("m/d/Y h:i:s A", $tomorrow);
                $otpPass = "" . mt_rand(100000, 999999);

                $otpModel = new OTPManage();
                $otpModel->otp = $otpPass;
                $otpModel->username = $model->username;
                $otpModel->create_date = date("Y-m-d H:i:s", $today);
                $otpModel->expire_date = date("Y-m-d H:i:s", $tomorrow);
                $refNo = 0;
                if ($otpModel->save()) {
                    $refNo = $otpModel->ref_no;
                }

                // Send OTP Password
//                $name = '=?UTF-8?B?' . base64_encode(Yii::t('emai;', 'sender')) . '?=';
//                $subject = '=?UTF-8?B?' . base64_encode(Yii::t('email', 'subject_welcome')) . '?=';
//                $headers = "From: $name <{$model->email}>\r\n" .
//                        "Reply-To: {$model->email}\r\n" .
//                        "MIME-Version: 1.0\r\n" .
//                        "Content-Type: text/plain; charset=UTF-8";
//                
//                $otp_msg = Yii::t('email', 'msg_otp', array('{otppass}' => '123456', '{refno}' => '654321', '{validtime}' => $validtime));
//
//                mail($model->email, $subject, $model->body, $headers);
                // Send Welcome e-Mail
//                $name = '=?UTF-8?B?' . base64_encode(Yii::t('email', 'sender')) . '?=';
//                $subject = '=?UTF-8?B?' . base64_encode(Yii::t('email', 'subject_welcome')) . '?=';
//                $headers = "From: $name <" . Yii::app()->params['adminEmail'] . ">\r\n" .
//                        "Reply-To: " . Yii::app()->params['adminEmail'] . "\r\n" .
//                        "MIME-Version: 1.0\r\n" .
//                        "Content-Type: text/html; charset=UTF-8";
//                $content = Yii::t('email', 'msg_welcome', array('{emailAddr}' => $model->email, '{linkUrl}' => 'Click Here', '{helpdesk}' => Yii::app()->params['helpdeskEmail']));
//
//                mail($model->email, $subject, $content, $headers);
//                $actModel = new SignupForm;
//                $this->render('activate', array('model' => $actModel));
            }
        }
        $this->render('signup', array('model' => $model));
    }

    /**
     * Logs out the current user and redirect to homepage.
     */
    public function actionLogout() {
        Yii::app()->user->logout();
        Yii::app()->session['isLogin'] = FALSE;
        $this->redirect(Yii::app()->homeUrl);
    }

    public function actionSubscription() {
        $model = new Subscription;

        if (isset($_POST['Subscription'])) {
            $model->attributes = $_POST['Subscription'];
            //$model->scb_update = time();
            if ($model->validate()) {
                // Checking for dupplicate
                $dupModel = new Subscription;
                $result = $dupModel->findAll(array(
                    'condition' => 'scb_email = :scbEmail',
                    'params' => array(':scbEmail' => $_POST['Subscription']['scb_email']),
                ));

                if (count($result) == 0) {
                    // Save to DB
                    $model->scb_status = "Active";
                    $model->save();
                    echo "fin";
                } else {
                    echo "dup";
                }
                return;
            } else {
                print_r($model->errors);
                return false;
            }
        }
        $this->renderPartial('_subscribe', array('model' => $model));
    }

}
