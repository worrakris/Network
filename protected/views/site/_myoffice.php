<style>
    .promo_header {
        font-family: Lobster;
        font-size: 2.8rem;
        width: 100%;
        background-color: #2F77F0;
        color: white;
        text-align: center;
    }

    .promo_paragraph {
        font-family: Lobster;
        font-size: 2.0rem;
        width: 100%;
        text-align: center;        
    }

    .promo_img {
        height: 250px;
        line-height: 250px;
        background-color: gainsboro;
        text-align: center;
        border-radius: 10px;
    }
    .promo_row {
        width: 90%;
        display: table;
        margin: 0 auto;
    }
    .outer {
        width: 100%;
        text-align: center;
    }
</style>

<?php
?>

<div class="w__inner">
    <div align="left" class="txt__home-head"><?php echo Yii::t('myoffice', 'title_myoffice'); ?></div>
    <br/>
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href=""><i class="fa fa-university"></i></a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li <?php if ($page=='commission') echo "class='active'"; ?>><?php echo CHtml::link(Yii::t('myoffice', 'mnu_commission'), array('myoffice', 'page'=>'commission'), array('class' => '')); ?></li>
                    <li <?php if ($page=='shop') echo "class='active'"; ?>><?php echo CHtml::link(Yii::t('myoffice', 'mnu_shop'), array('myoffice', 'page'=>'shop'), array('class' => '')); ?></li>
                    <li <?php if ($page=='profile') echo "class='active'"; ?>><?php echo CHtml::link(Yii::t('myoffice', 'mnu_profile'), array('myoffice', 'page'=>'profile'), array('class' => '')); ?></li>
                    <li <?php if ($page=='family') echo "class='active'"; ?>><?php echo CHtml::link(Yii::t('myoffice', 'mnu_family'), array('myoffice', 'page'=>'family'), array('class' => '')); ?></li>
                    <li <?php if ($page=='bank') echo "class='active'"; ?>><?php echo CHtml::link(Yii::t('myoffice', 'mnu_bank'), array('myoffice', 'page'=>'bank'), array('class' => '')); ?></li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
    <section id="myoffice_content">
        <?php
        $this->renderPartial("_$page");
        ?>
    </section>
</div>