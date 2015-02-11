<?php

/**
 * This is the model class for table "tbl_bn_news".
 *
 * The followings are the available columns in table 'tbl_bn_news':
 * @property string $news_id
 * @property string $news_title_local
 * @property string $news_title_en
 * @property string $news_content_local
 * @property string $news_content_en
 * @property string $news_picture
 * @property string $news_create_date
 * @property string $news_expire_date
 * @property string $news_update_date
 * @property string $news_status
 * @property string $news_creator
 */
class News extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'tbl_bn_news';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('news_title_local, news_title_en, news_content_local, news_content_en, news_picture, news_update_date, news_creator', 'required'),
			array('news_title_local, news_title_en, news_picture', 'length', 'max'=>250),
			array('news_status', 'length', 'max'=>8),
			array('news_creator', 'length', 'max'=>10),
			array('news_create_date, news_expire_date', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('news_id, news_title_local, news_title_en, news_content_local, news_content_en, news_picture, news_create_date, news_expire_date, news_update_date, news_status, news_creator', 'safe', 'on'=>'search'),
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
			'news_id' => 'News',
			'news_title_local' => 'News Title Local',
			'news_title_en' => 'News Title En',
			'news_content_local' => 'News Content Local',
			'news_content_en' => 'News Content En',
			'news_picture' => 'News Picture',
			'news_create_date' => 'News Create Date',
			'news_expire_date' => 'News Expire Date',
			'news_update_date' => 'News Update Date',
			'news_status' => 'News Status',
			'news_creator' => 'News Creator',
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

		$criteria->compare('news_id',$this->news_id,true);
		$criteria->compare('news_title_local',$this->news_title_local,true);
		$criteria->compare('news_title_en',$this->news_title_en,true);
		$criteria->compare('news_content_local',$this->news_content_local,true);
		$criteria->compare('news_content_en',$this->news_content_en,true);
		$criteria->compare('news_picture',$this->news_picture,true);
		$criteria->compare('news_create_date',$this->news_create_date,true);
		$criteria->compare('news_expire_date',$this->news_expire_date,true);
		$criteria->compare('news_update_date',$this->news_update_date,true);
		$criteria->compare('news_status',$this->news_status,true);
		$criteria->compare('news_creator',$this->news_creator,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return News the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
