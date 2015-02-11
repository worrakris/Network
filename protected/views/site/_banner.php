<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$data = $model->findAll(array(
    'condition' => 'banner_status="Active"',
    'order' => 'banner_update_date DESC',
        ));

$cnt = $model->count('banner_status="Active"');

if ($cnt > 0) {
    ?>

    <div id="carousel-banner" class="carousel slide" data-ride="carousel" style="width: 95%; margin: 0 auto">
        <!-- Indicators -->
<!--        <ol class="carousel-indicators">
            <li data-target="#carousel-banner" data-slide-to="0" class="active"></li>
            <?php // for ($i = 1; $i < $cnt; $i++) { ?>
                <li data-target="#carousel-banner" data-slide-to="<?php // echo $i; ?>"></li>
            <?php // } ?>        
        </ol>-->

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <?php
            $num = 0;
            foreach ($data as $value) {
                ?>    
                <div class="item <?php if ($num == 0) echo "active"; ?>">
                    <img src="<?php echo Yii::app()->baseUrl; ?>/images/banner/<?php echo $value['banner_image']; ?>" />
                    <div class="carousel-caption">
                        <?php if (Yii::app()->language == 'en') { ?>
                            <h3><?php echo $value['banner_caption_en']; ?></h3>
                            <p><?php echo $value['banner_detail_en']; ?></p>
                        <?php } else { ?>
                            <h3><?php echo $value['banner_caption_local']; ?></h3>
                            <p><?php echo $value['banner_detail_local']; ?></p>
                        <?php } ?>
                    </div>
                </div>
                <?php
                $num++;
            }
            ?>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-banner" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-banner" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <?php
} else {
    
}
?>