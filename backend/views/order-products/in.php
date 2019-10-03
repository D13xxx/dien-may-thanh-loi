<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\OrderProducts */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Order Products', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
$this->registerJsFile(
    Yii::$app->request->baseUrl . '/css/printreport.css'
);
$Script = <<< JS
     function printDiv(divName) {
     var printContents = document.getElementById(divName).innerHTML;
     var originalContents = document.body.innerHTML;

     document.body.innerHTML = printContents;

     window.print();

     document.body.innerHTML = originalContents;
}
JS;
$this->registerJs($Script, \yii\web\View::POS_READY);
?>
<style>
    table{
        width: 100%;
        border:1px solid #0c5460;
    }
    table th,td {
        text-align: left;
        padding: 5px 0px;
    }
    .text-center{
        text-align: center;
    }
</style>
<div id="printableArea">
    <div class="info">
        <p>Họ tên người mua hàng : <?= ucwords($model->full_name)?></p>
        <p>Địa chỉ : <?= ucwords($model->address)?></p>
        <p>Số điện thoại : <?= 0 .ucwords($model->cell_phone)?></p>
        <p>Email : <?= ucwords($model->email)?></p>


        <table class="table table-boder">
            <h3 class="text-center">THÔNG TIN ĐƠN HÀNG</h3>
            <tr>
                <th>STT</th>
                <th>Tên hàng hóa, dịch vụ</th>
                <th>Số lượng</th>
                <th>Đơn giá</th>
                <th>Thành tiền</th>
            </tr>

            <?php
            if (!empty($detaiOrders)){
                $i = 1;
                foreach ($detaiOrders as $detaiOrder){ ?>
                    <tr>
                        <td><?= $i++ ?></td>
                        <td><?= ucwords($detaiOrder->products->full_name)?></td>
                        <td>1</td>
                        <td> <?= number_format($detaiOrder->products->price)?></td>
                        <td><?=
                            number_format($detaiOrder->products->price * 1 )
                            ?>
                        </td>
                    </tr>
                <?php }
            }
            ?>
        </table>
    </div>
</div>

<input type="button" onclick="printDiv('printableArea')" class="btn" value="In chi tiết" />
