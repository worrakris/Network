<style>
    .profile_img {
        position: relative;
        display: inline-block; /* added */
        overflow: hidden; /* added */
    }

    .profile_img img {
        padding: 3px;
        border: #A5A5A5 double thin;
        width: 128px;
        height: 128px;
    }

    .profile_img span {

    }

    .profile-img-container {
        position: relative;
        display: inline-block; /* added */
        overflow: hidden; /* added */
    }

    .profile-img-container img {
        padding: 3px;
        border: #A5A5A5 double thin;
        width: 128px;
        height: 128px;
    } /* remove if using in grid system */

    .profile-img-container img:hover {
        opacity: 0.5
    }
    .profile-img-container:hover a {
        opacity: 1; /* added */
        top: 0; /* added */
        z-index: 500;
    }
    /* added */
    .profile-img-container:hover a span {
        top: 50%;
        position: absolute;
        left: 0;
        right: 0;
        transform: translateY(-50%);
    }
    /* added */
    .profile-img-container a {
        display: block;
        position: absolute;
        top: -100%;
        opacity: 0.5;
        left: 0;
        bottom: 0;
        right: 0;
        text-align: center;
        color: inherit;
    }

    hr {
        display: block;
        height: 2px;
        border: 0;
        border-top: 1px solid #ccc;
        margin: 1em 0;
        padding: 0;
    }

    .comm_box {
        padding: 3px;
        //display: inline-block;
        text-align: center;
        position: relative;
    }

    .img_comm {
        position: absolute;
        top: 0;
        left: 0;
    }

    .comm_container {
        position: relative;
        top: 0;
        left: 0;
        width: 300px;
        height: 300px;
    }

</style>

<?php
$member = Member::model()->findByPk(Yii::app()->user->id);
$upline = MemberRelationship::model()->findByAttributes(array(
    'member_id' => Yii::app()->user->id,
        ));
if (!empty($upline)) {
    $father = Member::model()->findByPk($upline->parent_id);
}

$criteria = new CDbCriteria();
$criteria->select = 'member_id';
$criteria->condition = 'parent_id = ' . Yii::app()->user->id;
$child = MemberRelationship::model()->findAll($criteria);
$cntChild = count($child);

$cntGrandChild = 0;
if ($cntChild > 0) {
    $parentList = array();
    for ($lst = 0; $lst < $cntChild; $lst++) {
        array_push($parentList, $child[$lst]->member_id);
    }

    $grandChild = MemberRelationship::model()->findAllByAttributes(array(
        'parent_id' => $parentList,
    ));
    $cntGrandChild = count($grandChild);
}
$ep_value = 500;
$comm_cpv = 1300;
$comm_apx_cpv = 1650;
?>

