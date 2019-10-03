<?php

/* @var $this yii\web\View */
use yii\helpers\Html;
use yii\helpers\Url;
use \common\models\Products;
$this->title = 'Dienmaythanhloi.vn - Hệ thống linh kiện điện nước tốt nhất hiện nay.';
?>
<div class="header-bottom">
    <div class="container">
        <div class="fleft danh-muc-box">
            <div class="danh-muc-btn">Danh mục sản phẩm</div>
        </div>
        <div class="fleft search-box">
            <form method="GET" action="https://dienmaythanhloi.vn/search" class="search-form">
                <input type="text" name="key" class="txt-search" autocomplete="off" placeholder="Tìm kiếm sản phẩm">
                <button type="submit" class="button btn-search">Tìm kiếm</button>
            </form>
            <div class="suggest-box" style="display: none;"></div>
        </div>
        <div class="fleft header-ky-thuat">
            Kỹ Thuật: 0973.937.035 | 0936.564.441				</div>
        <a href="https://dienmaythanhloi.vn/khuyen-mai" class="fright header-sale"></a>
    </div>
</div>
<?= $this->render('/layouts/header-bottom') ?>
<div class="container">
    <div class="home-box home-box-product-tab">
        <div class="zing-tab product-tab">
            <div class="tab-header">
                <ul>
                    <li><a href="#tab1" class="active">Sản phẩm khuyến mại</a></li>
                    <li><a href="#tab2">Sản phẩm bán chạy</a></li>
                    <li><a href="#tab3">Sản phẩm mới</a></li>
                </ul>
            </div>
            <div class="clr"></div>
            <div class="tab-content zing-content">
                <div id="tab1" class="tab">
                    <div class="home-product-left">
                        <div class="product-item">
                            <?php
                            if(!empty($sanPhamNoiBatKhuyenMai)){ ?>
                                <div class="product-box">
                                    <div class="product-img">
                                        <a href="<?= Url::to(['/products/view','slug'=>$sanPhamNoiBatKhuyenMai->slug])?>">
                                            <?php
                                            if(!empty($sanPhamNoiBatKhuyenMai->avatar)){?>
                                                <img src="<?= Yii::getAlias('@fakelink/products/'.$sanPhamNoiBatKhuyenMai->avatar)?>" class="lazy-load"
                                                     style="display: block;">
                                            <?php }else{?>
                                                <img src="https://via.placeholder.com/200x200" alt="avatar">
                                            <?php }
                                            ?>
                                        </a>
                                        <span class="icon-sale">-<?= $sanPhamNoiBatKhuyenMai->sale_number?>%</span> <span class="icon-label">
                                        <img src="theme-v2/images/icon-new.png">
                                    </span>
                                    </div>
                                    <div class="product-info">
                                        <h3 class="product-title"><a href="<?= Url::to(['/products/view','slug'=>$sanPhamNoiBatKhuyenMai->slug])?>"><?= ucwords($sanPhamNoiBatKhuyenMai->full_name)?></a></h3>
                                        <div class="product-price">
                                            <p class="gia"><?= number_format($sanPhamNoiBatKhuyenMai->price)?>đ</p>
                                            <p class="gia-cu"><?= number_format($sanPhamNoiBatKhuyenMai->exp_price)?>đ</p>
                                        </div>
                                        <p class="product-excerpt">Thương hiệu : <?= $sanPhamNoiBatKhuyenMai->brandName->name ?><br>
                                            <?= $sanPhamNoiBatKhuyenMai->description ?><br>
                                            Bảo hành : <?= $sanPhamNoiBatKhuyenMai->guarantce ?> tháng</p>
                                    </div>
                                </div>
                            <?php }
                            ?>
                        </div>
                    </div>
                    <div class="home-product-right">
                        <div class="product-list product-list-3">
                            <div class="row">
                                <?php
                                if(!empty($sanPhamKhuyenMai)){
                                    foreach($sanPhamKhuyenMai as $item){?>
                                        <div class="col-md-3 col-xs-6 product-item">
                                            <div class="product-box">
                                                <div class="product-img">
                                                    <a href="<?= Url::to(['/products/view','slug'=>$item->slug])?>">
                                                        <?php
                                                        if(!empty($item->avatar)){?>
                                                            <img src="<?= Yii::getAlias('@fakelink/products/'.$item->avatar)?>">
                                                        <?php }else{?>
                                                            <img src="https://via.placeholder.com/200x200" alt="avatar">
                                                        <?php }
                                                        ?>
                                                    </a>
                                                    <span class="icon-sale">-<?= $item->sale_number ? $item->sale_number : '0'?>%</span> <span class="icon-label">
                                                <img src="theme-v2/images/icon-new.png">
                                            </span>
                                                </div>
                                                <div class="product-info">
                                                    <h3 class="product-title">
                                                        <a href="<?= Url::to(['/products/view','slug'=>$item->slug])?>"><?= $item->full_name ? ucwords($item->full_name) : '0'?></a></h3>
                                                    <div class="product-price">
                                                        <p class="gia"><?= $item->price ? number_format($item->price) : '0'?>đ</p>
                                                        <p class="gia-cu"><?= $item->exp_price ? number_format($item->exp_price) : '0'?>đ</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    <?php }
                                }
                                ?>
                            </div>
                        </div>
                    </div>
                    <div class="clr"></div>
                    <a href="<?= Url::to(['/products/list-products-type','type'=>Products::T_SANPHAMKHUYENMAI])?>" class="button btn-xem-tat-ca">Xem tất cả</a>
                </div>
                <div id="tab2" class="tab">
                    <div class="home-product-left">
                        <div class="product-item">
                            <?php
                            if(!empty($sanPhamNoiBatBanChay)){ ?>
                                <div class="product-box">
                                    <div class="product-img">
                                        <a href="<?= Url::to(['/products/view','slug'=>$sanPhamNoiBatBanChay->slug])?>">
                                            <?php
                                            if(!empty($sanPhamNoiBatBanChay->avatar)){?>
                                                <img src="<?= Yii::getAlias('@fakelink/products/'.$sanPhamNoiBatBanChay->avatar)?>">
                                            <?php }else{?>
                                                <img src="https://via.placeholder.com/200x200" alt="avatar">
                                            <?php }
                                            ?>
                                        </a>
                                        <span class="icon-sale">-<?= $sanPhamNoiBatBanChay->sale_number ?>%</span> <span class="icon-label">
                                        <img src="theme-v2/images/icon-new.png">
                                    </span>
                                    </div>
                                    <div class="product-info">
                                        <h3 class="product-title"><a href="<?= Url::to(['/products/view','slug'=>$sanPhamNoiBatKhuyenMai->slug])?>"><?= ucwords($sanPhamNoiBatKhuyenMai->full_name)?></a></h3>
                                        <div class="product-price">
                                            <p class="gia"><?= number_format($sanPhamNoiBatBanChay->price)?>đ</p>
                                            <p class="gia-cu"><?= number_format($sanPhamNoiBatBanChay->exp_price)?>đ</p>
                                        </div>
                                        <p class="product-excerpt">Thương hiệu : <?= $sanPhamNoiBatBanChay->brandName->name ?><br>
                                            <?= $sanPhamNoiBatBanChay->description ?><br>
                                            Bảo hành : <?= $sanPhamNoiBatBanChay->guarantce ?> tháng</p>
                                    </div>
                                </div>
                            <?php }?>
                        </div>
                    </div>
                    <div class="home-product-right">
                        <div class="product-list product-list-3">
                            <div class="row">
                                <?php
                                if(!empty($sanPhamBanChay)){
                                    foreach ($sanPhamBanChay as $item){?>
                                        <div class="col-md-3 col-xs-6 product-item">
                                            <div class="product-box">
                                                <div class="product-img">
                                                    <a href="<?= Url::to(['/products/view','slug'=>$item->slug])?>">
                                                        <?php
                                                        if(!empty($item->avatar)){?>
                                                            <img src="<?= Yii::getAlias('@fakelink/products/'.$item->avatar)?>">
                                                        <?php }else{?>
                                                            <img src="https://via.placeholder.com/200x200" alt="avatar">
                                                        <?php }
                                                        ?>
                                                    </a>
                                                    <span class="icon-sale">-<?= $item->sale_number ? $item->sale_number : '0'?>%</span> <span class="icon-label">
                                                <img src="theme-v2/images/icon-new.png">
                                            </span>
                                                </div>
                                                <div class="product-info">
                                                    <h3 class="product-title">
                                                        <a href="<?= Url::to(['/products/view','slug'=>$item->slug])?>"><?= $item->full_name ? ucwords($item->full_name) : '0'?></a></h3>
                                                    <div class="product-price">
                                                        <p class="gia"><?= $item->price ? number_format($item->price) : '0'?>đ</p>
                                                        <p class="gia-cu"><?= $item->exp_price ? number_format($item->exp_price) : '0'?>đ</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    <?php }
                                }?>

                            </div>
                        </div>
                    </div>
                    <div class="clr"></div>
                    <a href="<?= Url::to(['/products/list-products-type','type'=>Products::T_SANPHAMBANCHAY])?>" class="button btn-xem-tat-ca">Xem tất cả</a>
                </div>
                <div id="tab3" class="tab">
                    <div class="home-product-left">
                        <div class="product-item">
                            <?php
                            if(!empty($sanPhamNoiBatMoi)){ ?>
                                <div class="product-box">
                                    <div class="product-img">
                                        <a href="<?= Url::to(['/products/view','slug'=>$sanPhamNoiBatMoi->slug])?>">
                                            <?php
                                            if(!empty($sanPhamNoiBatMoi->avatar)){?>
                                                <img src="<?= Yii::getAlias('@fakelink/products/'.$sanPhamNoiBatMoi->avatar)?>">
                                            <?php }else{?>
                                                <img src="https://via.placeholder.com/200x200" alt="avatar">
                                            <?php }
                                            ?>

                                        </a>
                                        <span class="icon-sale">-<?= $sanPhamNoiBatMoi->sale_number ?>%</span> <span class="icon-label">
                                        <img src="theme-v2/images/icon-new.png">
                                    </span>
                                    </div>
                                    <div class="product-info">
                                        <h3 class="product-title"><a href="<?= Url::to(['/products/view','slug'=>$sanPhamNoiBatMoi->slug])?>"><?= ucwords($sanPhamNoiBatKhuyenMai->full_name)?></a></h3>
                                        <div class="product-price">
                                            <p class="gia"><?= number_format($sanPhamNoiBatMoi->price)?>đ</p>
                                            <p class="gia-cu"><?= number_format($sanPhamNoiBatMoi->exp_price)?>đ</p>
                                        </div>
                                        <p class="product-excerpt">Thương hiệu : <?= $sanPhamNoiBatMoi->brandName->name ?><br>
                                            <?= $sanPhamNoiBatMoi->description ?><br>
                                            Bảo hành : <?= $sanPhamNoiBatMoi->guarantce ?> tháng</p>
                                    </div>
                                </div>
                            <?php }?>
                        </div>
                    </div>
                    <div class="home-product-right">
                        <div class="product-list product-list-3">
                            <div class="row">
                                <?php
                                if(!empty($sanPhamMoi)){
                                    foreach($sanPhamMoi as $item){?>
                                        <div class="col-md-3 col-xs-6 product-item">
                                            <div class="product-box">
                                                <div class="product-img">

                                                    <a href="<?= Url::to(['/products/view','slug'=>$item->slug])?>">
                                                        <?php
                                                        if(!empty($sanPhamNoiBatMoi->avatar)){?>
                                                            <img src="<?= Yii::getAlias('@fakelink/products/'.$sanPhamNoiBatMoi->avatar)?>">
                                                        <?php }else{?>
                                                            <img src="https://via.placeholder.com/200x200" alt="avatar">
                                                        <?php }
                                                        ?>
                                                    </a>
                                                    <span class="icon-sale">-<?= $item->sale_number ? $item->sale_number : '0'?>%</span> <span class="icon-label">
                                                <img src="theme-v2/images/icon-new.png">
                                            </span>
                                                </div>
                                                <div class="product-info">
                                                    <h3 class="product-title"><a
                                                                href="<?= Url::to(['/products/view','slug'=>$item->slug])?>"><?= $item->full_name ? ucwords($item->full_name) : '0'?></a></h3>
                                                    <div class="product-price">
                                                        <p class="gia"><?= $item->price ? number_format($item->price) : '0'?>đ</p>
                                                        <p class="gia-cu"><?= $item->exp_price ? number_format($item->exp_price) : '0'?>đ</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    <?php }
                                    }
                                ?>
                            </div>
                        </div>
                    </div>
                    <div class="clr"></div>
                    <a href="<?= Url::to(['/products/list-products-type','type'=>Products::T_SANPHAMMOI])?>" class="button btn-xem-tat-ca">Xem tất cả</a>
                </div>
            </div>
        </div>
    </div>

    <?php
    if (!empty($listCat)){ 
        foreach($listCat as $listCats){ ?>
            <div class="home-box home-box-product">
                <div class="home-product-header">
                    <h2 class="home-box-title"><?= ucwords($listCats->name)?></h2>
                    <a href="<?= Url::to(['/products/list-products-cat','slug'=>$listCats->slug]) ?>" class="btn-xem-tat-ca">Xem tất cả</a>
                    <div class="clr"></div>
                </div>
                <div class="home-product-body">
                    <div class="home-product-tax-left">
                        <div class="home-product-tax-left-inner">
                            <div class="home-product-tax-menu">
                                <ul class="home-product-tax-scroll default-skin">
                                    <?php
                                    $listCatParents = \common\models\CatProducts::find()->where(['parent_id'=>$listCats->id])->all();
                                    if (!empty($listCatParents)){
                                        foreach ($listCatParents as $listCatParent){?>
                                            <li>
                                                <a href="<?= Url::to(['/products/list-products-cat','slug'=>$listCatParent->slug]) ?>"><?= ucwords($listCatParent->name)?></a>
                                            </li>
                                        <?php }
                                    }
                                    ?>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="home-product-tax-right">
                        <div class="product-list">
                            <div class="row">
                                <?php 
                                    $itemCats = Products::find()->where(['cat_id'=>$listCats->id])->all();
                                    if(!empty($itemCats)){
                                        foreach ($itemCats as $itemCat){ ?>
                                            <div class="col-md-3 col-xs-6 product-item">
                                                <div class="product-box">
                                                    <div class="product-img">
                                                        <a href="<?= Url::to(['/products/view','slug'=>$itemCat->slug])?>">
                                                            <?php
                                                            if(!empty($item->avatar)){?>
                                                                <img src="<?= Yii::getAlias('@fakelink/products/'.$itemCat->avatar)?>" class="lazy-load"
                                                                     style="display: block;">
                                                            <?php }else{?>
                                                                <img src="https://via.placeholder.com/200x200" alt="avatar">
                                                            <?php }
                                                            ?>
                                                        </a>
                                                        <span class="icon-sale">-<?= $itemCat->sale_number ?>%</span> <span class="icon-label">
                                                        <img src="theme-v2/images/icon-new.png">
                                                    </span>
                                                    </div>
                                                    <div class="product-info">
                                                        <h3 class="product-title"><a href="<?= Url::to(['/products/view','slug'=>$itemCat->slug]) ?>"><?= ucwords($itemCat->full_name)?></a></h3>
                                                        <div class="product-price">
                                                            <p class="gia"><?= number_format($itemCat->price)?>đ</p>
                                                            <p class="gia-cu"><?= number_format($itemCat->exp_price)?>đ</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        <?php }
                                    }
                                ?>
                            </div>
                        </div>
                    </div>
                    <div class="clr"></div>
                </div>
            </div>
        <?php }
    }
    ?>
    
</div>
