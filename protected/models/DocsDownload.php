<?php

/**
 * This is the model class for table "docs_download".
 *
 * The followings are the available columns in table 'docs_download':
 * @property string $docs_download_id
 * @property string $docs_download_title
 * @property string $docs_download_desc
 * @property string $docs_download_file
 * @property string $docs_download_create_date
 * @property string $docs_download_expire_date
 */
class DocsDownload extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'docs_download';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('docs_download_title, docs_download_file', 'length', 'max'=>255),
			array('docs_download_desc, docs_download_create_date, docs_download_expire_date', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('docs_download_id, docs_download_title, docs_download_desc, docs_download_file, docs_download_create_date, docs_download_expire_date', 'safe', 'on'=>'search'),
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
			'docs_download_id' => 'Docs Download',
			'docs_download_title' => 'Docs Download Title',
			'docs_download_desc' => 'Docs Download Desc',
			'docs_download_file' => 'Docs Download File',
			'docs_download_create_date' => 'Docs Download Create Date',
			'docs_download_expire_date' => 'Docs Download Expire Date',
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

		$criteria->compare('docs_download_id',$this->docs_download_id,true);
		$criteria->compare('docs_download_title',$this->docs_download_title,true);
		$criteria->compare('docs_download_desc',$this->docs_download_desc,true);
		$criteria->compare('docs_download_file',$this->docs_download_file,true);
		$criteria->compare('docs_download_create_date',$this->docs_download_create_date,true);
		$criteria->compare('docs_download_expire_date',$this->docs_download_expire_date,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return DocsDownload the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
