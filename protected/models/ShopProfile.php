<?php

/**
 * This is the model class for table "shop_profile".
 *
 * The followings are the available columns in table 'shop_profile':
 * @property string $shop_id
 * @property string $shop_name
 * @property string $shop_logo
 * @property string $shop_address
 * @property string $city_id
 * @property string $province_id
 * @property string $country_id
 * @property string $shop_tel
 * @property string $shop_fax
 * @property string $shop_email
 * @property string $shop_website
 * @property string $shop_description
 * @property string $shop_default_map
 * @property string $shop_map
 * @property string $shop_google_map
 * @property string $shop_cfg_opentime
 * @property string $shop_cfg_closetime
 * @property string $shop_opt_capacity
 * @property integer $shop_opt_creditcard
 * @property string $shop_opt_creditcard_desc
 * @property string $shop_opt_access
 * @property integer $shop_opt_parking
 * @property integer $shop_opt_private
 * @property integer $shop_opt_reservation
 * @property integer $shop_opt_smoking
 * @property string $shop_cfg_timezone
 * @property string $shop_cfg_default_language
 * @property string $shop_cfg_datetime_format
 * @property string $shop_cfg_currency
 * @property string $shop_cfg_daily_closebook
 * @property string $shop_cfg_daily_close_book_time
 * @property string $shop_create_date
 * @property string $shop_update_date
 * @property string $shop_status
 * @property string $creator_id
 */
