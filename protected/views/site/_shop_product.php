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
        min-width: 130px;
        //height: 120px;
        background-color: whitesmoke;
        float: left;
        display: inline-block;
    }

    .product_image {
        position: relative;
        padding: 20px;
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
<pre>
    <?php print_r($productInfo); ?>
</pre>
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

<div class="product-item-list">
    <div class="product-item-box">
        <img src="<?php echo Yii::app()->baseUrl . "/images/site/1.png"; ?>" class="product_image" />
    </div>
    <div class="product-item-box"></div>
    <div class="product-item-box"></div>
    <div class="product-item-box"></div>
    <div class="product-item-box"></div>
    <div class="product-item-box"></div>
    <div class="product-item-box"></div>
</div>
<?php
echo $shop_id
?>