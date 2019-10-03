<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "detail_order".
 *
 * @property int $id
 * @property int $product_id
 * @property int $order_product_id
 * @property int $amount
 */
class DetailOrder extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'detail_order';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['product_id', 'order_product_id','amount'], 'required'],
            [['product_id', 'order_product_id','amount'], 'integer'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'product_id' => 'Sản phẩm ',
            'order_product_id' => 'Đơn hàng',
            'amount' => 'Số lượng',
        ];
    }
    public function getProducts(){
        return $this->hasOne(Products::className(), ['id' => 'product_id']);
    }
}
