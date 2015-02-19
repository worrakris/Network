<?php /* @var $this Controller */
$cs = Yii::app()->clientScript;
$themePath = Yii::app()->theme->baseUrl;
$session = new CHttpSession;
$session->open();
//$http = new CHttpRequest;
//Yii::app()->user->returnUrl = $http->getUrl();
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

            $(document).ready(function () {
                $(function () {
                    $('[data-toggle="popover"]').popover()
                });
                
                $('.thumbnail p').dotdotdot({
                    ellipsis: '...', /* The HTML to add as ellipsis. */
                    wrap: 'word', /* How to cut off the text/html: 'word'/'letter'/'children' */
                    watch: true /* Whether to update the ellipsis: true/'window' */
                });

                $("#SignupInfo_signup_mobile").intlTelInput({
                    defaultCountry: "auto",
                    utilsScript: "<?php echo $themePath ?>/lib/libphonenumber/build/utils.js",
                }).blur(function () {
                    var countryData = $("#SignupInfo_signup_mobile").intlTelInput("getSelectedCountryData");
                    $('#country').val(countryData.iso2);
                    //var ntlNumber = $("#SignupForm_mobile").intlTelInput("getNumber"); // จะคืนค่าแบบ +66817229599
                    var ntlNumber = $("#SignupInfo_signup_mobile").intlTelInput("getNumber", intlTelInputUtils.numberFormat.NATIONAL); // จะคืนค่าแบบ 081 722 9599
                    $('#phoneNumber').val(ntlNumber.replace(/ /g, ''));
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

        <div class="page">
            <div class="content">
                <?php echo $content; ?>
            </div>
        </div>
    </body>

</html>