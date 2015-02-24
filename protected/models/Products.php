<?php

/**
 * This is the model class for table "products".
 *
 * The followings are the available columns in table 'products':
 * @property string $products_id
 * @property string $product_name_local
 * @property string $product_name_en
 * @property string $product_description
 * @property double $product_price
 * @property integer $product_EP
 * @property integer $product_son_CPV
 * @property integer $product_grand_son_CPV
 * @property string $product_create_date
 * @property string $product_update_date
 * @property string $product_status
 */
class Products extends CActiveRecord {

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'products';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('product_update_date', 'required'),
            array('product_EP, product_son_CPV, product_grand_son_CPV', 'numerical', 'integerOnly' => true),
            array('product_price', 'numerical'),
            array('product_name_local, product_name_en', 'length', 'max' => 255),
            array('product_status', 'length', 'max' => 8),
            array('product_description, product_create_date', 'safe'),
            // The following rule is used by search().
            // @todo Please remove those attributes that should not be searched.
            array('products_id, product_name_local, product_name_en, product_description, product_price, product_EP, product_son_CPV, product_grand_son_CPV, product_create_date, product_update_date, product_status', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'rental' => array(self::HAS_MANY, 'ShopProducts', 'products_id'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'products_id' => 'Products',
            'product_name_local' => 'Product Name Local',
            'product_name_en' => 'Product Name En',
            'product_description' => 'Product Description',
            'product_price' => 'Product Price',
            'product_EP' => 'Product Ep',
            'product_son_CPV' => 'Product Son Cpv',
            'product_grand_son_CPV' => 'Product Grand Son Cpv',
            'product_create_date' => 'Product Create Date',
            'product_update_date' => 'Product Update Date',
            'product_status' => 'Product Status',
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

        $criteria->compare('products_id', $this->products_id, true);
        $criteria->compare('product_name_local', $this->product_name_local, true);
        $criteria->compare('product_name_en', $this->product_name_en, true);
        $criteria->compare('product_description', $this->product_description, true);
        $criteria->compare('product_price', $this->product_price);
        $criteria->compare('product_EP', $this->product_EP);
        $criteria->compare('product_son_CPV', $this->product_son_CPV);
        $criteria->compare('product_grand_son_CPV', $this->product_grand_son_CPV);
        $criteria->compare('product_create_date', $this->product_create_date, true);
        $criteria->compare('product_update_date', $this->product_update_date, true);
        $criteria->compare('product_status', $this->product_status, true);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    /**
     * Returns the static model of the specified AR class.
     * Please note that you should have this exact method in all your CActiveRecord descendants!
     * @param string $className active record class name.
     * @return Products the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

}
