<style>
    .red_circle {
        width: 30px;
        height: 30px;
        border-radius: 15px;
        background-color: red;
        border: 4px solid #FF7A7A;
    }

    .green_circle {
        width: 30px;
        height: 30px;
        border-radius: 15px;
        background-color: #70FF00;
        border: 4px solid #64C32F;
    }

    .status_box {
        background-color: #C3C3C3;
        border: 2px solid #A5A5A5;
        float: left;
        font-size: 1.8rem;
        font-weight: bold;
        display: inline-block;
    }

    .profile_box {
        padding: 5px 10px;
        //border-radius: 10px;
        //border: #A5A5A5 solid 2px;
        margin: 10px;
    }

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
</style>

<?php
?>

<section id="my_commission">
    <div class="profile_box row">
        <div class="col-lg-3 col-md-3 col-sm-3">
            <div class="profile-img-container">
                <img src="<?php echo Yii::app()->baseUrl . "/images/member/m" . Yii::app()->user->id . "/profile/" . Yii::app()->user->picture; ?>" class="img-thumbnail img-responsive img-polaroid" />
                <a href="#"><span class="fa fa-camera fa-2x fa-inverse"></span></a>
            </div>
        </div>
        <div class="col-lg-8 col-md-8 col-sm-8">

        </div>
    </div>
</section>