<section id="my_commission">
    <div class="profile_box row">
        <div class="col-lg-3 col-md-3 col-sm-1" style="text-align: center">
            <div class="profile-img-container">
                <?php if (!empty($member->member_pic_profile)) { ?>
                    <img src="<?php echo Yii::app()->baseUrl . "/images/member/m" . Yii::app()->user->id . "/profile/" . Yii::app()->user->picture; ?>" class="img-thumbnail img-responsive img-polaroid" />
                <?php } else { ?>

                <?php } ?>
                <a href="#"><span class="fa fa-camera fa-2x fa-inverse"></span></a>
            </div>
        </div>
        <div class="col-lg-8 col-md-8 col-sm-1">
            <table>
                <tr>
                    <td><strong><?php echo Yii::t('myoffice', 'label_member_name'); ?>:&nbsp;</strong></td>
                    <td>
                        <?php
                        echo $member->member_firstname . " " . $member->member_middlename . " " . $member->member_lastname;
                        ?>
                    </td>
                </tr>
                <tr>
                    <td><strong><?php echo Yii::t('myoffice', 'label_member_company'); ?>:&nbsp;</strong></td>
                    <td>
                        <?php
                        echo $member->member_company_name;
                        ?>
                    </td>
                </tr>
                <tr>
                    <td><strong><?php echo Yii::t('myoffice', 'label_member_upline'); ?>:&nbsp;</strong></td>
                    <td>
                        <?php
                        if (!empty($upline)) {
                            echo $father->member_firstname . " " . $father->member_middlename . " " . $father->member_lastname;
                        } else {
                            echo "N/A";
                        }
                        ?>
                    </td>
                </tr>
                <tr>
                    <td><strong><?php echo Yii::t('myoffice', 'label_member_status'); ?>:&nbsp;</strong></td>
                    <td>
                        <div class="status_box">
                            <?php if ($member->member_status === "Active") { ?>
                                <div class="green_circle"></div><div style="float:right; line-height: 30px; margin-left: 5px;"><?php echo Yii::t('myoffice', 'label_active'); ?></div>
                            <?php } else { ?>
                                <div class="red_circle"></div><div style="float:right; line-height: 30px; margin-left: 5px;"><?php echo Yii::t('myoffice', 'label_Inactive'); ?></div>
                            <?php } ?>
                        </div>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <hr>
    <div class="profile_box row">
        <div align="left" class="txt__home-sub-head"><?php echo Yii::t('myoffice', 'title_commission'); ?></div>
        <br/>
        <div class="row" style="width: 100%; display: inline-block; text-align: center">
            <div style="width: 90%; display: inline-block; text-align: center; position: relative">
                <div class="col-lg-4 col-md-4 col-sm-1 comm_box">
                    <div class="comm_container">
                        <img src="<?php echo Yii::app()->baseUrl . "/images/site/ep_box.png"; ?>" class="img_comm" />
                        <img src="<?php echo Yii::app()->baseUrl . "/images/site/ep-red.png"; ?>" style="position: absolute; top: 70px; left: 97px; z-index: 99" />
                        <div style="position: absolute; top: 70px; left: 97px; line-height: 124px; width: 112px; z-index: 100; font-size: 4.5rem; color: #FFF;">EP</div>
                        <div style="position: absolute; top: 165px; left: 97px; line-height: 124px; width: 112px; z-index: 101; font-size: 4.5rem; color: #FFF; font-weight: bold"><?php echo number_format($ep_value); ?></div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-1 comm_box">
                    <div class="comm_container">
                        <img src="<?php echo Yii::app()->baseUrl . "/images/site/desc_box.png"; ?>" class='img_comm' />
                        <div style="position: absolute; top: 20px; left: 0; text-align: center;  line-height: 124px; width: 300px; z-index: 100; font-size: 2.5rem; color: #FFF;"><?php echo Yii::t('myoffice', 'msg_commission'); ?></div>
                        <div style="position: absolute; top: 65px; left: 0px; text-align: center;  line-height: 124px; width: 300px; z-index: 101; font-size: 2.5rem; color: #FFF;"><?php echo number_format($comm_cpv); ?> <span style="font-size: 1.5rem">CPV</span></div>
                        <div style="position: absolute; top: 120px; left: 0; text-align: center;  line-height: 124px; width: 300px; z-index: 100; font-size: 1.5rem; color: #FFF;"><?php echo Yii::t('myoffice', 'msg_commission_appx'); ?></div>
                        <div style="position: absolute; top: 165px; left: 0px; text-align: center;  line-height: 124px; width: 300px; z-index: 101; font-size: 2.5rem; color: #FFF;"><?php echo number_format($comm_apx_cpv); ?> <span style="font-size: 1.5rem">CPV</span></div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-1 comm_box">
                    <div class="comm_container">
                        <img src="<?php echo Yii::app()->baseUrl . "/images/site/desc_box.png"; ?>" class="img_comm" />
                        <div style="position: absolute; top: 20px; left: 0; text-align: center;  line-height: 124px; width: 300px; z-index: 100; font-size: 2.5rem; color: #FFF;"><?php echo Yii::t('myoffice', 'msg_total_child'); ?></div>
                        <div style="position: absolute; top: 65px; left: 0px; text-align: center;  line-height: 124px; width: 300px; z-index: 101; font-size: 2.5rem; color: #FFF;"><?php echo $cntChild; ?></div>
                        <div style="position: absolute; top: 120px; left: 0; text-align: center;  line-height: 124px; width: 300px; z-index: 100; font-size: 2.5rem; color: #FFF;"><?php echo Yii::t('myoffice', 'msg_total_grand'); ?></div>
                        <div style="position: absolute; top: 165px; left: 0px; text-align: center;  line-height: 124px; width: 300px; z-index: 101; font-size: 2.5rem; color: #FFF;"><?php echo $cntGrandChild; ?></div>
                    </div>
                </div>
            </div>
        </div>
        <hr>
        <div align="left" class="txt__home-sub-head">
            <?php echo Yii::t('myoffice', 'title_commission_report'); ?>
            <span style="float: right;">
                <?php
                $viewType = "Monthly";
                echo CHtml::dropDownList('commViewType', '', array('Monthly' => 'Monthly', 'Yearly' => 'Yearly'), array(
                    'class' => '',
                    'ajax' => array(
                        'type' => 'POST',
                        'url' => Yii::app()->createUrl('site/commissionHistory'), //or $this->createUrl('loadcities') if '$this' extends CController
                        'update' => '#comm_history', //or 'success' => 'function(data){...handle the data in the way you want...}',
                        'data' => array('viewType' => 'js:this.value', 'YII_CSRF_TOKEN' => Yii::app()->request->csrfToken),
                )));
                ?>
            </span>
        </div>
        <br/>

        <div id="comm_history">
            <?php $this->renderPartial("_commission_history", array('viewType' => $viewType)); ?>
        </div>
    </div>
</section>