<style>
    .product-item-list {
        width: 100%;
        display: inline-block;
        text-align: center
    }

    .product-item-box {
        position: relative;
        padding: 5px;
        margin: 8px;
        border: #888 solid thin;
        border-radius: 5px;
        //width: 20%;
        min-width: 280px;
        min-height: 300px;
        //height: 120px;
        background-color: whitesmoke;
        float: left;
        display: inline-block;
    }

    .product_image {
        position: relative;
        padding: 20px;
    }

    .product-box {
        padding: 0px 20px;
        text-align: center;
    }

    .cancel_box {
        position: absolute;
        min-width: 30px;
        min-height: 30px;
        top: 5px;
        right: 5px;
        color: #888;
    }

    .shop-address-box {
        padding: 0px 20px;
        font-family: Arial;
        font-size: 1.4rem;
        text-align: left;
    }

</style>

<?php
if ($shop_id[0] === 'S') {
    $shop_id = substr($shop_id, 2);
}
$criteria = new CDbCriteria();
$criteria->select = 'shop_name, shop_address, city_id, shop_tel, shop_fax, shop_email, shop_status';
$criteria->condition = 'shop_id = ' . $shop_id;
$shopInfo = ShopProfile::model()->find($criteria);

$productInfo = ShopProducts::model()->with('product')->findAllByAttributes(array('shop_id' => $shop_id));
$cntProduct = count($productInfo);
?>
<!--<pre>
<?php //print_r($productInfo); ?>
</pre>-->
<div class="product-box">
    <div align="left" class="txt__home-sub-head">
        <?php echo $shopInfo->shop_name; ?>
        <span style="float: right;">
            <a href="#" class="link-button"><span class="glyphicon glyphicon-plus-sign"></span>&nbsp;&nbsp;<?php echo Yii::t('myoffice', 'btn_orderlist'); ?></a>
        </span>

        <span style="margin-right: 10px; float: right;">
            <a href="#" class="link-button"><span class="glyphicon glyphicon-list-alt"></span>&nbsp;&nbsp;<?php echo Yii::t('myoffice', 'btn_orderproduct'); ?></a>
        </span>
    </div>

    <br/>
    <div class="shop-address-box">
        mnfisdflaksdfls;
    </div>
    <br/>
    <div class="product-item-list">
        <?php for ($ndx = 0; $ndx < $cntProduct; $ndx++) { ?>
            <div class="product-item-box">
                <div class="cancel_box"><span class="fa fa-times-circle-o fa-3x"></span></div>
                <p><img src="<?php echo Yii::app()->baseUrl . "/images/site/" . $productInfo[$ndx]['product']['products_id'] . ".png"; ?>" class="product_image" /></p>
                <p style="font-size:2rem; font-weight: bold;">
                    <?php
                    if (Yii::app()->language === 'en') {
                        echo $productInfo[$ndx]['product']['product_name_en'];
                    } else {
                        echo $productInfo[$ndx]['product']['product_name_local'];
                    }
                    ?>
                </p>
                <p>
                <div class="status_box">
                    <?php
                    switch ($productInfo[$ndx]->rental_status) {
                        case "Wait":
                            ?>
                            <div class="yellow_circle"></div><div style="float:right; line-height: 30px; margin-left: 5px;"><?php echo Yii::t('myoffice', 'label_waiting'); ?></div>
                            <?php
                            break;
                        case "Active":
                            ?>
                            <div class="green_circle"></div><div style="float:right; line-height: 30px; margin-left: 5px;"><?php echo Yii::t('myoffice', 'label_active'); ?></div>
                            <?php
                            break;
                        case "Cancel":
                            ?>
                            <div class="red_circle"></div><div style="float:right; line-height: 30px; margin-left: 5px;"><?php echo Yii::t('myoffice', 'label_Inactive'); ?></div>
                            <?php
                            break;
                        case "Expire":
                            ?>
                            <div class="orange_circle"></div><div style="float:right; line-height: 30px; margin-left: 5px;"><?php echo Yii::t('myoffice', 'label_expired'); ?></div>
                        <?php } ?>
                </div>
                </p>
                <p>
                    <?php echo Yii::t('myoffice', 'label_expired_date') . ": " . date("m/d/Y", strtotime($productInfo[$ndx]->expire_date)); ?>
                </p>
            </div>
        <?php } ?>
    </div>
</div>