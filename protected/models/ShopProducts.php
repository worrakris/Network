<?php

/**
 * This is the model class for table "shop_products".
 *
 * The followings are the available columns in table 'shop_products':
 * @property string $shop_product_id
 * @property integer $shop_id
 * @property string $products_id
 * @property string $shop_product_serial_key
 * @property string $rental_status
 * @property string $create_date
 * @property string $update_date
 */
class ShopProducts extends CActiveRecord {

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'shop_products';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('shop_id, products_id, shop_product_serial_key', 'required'),
            array('shop_id', 'numerical', 'integerOnly' => true),
            array('products_id', 'length', 'max' => 10),
            array('shop_product_serial_key', 'length', 'max' => 100),
            array('rental_status', 'length', 'max' => 6),
            array('create_date, update_date', 'safe'),
            // The following rule is used by search().
            // @todo Please remove those attributes that should not be searched.
            array('shop_product_id, shop_id, products_id, shop_product_serial_key, rental_status, create_date, update_date', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'product' => array(self::BELONGS_TO, 'Products', 'products_id'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'shop_product_id' => 'Shop Product',
            'shop_id' => 'Shop',
            'products_id' => 'Products',
            'shop_product_serial_key' => 'Shop Product Serial Key',
            'rental_status' => 'Rental Status',
            'create_date' => 'Create Date',
            'update_date' => 'Update Date',
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

        $criteria->compare('shop_product_id', $this->shop_product_id, true);
        $criteria->compare('shop_id', $this->shop_id);
        $criteria->compare('products_id', $this->products_id, true);
        $criteria->compare('shop_product_serial_key', $this->shop_product_serial_key, true);
        $criteria->compare('rental_status', $this->rental_status, true);
        $criteria->compare('create_date', $this->create_date, true);
        $criteria->compare('update_date', $this->update_date, true);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    /**
     * Returns the static model of the specified AR class.
     * Please note that you should have this exact method in all your CActiveRecord descendants!
     * @param string $className active record class name.
     * @return ShopProducts the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

}
