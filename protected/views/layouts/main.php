<?php /* @var $this Controller */ ?>

<?php
$cs = Yii::app()->clientScript;
$themePath = Yii::app()->theme->baseUrl;

$session = new CHttpSession;
$session->open();

$http = new CHttpRequest;
Yii::app()->user->returnUrl = $http->getUrl();

//$validtime = date("m/d/Y h:i A", mktime(date("H"), date("i"), date("s"), date("m"), date("d") + 1, date("Y")));
//echo $otp_msg = Yii::t('email', 'msg_otp', array('{otppass}' => '123456', '{refno}' => '654321', '{validtime}' => $validtime));
//die();
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="language" content="en" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />

        <title><?php echo CHtml::encode($this->pageTitle); ?></title>
        <link rel="shortcut icon" href="<?php echo Yii::app()->baseUrl; ?>/images/site/favicon.ico" />

<!--<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/news_promotions.css" />-->

        <?php
        $cs->registerCssFile($themePath . '/css/bootstrap.css');
        $cs->registerCssFile($themePath . '/css/bootstrap-theme.css');
        $cs->registerCssFile($themePath . '/css/font-awesome.min.css');
        $cs->registerCssFile($themePath . '/css/jquery.fancybox.css?v=2.1.5');
        $cs->registerCssFile($themePath . '/css/intlTelInput.css');

