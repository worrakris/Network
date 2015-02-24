<style>
    .shop-item-box {
        position: relative;
        padding: 5px;
        margin: 8px;
        border: #888 solid thin;
        border-radius: 5px;
        width: 31%;
        height: 120px;
        background-color: whitesmoke;
        float: left;
        display: inline-block;
    }

    .shop-item-box.active {
        border: #0384ce solid 2px;
        background-color: #c7ddef;
    }

    .shop-item-box:hover {
        border: #0384ce solid 2px;
    }

    .shop-item-picture {
        float: left;
    }

    .shop-item-desc {
        position: relative;
        margin-top: 10px;
        margin-left: 10px;
        float: left;
        text-align: left;
        font-size: 1.6rem;
        line-height: 2.6rem;
    }

    .shop-default {
        position: absolute;
        right: 8px;
        bottom: 5px;
        color: green;
    }

    .link-button {
        display: inline-block;
        line-height: 2.8rem;
        color: white;
        padding-left: 8px;
        padding-right: 8px;
        padding-top: 4px;
        padding-bottom: 4px;
        vertical-align:middle;
        font-size: 1.4rem;
        background-color: #0081c2;
        border: #002a80 solid 1px;
        /*        border-radius: 3px;*/
    }

    .content-box {
        width: 100%;
        background-color: #EEE;
    }
</style>

<?php
$shopList = ShopProfile::model()->findAllByAttributes(array('creator_id' => Yii::app()->user->id));
$cntShop = count($shopList);
$firstShop = $shopList[0]->shop_id;
$defaultShop = 1;
?>

<section id="my_shop">
    <div class="profile_box row">
        <div align="left" class="txt__home-sub-head">
            <?php echo Yii::t('myoffice', 'title_shop'); ?>
            <span style="float: right;">
                <a href="#" class="link-button"><span class="glyphicon glyphicon-plus-sign"></span>&nbsp;&nbsp;<?php echo Yii::t('myoffice', 'btn_addshop'); ?></a>
            </span>
        </div>

        <br/>
        <div id="shop-list" class="content-box">
            <div style="margin-left:0; width: 100%; display: inline-block; text-align: center">
                <div style="width: 95%; display: inline-block; text-align: center">
                    <?php for ($ndx = 0; $ndx < $cntShop; $ndx++) { ?>
                        <div id="SH<?php echo $shopList[$ndx]->shop_id; ?>" class="shop-item-box <?php if ($shopList[$ndx]->shop_id === $firstShop) echo "active"; ?>">
                            <?php if ($shopList[$ndx]->shop_logo !== 'default_logo.png') { ?>
                                <div class="shop-item-picture">
                                    <img src="<?php echo Yii::app()->baseUrl . "/images/shop/s" . $shopList[$ndx]->shop_id . "/" . $shopList[$ndx]->shop_logo; ?>" class="img-thumbnail img-responsive img-polaroid" />
                                </div>
                            <?php } else { ?>
                                <div class="shop-item-picture">
                                    <img src="<?php echo Yii::app()->baseUrl . "/images/site/default_logo.png"; ?>" class="img-thumbnail img-responsive img-polaroid" />
                                </div>
                            <?php } ?>
                            <div class="shop-item-desc">
                                <?php
                                $shopEP = 200;
                                $shopCPV = 1250;
                                ?>
                                <strong><?php echo $shopList[$ndx]->shop_name; ?><br></strong>
                                <?php echo number_format($shopEP) . " EP"; ?><br>
                                <?php echo number_format($shopCPV) . " CPV"; ?><br>
                            </div>
                            <?php if ($shopList[$ndx]->shop_id == $defaultShop) { ?>
                                <span class="fa fa-check-circle-o fa-3x shop-default" title="<?php echo Yii::t('myoffice', 'tips_default_shop'); ?>"></span>
                            <?php } else { ?>
                                <span class="fa fa-circle-o fa-3x shop-default" title="<?php echo Yii::t('myoffice', 'tips_change_default_shop'); ?>"></span>
                            <?php } ?>
                        </div>
                    <?php } ?>
                </div>
            </div>
        </div>
        <br />

        <div id="shop-info" class="content-box" >
            <?php $this->renderPartial("_shop_product", array('shop_id' => $firstShop)); ?>
        </div>
    </div>
</section>

<script type="text/javascript">
    $(document).ready(function () {
        $('#shop-list').slimScroll({
            height: '300px',
            size: '10px',
            railVisible: true
        });

        $('#shop-info').slimScroll({
            height: '600px',
            size: '10px',
            railVisible: true
        });

        $('div.shop-item-box').on('click', function () {
            var id = $(this).attr('id');
            $('div.shop-item-box').removeClass("active");
            $(this).addClass("active");

            $.ajax({
                'success': function (data) {
                    //alert(data);
                    $("#shop-info").html(data);
                },
                'type': 'POST',
                'url': '<?php echo $this->createUrl('site/shopProduct'); ?>',
                'cache': false,
                'data': {
                    'shop_id': id,
                    'YII_CSRF_TOKEN': '<?php echo Yii::app()->request->csrfToken; ?>'
                }
            });
            return false;
        });
    });
</script>