class ShopProfile extends CActiveRecord {

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'shop_profile';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('shop_name, shop_email, shop_update_date, creator_id', 'required'),
            array('shop_opt_creditcard, shop_opt_parking, shop_opt_private, shop_opt_reservation, shop_opt_smoking', 'numerical', 'integerOnly' => true),
            array('shop_name, shop_logo, shop_email, shop_website, shop_map, shop_google_map', 'length', 'max' => 250),
            array('city_id, province_id, country_id, shop_default_map, shop_cfg_currency, creator_id', 'length', 'max' => 10),
            array('shop_tel, shop_fax', 'length', 'max' => 100),
            array('shop_opt_creditcard_desc', 'length', 'max' => 500),
            array('shop_cfg_timezone, shop_cfg_default_language', 'length', 'max' => 3),
            array('shop_cfg_datetime_format', 'length', 'max' => 50),
            array('shop_cfg_daily_closebook', 'length', 'max' => 6),
            array('shop_status', 'length', 'max' => 8),
            array('shop_address, shop_description, shop_cfg_opentime, shop_cfg_closetime, shop_opt_capacity, shop_opt_access, shop_cfg_daily_close_book_time, shop_create_date', 'safe'),
            // The following rule is used by search().
            // @todo Please remove those attributes that should not be searched.
            array('shop_id, shop_name, shop_logo, shop_address, city_id, province_id, country_id, shop_tel, shop_fax, shop_email, shop_website, shop_description, shop_default_map, shop_map, shop_google_map, shop_cfg_opentime, shop_cfg_closetime, shop_opt_capacity, shop_opt_creditcard, shop_opt_creditcard_desc, shop_opt_access, shop_opt_parking, shop_opt_private, shop_opt_reservation, shop_opt_smoking, shop_cfg_timezone, shop_cfg_default_language, shop_cfg_datetime_format, shop_cfg_currency, shop_cfg_daily_closebook, shop_cfg_daily_close_book_time, shop_create_date, shop_update_date, shop_status, creator_id', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'member' => array(self::HAS_ONE, 'Member', 'shop_id'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'shop_id' => 'Location ID',
            'shop_name' => 'Location Name',
            'shop_logo' => 'Logo',
            'shop_address' => 'Address',
            'city_id' => 'City',
            'province_id' => 'Province',
            'country_id' => 'Country',
            'shop_tel' => 'Telephone',
            'shop_fax' => 'Fax.',
            'shop_email' => 'E-Mail',
            'shop_website' => 'Website',
            'shop_description' => 'About Us',
            'shop_default_map' => 'Default Map',
            'shop_map' => 'Map',
            'shop_google_map' => 'Google Map',
            'shop_cfg_opentime' => 'Open Time',
            'shop_cfg_closetime' => 'Close Time',
            'shop_opt_capacity' => 'Capacity',
            'shop_opt_creditcard' => 'Have Credit Card?',
            'shop_opt_creditcard_desc' => 'Credit Card Description',
            'shop_opt_access' => 'How to access?',
            'shop_opt_parking' => 'Have parking lot?',
            'shop_opt_private' => 'Have private room?',
            'shop_opt_reservation' => 'Can make a reservation?',
            'shop_opt_smoking' => 'Have smoking area?',
            'shop_cfg_timezone' => 'Timezone',
            'shop_cfg_default_language' => 'Default Language',
            'shop_cfg_datetime_format' => 'Date/Time Format',
            'shop_cfg_currency' => 'Currency Sign',
            'shop_cfg_daily_closebook' => 'Daily closed book time',
            'shop_cfg_daily_close_book_time' => 'Closed book time',
            'shop_create_date' => 'Create Date',
            'shop_update_date' => 'Update on',
            'shop_status' => 'Location Status',
            'creator_id' => 'Creator',
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

        $criteria->compare('shop_id', $this->shop_id, true);
        $criteria->compare('shop_name', $this->shop_name, true);
        $criteria->compare('shop_logo', $this->shop_logo, true);
        $criteria->compare('shop_address', $this->shop_address, true);
        $criteria->compare('city_id', $this->city_id, true);
        $criteria->compare('province_id', $this->province_id, true);
        $criteria->compare('country_id', $this->country_id, true);
        $criteria->compare('shop_tel', $this->shop_tel, true);
        $criteria->compare('shop_fax', $this->shop_fax, true);
        $criteria->compare('shop_email', $this->shop_email, true);
        $criteria->compare('shop_website', $this->shop_website, true);
        $criteria->compare('shop_description', $this->shop_description, true);
        $criteria->compare('shop_default_map', $this->shop_default_map, true);
        $criteria->compare('shop_map', $this->shop_map, true);
        $criteria->compare('shop_google_map', $this->shop_google_map, true);
        $criteria->compare('shop_cfg_opentime', $this->shop_cfg_opentime, true);
        $criteria->compare('shop_cfg_closetime', $this->shop_cfg_closetime, true);
        $criteria->compare('shop_opt_capacity', $this->shop_opt_capacity, true);
        $criteria->compare('shop_opt_creditcard', $this->shop_opt_creditcard);
        $criteria->compare('shop_opt_creditcard_desc', $this->shop_opt_creditcard_desc, true);
        $criteria->compare('shop_opt_access', $this->shop_opt_access, true);
        $criteria->compare('shop_opt_parking', $this->shop_opt_parking);
        $criteria->compare('shop_opt_private', $this->shop_opt_private);
        $criteria->compare('shop_opt_reservation', $this->shop_opt_reservation);
        $criteria->compare('shop_opt_smoking', $this->shop_opt_smoking);
        $criteria->compare('shop_cfg_timezone', $this->shop_cfg_timezone, true);
        $criteria->compare('shop_cfg_default_language', $this->shop_cfg_default_language, true);
        $criteria->compare('shop_cfg_datetime_format', $this->shop_cfg_datetime_format, true);
        $criteria->compare('shop_cfg_currency', $this->shop_cfg_currency, true);
        $criteria->compare('shop_cfg_daily_closebook', $this->shop_cfg_daily_closebook, true);
        $criteria->compare('shop_cfg_daily_close_book_time', $this->shop_cfg_daily_close_book_time, true);
        $criteria->compare('shop_create_date', $this->shop_create_date, true);
        $criteria->compare('shop_update_date', $this->shop_update_date, true);
        $criteria->compare('shop_status', $this->shop_status, true);
        $criteria->compare('creator_id', $this->creator_id, true);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    /**
     * Returns the static model of the specified AR class.
     * Please note that you should have this exact method in all your CActiveRecord descendants!
     * @param string $className active record class name.
     * @return ShopProfile the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

}