//        Yii::app()->clientScript->registerCoreScript('jquery');
//        Yii::app()->clientScript->registerCoreScript('jquery.ui');
        Yii::app()->clientScript->registerCssFile(Yii::app()->clientScript->getCoreScriptUrl() . '/jui/css/base/jquery-ui.css');

        $cs->registerCoreScript('jquery', CClientScript::POS_END);
        $cs->registerCoreScript('jquery.ui', CClientScript::POS_END);
        $cs->registerScript('tooltip', "$('[data-toggle=\"tooltip\"]').tooltip();$('[data-toggle=\"popover\"]').tooltip()", CClientScript::POS_READY);
        $cs->registerScriptFile($themePath . '/js/bootstrap.min.js', CClientScript::POS_END);
        $cs->registerScriptFile($themePath . '/js/jquery.dotdotdot.js', CClientScript::POS_END);
        $cs->registerScriptFile($themePath . '/js/jquery.mousewheel-3.0.6.pack.js', CClientScript::POS_END);
        $cs->registerScriptFile($themePath . '/js/jquery.fancybox.pack.js?v=2.1.5', CClientScript::POS_END);
        $cs->registerScriptFile($themePath . '/js/intlTelInput.min.js', CClientScript::POS_END);
        
        ?>
        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
            <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/screen.css" media="screen, projection" />
        <script type="text/javascript">
            function equalHeight(group) {
                var tallest = 0;
                group.each(function () {
                    var thisHeight = $(this).height();
                    if (thisHeight > tallest) {
                        tallest = thisHeight;
                    }
                });
                group.each(function () {
                    $(this).height(300);
                    //$(this).height(tallest);
                });
            }

            $(document).ready(function () {

                $('.thumbnail p').dotdotdot({
                    ellipsis: '...', /* The HTML to add as ellipsis. */
                    wrap: 'word', /* How to cut off the text/html: 'word'/'letter'/'children' */
                    watch: true /* Whether to update the ellipsis: true/'window' */
                });

                equalHeight($(".thumbnail"));

                $(".fancybox").fancybox();

                $(".loginfancy").fancybox({
                    'openEffect': 'elastic',
                    'closeEffect': 'elastic',
                    'maxWidth': 350,
                    'maxHeight': 350,
                    'scrolling': 'no',
                    'iframe': {'scrolling': 'no'},
                });

                $(".signupfancy").fancybox({
                    'openEffect': 'elastic',
                    'closeEffect': 'elastic',
                    'maxWidth': 350,
                    'maxHeight': 500,
                    'scrolling': 'no',
                    'iframe': {'scrolling': 'no'},
                    helpers: {
                        overlay: {
                            'closeClick': false,
                        }, }
                });

            });
        </script>

        <!-- Internet Explorer HTML5 enabling code: -->

        <!--[if IE]>

        <script src="http://htm5lshiv.googlecode.com/svn/trunk/html5.js"></script>
        
        <style type="text/css">
        .clear {
          zoom: 1;
          display: block;
        }
        </style>
       
        <![endif]-->


    </head>

    <body>
        <div class="fullPage">
            <div class="fullHeader">
                <div class="headNavigate">
                    <div class="logoBar">
                        <div><img class="imgLogo" src="<?php echo Yii::app()->baseUrl; ?>/images/site/logo.png" /></div>
                        <div class="txt_header"><?php echo CHtml::link(CHtml::encode("M-NETWORK Business"), array('/'), array('class' => 'head__text')) ?></div>
                    </div>

                    <div><?php echo CHtml::link(Yii::t('home', 'mnu_products'), array('/'), array('class' => 'menu__top')) ?></div>
                    <div><?php echo CHtml::link(Yii::t('home', 'mnu_news_promotion'), array('site/news_promotions'), array('class' => 'menu__top')) ?></div>
                    <div><?php echo CHtml::link(Yii::t('home', 'mnu_my_office'), array('site/myoffice'), array('class' => 'menu__top')) ?></div>
                    <div><?php echo CHtml::link(Yii::t('home', 'mnu_download'), array('/'), array('class' => 'menu__top')) ?></div>
                    <div><?php echo CHtml::link(Yii::t('home', 'mnu_about_us'), array('/'), array('class' => 'menu__top')) ?></div>
                    <div><?php echo CHtml::link(Yii::t('home', 'mnu_contact_us'), array('site/contactus'), array('class' => 'menu__top')) ?></div>
                    <div></div>
                    <div style="background-color: #5FD200;">
                        <?php
                        if (isset(Yii::app()->session['isLogin']) && Yii::app()->session['isLogin']) {
                            ?>
                            <!-- Split button -->
                            <div class="dropdown userProfileTab">
                                <a href="#" class="dropdown-toggle menu__top" data-toggle="dropdown" aria-expanded="false">
                                    <img src="<?php echo Yii::app()->baseUrl . "/images/member/m" . Yii::app()->user->id . "/profile/" . Yii::app()->user->picture; ?>" class="img-responsive img-circle userImage"/>
                                    <span><?php echo Yii::app()->user->fullname; ?></span>
                                    <span class="caret"></span>
                                </a>
                                <ul class="dropdown-menu dropdown-menu-right" role="menu">
                                    <li><a href="#">Action I</a></li>
                                    <li><a href="#">Action II</a></li>
                                    <li><a href="#">Action III</a></li>
                                    <li class="divider"></li>
                                    <li><?php echo Chtml::link(Yii::t('home', 'btn_logout'), 'site/logout'); ?></li>
                                </ul>

                            </div>
                            <?php
                        } else {
                            ?>
                            <a href="<?php echo Yii::app()->createAbsoluteUrl("/site/login"); ?>"  class="menu__top loginfancy" data-fancybox-type="iframe" style="font-size: 2rem;"><?php echo Yii::t('home', 'btn_login'); ?></a>
                            <!--<a href="" class="btn btn-primary btn-lg" ><?php // echo Yii::t('home', 'btn_sign_up');      ?></a>-->
                            <div class="signup_tab">
                                <a href="<?php echo Yii::app()->createAbsoluteUrl("/site/signup"); ?>" class="signup_link signupfancy" data-fancybox-type="iframe">
                                    Sign Up NOW!!!
                                </a>
                            </div>
                            <?php
                        }
                        ?>
                    </div>
                    <div><?php echo CHtml::link('<i class="fa fa-question-circle fa-2x"   style="padding-top: 9px"></i>', array('site/haf'), array('class' => 'menu__top')) ?></div>
                    <div>
                        <div class="dropdown">
                            <a href="#" class="dropdown-toggle menu__top" data-toggle="dropdown">
                                <i class="fa fa-language fa-2x"  style="padding-top: 9px"></i>
                                <!--<span style="font-size: 2rem; vertical-align: top" class="glyphicon glyphicon-globe" aria-hidden="true"></span>-->
                            </a>
                            <ul class="dropdown-menu dropdown-menu-right" role="menu">
                                <li><?php echo CHtml::link("Japanese", array('setlanguage', 'lang' => 'jp')); ?> </li>
                                <li><?php echo CHtml::link("English", array('setlanguage', 'lang' => 'en')); ?> </li>
                            </ul>
                        </div>
                    </div>
                    <div></div>
                </div>

            </div>
        </div>
        <div class="page">


            <div class="content" style="padding-top: 3%;">
                <?php echo $content; ?>
            </div>

            <div class="footer">
                <br />
                <div id="socialButton">
                    <i class="fa fa-facebook-square fa-3x" ></i>
                    <i class="fa fa-twitter-square fa-3x" ></i>
                    <i class="fa fa-instagram fa-3x" ></i>
                    <i class="fa fa-google-plus-square fa-3x" ></i>
                </div>
                <br />
                <img src="<?php echo Yii::app()->baseUrl; ?>/images/site/line2.png" />
                <div class="w__inner">
                    <p class="f__left 	txt_copyright">Copyright©2014, M-Tech Dreams co., ltd.</p>
                    <p class="f__right txt_copyright"><?php echo Yii::t('home', 'link_term'); ?> | <?php echo Yii::t('home', 'link_privacy'); ?></p>
                    <p class="clear"></p>
                </div>

            </div>
        </div>

    </body>

</html>
