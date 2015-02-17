<?php

/**
 * This is the model class for table "tbl_signup_info".
 *
 * The followings are the available columns in table 'tbl_signup_info':
 * @property integer $signup_id
 * @property string $signup_firstname
 * @property string $signup_lastname
 * @property string $signup_email
 * @property string $signup_mobile
 * @property string $signup_birthday
 * @property string $signup_username
 * @property string $signup_password
 * @property string $signup_repassword
 * @property string $signup_code
 * @property string $signup_date
 * @property string $signup_status
 */
class SignupInfo extends CActiveRecord {

    /**
     * @return string the associated database table name
     */
    public $signup_repassword;
    
    public function tableName() {
        return 'tbl_signup_info';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('signup_birthday, signup_firstname, signup_lastname, signup_email, signup_mobile, signup_username, signup_password, signup_repassword', 'required'),
            array('signup_firstname, signup_lastname, signup_email', 'length', 'max' => 250),
            array('signup_mobile', 'length', 'max' => 100),
            array('signup_password, signup_repassword', 'length', 'min' => 6, 'max' => 100),
            array('signup_password', 'match', 'pattern' => '/^(?=.*\d.*\d)[0-9A-Za-z!@#$%*]{6,}$/'),
            array('signup_repassword', 'compare', 'compareAttribute'=>'signup_password'),
            array('signup_username', 'length', 'max' => 20),
            array('signup_code', 'length', 'max' => 10),
            array('signup_status', 'length', 'max' => 9),
            array('signup_birthday', 'safe'),
            //array('signup_email', 'unique'),
            array('signup_email', 'email'),
            // The following rule is used by search().
            // @todo Please remove those attributes that should not be searched.
            array('signup_id, signup_firstname, signup_lastname, signup_email, signup_mobile, signup_birthday, signup_username, signup_password, signup_code, signup_date, signup_status', 'safe', 'on' => 'search'),
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
            'signup_id' => Yii::t('home', 'signup_id'),
            'signup_firstname' => Yii::t('home', 'signup_firstname'),
            'signup_lastname' => Yii::t('home', 'signup_lastname'),
            'signup_email' => Yii::t('home', 'signup_email'),
            'signup_mobile' => Yii::t('home', 'signup_mobile'),
            'signup_birthday' => Yii::t('home', 'signup_birthday'),
            'signup_username' => Yii::t('home', 'signup_username'),
            'signup_password' => Yii::t('home', 'signup_password'),
            'signup_repassword' => Yii::t('home', 'signup_repassword'),
            'signup_code' => Yii::t('home', 'signup_code'),
            'signup_date' => Yii::t('home', 'signup_date'),
            'signup_status' => Yii::t('home', 'signup_status'),
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

        $criteria->compare('signup_id', $this->signup_id);
        $criteria->compare('signup_firstname', $this->signup_firstname, true);
        $criteria->compare('signup_lastname', $this->signup_lastname, true);
        $criteria->compare('signup_email', $this->signup_email, true);
        $criteria->compare('signup_mobile', $this->signup_mobile, true);
        $criteria->compare('signup_birthday', $this->signup_birthday, true);
        $criteria->compare('signup_username', $this->signup_username, true);
        $criteria->compare('signup_password', $this->signup_password, true);
        $criteria->compare('signup_code', $this->signup_code, true);
        $criteria->compare('signup_date', $this->signup_date, true);
        $criteria->compare('signup_status', $this->signup_status, true);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    /**
     * Returns the static model of the specified AR class.
     * Please note that you should have this exact method in all your CActiveRecord descendants!
     * @param string $className active record class name.
     * @return SignupInfo the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

}
