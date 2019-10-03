<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "order_products".
 *
 * @property int $id
 * @property string $full_name
 * @property string $address
 * @property int $cell_phone
 * @property string $email
 * @property string $descripsion
 * @property double $created_at
 * @property double $total
 */
class OrderProducts extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'order_products';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['full_name', 'address', 'cell_phone', 'email', 'descripsion'], 'required'],
            [['cell_phone','created_at'], 'integer'],
            [['total'], 'safe'],
            [['full_name', 'address', 'email', 'descripsion'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'full_name' => 'Họ và tên',
            'address' => 'Địa chỉ',
            'cell_phone' => 'Số điện thoại',
            'email' => 'Email',
            'descripsion' => 'Mô tả ',
            'created_at' => 'Ngày đặt hàng',
            'total' => 'Tổng hóa đơn',
        ];
    }
}
