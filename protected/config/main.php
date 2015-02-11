<?php

// uncomment the following to define a path alias
// Yii::setPathOfAlias('local','path/to/local-folder');
// This is the main Web application configuration. Any writable
// CWebApplication properties can be configured here.
return array(
    'basePath' => dirname(__FILE__) . DIRECTORY_SEPARATOR . '..',
    'name' => 'M-Network Business',
    'language' => 'en',
    'theme' => 'bootstrap',
    // preloading 'log' component
    'preload' => array('log'),
    'aliases' => array(
//        'bootstrap' => 'ext.bootstrap',
        'bootstrap' => realpath(__DIR__ . '/../extensions/bootstrap'),
    ),
// autoloading model and component classes
    'import' => array(
        'application.models.*',
        'application.components.*',
        'bootstrap.behaviors.*',
        'bootstrap.helpers.*',
        'bootstrap.widgets.*'
    ),
    'modules' => array(
// uncomment the following to enable the Gii tool
        'gii' => array(
            'class' => 'system.gii.GiiModule',
            'password' => '1234',
            'ipFilters' => array('127.0.0.1', '::1'),
            'generatorPaths' => array('bootstrap.gii'),
        ),
    ),
    // application components
    'components' => array(
        'bsHtml' => array(
            'class' => 'bootstrap.components.BSHtml'
        ),
        'bootstrap' => array(
            'class' => 'bootstrap.components.BsApi'
        ),
        'user' => array(
            'allowAutoLogin' => true,
            'class' => 'application.components.MSystemUser',
        ),
        // uncomment the following to enable URLs in path-format
        'urlManager' => array(
            'urlFormat' => 'path',
            'showScriptName' => false,
            'caseSensitive' => false,
            'rules' => array(
                '<controller:\w+>/<id:\d+>' => '<controller>/view',
                '<controller:\w+>/<action:\w+>/<id:\d+>' => '<controller>/<action>',
                '<controller:\w+>/<action:\w+>' => '<controller>/<action>',
            ),
        ),
        /*
          'db'=>array(
          'connectionString' => 'sqlite:'.dirname(__FILE__).'/../data/testdrive.db',
          ),
         */
// uncomment the following to use a MySQL database
        'db' => array(
            'connectionString' => 'mysql:host=localhost;dbname=mtech_prj',
            'emulatePrepare' => true,
            'username' => 'root',
            'password' => '',
            'charset' => 'utf8',
        ),
        'errorHandler' => array(
// use 'site/error' action to display errors
            'errorAction' => 'site/error',
        ),
        'log' => array(
            'class' => 'CLogRouter',
            'routes' => array(
                array(
                    'class' => 'CFileLogRoute',
                    'levels' => 'error, warning',
                ),
            // uncomment the following to show log messages on web pages
            /*
              array(
              'class'=>'CWebLogRoute',
              ),
             */
            ),
        ),
    ),
    // application-level parameters that can be accessed
// using Yii::app()->params['paramName']
    'params' => array(
// this is used in contact page
        'adminEmail' => 'mnetwork-activation@mtech.co.th',
        'helpdeskEmail' => 'helpdesk@mtech.co.th',
        'sms' => array(
            'th' => 'th@mobile.com',
            'jp' => 'jp@mobile.com',
            ),
    ),
);
