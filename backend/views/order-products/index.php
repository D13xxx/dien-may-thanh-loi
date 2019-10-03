<?php

use common\models\query\CatProductsQuery;
use yii\data\ActiveDataProvider;
use yii\helpers\Html;
use yii\grid\GridView;
use yii\helpers\Url;

/* @var $this yii\web\View */
/* @var $searchModel common\models\query\CatProductsQuery */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('backend', 'Nhóm sản phẩm');
$this->params['breadcrumbs'][] = $this->title;
$this->registerJsFile(
    Yii::$app->request->baseUrl . '/js/jquery.timeago.js',
    ['depends' => ['\yii\web\JqueryAsset']]
);
$this->registerJs("jQuery('abbr.timeago').timeago();", \yii\web\View::POS_READY);
?>
<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title">DANH SÁCH ĐƠN HÀNG</h3>
    </div>
    <div class="panel-body">
        <div class="table-responsive">
            <table id="customers2" class="table datatable">
                <thead>
                <tr>
                    <th>Họ và tên</th>
                    <th>Địa chỉ</th>
                    <th>Số điện thoại</th>
                    <th>Email</th>
                    <th>Ngày mua hàng</th>
                    <th>Chức năng</th>
                </tr>
                </thead>
                <tbody>
                    <?php
                    if (!empty($orderProducts)){
                        foreach ($orderProducts as $orderProduct){ ?>
                            <tr>
                                <td><?= ucwords($orderProduct->full_name)?></td>
                                <td><?= ucwords($orderProduct->address)?></td>
                                <td><?= ucwords($orderProduct->cell_phone)?></td>
                                <td><?= ucwords($orderProduct->email)?></td>
                                <td><abbr class="timeago" title="><?= date('Y-m-d H:i:s',$orderProduct->created_at)?>"></abbr></td>
                                <td>
                                    <div class="btn-group">
                                        <a href="#" data-toggle="dropdown" class="dropdown-toggle" aria-expanded="true"><i class="glyphicon glyphicon-option-vertical"></i></a>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="<?= \yii\helpers\Url::to(['view','id'=>$orderProduct->id])?>" >Xem chi tiết</a></li>
                                        </ul>
                                    </div>
                                </td>
                            </tr>
                        <?php }
                    }
                    ?>
                </tbody>
            </table>
        </div>
    </div>
</div>

