<?php

/**
 * This is the model class for table "tbl_bn_banner".
 *
 * The followings are the available columns in table 'tbl_bn_banner':
 * @property string $banner_id
 * @property string $banner_caption_en
 * @property string $banner_caption_local
 * @property string $banner_detail_en
 * @property string $banner_detail_local
 * @property string $banner_image
 * @property string $banner_link
 * @property string $banner_update_date
 * @property string $banner_status
 */
class Banner extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'tbl_bn_banner';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('banner_caption_en, banner_caption_local, banner_image, banner_update_date', 'required'),
			array('banner_caption_en, banner_caption_local, banner_image, banner_link', 'length', 'max'=>250),
			array('banner_status', 'length', 'max'=>8),
			array('banner_detail_en, banner_detail_local', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('banner_id, banner_caption_en, banner_caption_local, banner_detail_en, banner_detail_local, banner_image, banner_link, banner_update_date, banner_status', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'banner_id' => 'Banner',
			'banner_caption_en' => 'Banner Caption En',
			'banner_caption_local' => 'Banner Caption Local',
			'banner_detail_en' => 'Banner Detail En',
			'banner_detail_local' => 'Banner Detail Local',
			'banner_image' => 'Banner Image',
			'banner_link' => 'Banner Link',
			'banner_update_date' => 'Banner Update Date',
			'banner_status' => 'Banner Status',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 *
	 * Typical usecase:
	 * - Initialize the model fields with values from filter form.
	 * - Execute this method to get CActiveDataProvider instance which will filter
	 * models according to data in model fields.
	 * - Pass data provider to CGridView, CListView or any similar widget.
	 *
	 * @return CActiveDataProvider the data provider that can return the models
	 * based on the search/filter conditions.
	 */
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('banner_id',$this->banner_id,true);
		$criteria->compare('banner_caption_en',$this->banner_caption_en,true);
		$criteria->compare('banner_caption_local',$this->banner_caption_local,true);
		$criteria->compare('banner_detail_en',$this->banner_detail_en,true);
		$criteria->compare('banner_detail_local',$this->banner_detail_local,true);
		$criteria->compare('banner_image',$this->banner_image,true);
		$criteria->compare('banner_link',$this->banner_link,true);
		$criteria->compare('banner_update_date',$this->banner_update_date,true);
		$criteria->compare('banner_status',$this->banner_status,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Banner the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
