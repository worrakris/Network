<?php

/**
 * This is the model class for table "tbl_bn_subscription".
 *
 * The followings are the available columns in table 'tbl_bn_subscription':
 * @property string $scb_email
 * @property string $scb_name
 * @property string $scb_status
 * @property string $scb_update
 */
class Subscription extends CActiveRecord {

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'tbl_bn_subscription';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('scb_email, scb_name', 'required'),
            array('scb_email, scb_name', 'length', 'max' => 250),
            array('scb_email', 'email'),
            array('scb_status', 'length', 'max' => 6),
            // The following rule is used by search().
            // @todo Please remove those attributes that should not be searched.
            array('scb_email, scb_name, scb_status', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'scb_email' => 'E-Mail Address',
            'scb_name' => 'Name',
            'scb_status' => 'Status',
            'scb_update' => 'Last Update',
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
    public function search() {
        // @todo Please modify the following code to remove attributes that should not be searched.

        $criteria = new CDbCriteria;

        $criteria->compare('scb_email', $this->scb_email, true);
        $criteria->compare('scb_name', $this->scb_name, true);
        $criteria->compare('scb_status', $this->scb_status, true);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    /**
     * Returns the static model of the specified AR class.
     * Please note that you should have this exact method in all your CActiveRecord descendants!
     * @param string $className active record class name.
     * @return Subscription the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

}
