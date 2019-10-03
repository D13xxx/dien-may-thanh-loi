<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\OrderProducts */

$this->title = 'Thông tin chi tiết đơn hàng.';
$this->params['breadcrumbs'][] = ['label' => 'Order Products', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);

?>
<div class="panel panel-default">
    <div class="panel-body">
        <h2>THÔNG TIN CHI TIẾT ĐƠN HÀNG</h2>
        <!-- INVOICE -->
        <div class="invoice">
            <div class="row">
                <div class="col-md-3">

                    <div class="invoice-address">
                        <h5>Tên khách hàng</h5>
                        <h6><?= ucwords($model->full_name)?></h6>
                    </div>

                </div>
                <div class="col-md-3">
                    <div class="invoice-address">
                        <h5>Email</h5>
                        <h6><?= ucwords($model->email)?></h6>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="invoice-address">
                        <h5>Số điện thoại</h5>
                        <h6><?= ucwords($model->cell_phone)?></h6>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="invoice-address">
                        <h5>Địa chỉ</h5>
                        <h6><?= ucwords($model->address)?></h6>
                    </div>
                </div>
            </div>

            <div class="table-invoice">
                <table class="table">
                    <tbody><tr>
                        <th class="text-center">Stt</th>
                        <th class="text-center">Ảnh sản phẩm</th>
                        <th class="text-center">Tên sản phẩm</th>
                        <th class="text-center">Giá bán</th>
                        <th class="text-center">Số lượng</th>
                        <th class="text-center">Thành tiền</th>
                    </tr>
                    <?php
                    if(!empty($detaiOrders)){
                        $i= 1;
                        foreach ($detaiOrders as $detaiOrder){ ?>
                            <tr>
                                <td><?= $i++ ?></td>
                                <td>
                                    <img src="<?= Yii::getAlias('@fakelink/products/'.$detaiOrder->products->avatar)?>" style="width: 100px;" alt="">
                                </td>
                                <td>
                                    <strong><?= ucwords($detaiOrder->products->full_name)?></strong>
                                </td>
                                <td class="text-center"><?= number_format($detaiOrder->products->price) ?></td>
                                <td class="text-center">1</td>
                                <td class="text-center"><?= number_format($detaiOrder->products->price * 1) ?></td>
                            </tr>
                        <?php }
                    }
                    ?>

                    </tbody>
                </table>
            </div>
            <div class="row">
                <table class="table table-striped">
                    <tbody>
                        <tr class="total">
                            <td>Tổng tiền:</td><td class="text-right"><?= $model->total ?  number_format($model->total) : 0?> VND</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- END INVOICE -->
    </div>
    <div class="panel-footer">
        <?= Html::a('Quay lại',['index'],['class'=>'btn btn-default pull-right'])?>
    </div>
</div>
