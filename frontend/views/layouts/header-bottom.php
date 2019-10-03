<?php
use common\models\CatProducts;
use yii\helpers\Url;
$catProducts = CatProducts::find()->where(['parent_id'=>null])->all();
// $('.txt-search').keyup(function(){
//         var name = $(this).val();
//         $.post( '/search/suggest',{csrf_token_name:csrf_token_value, name:name},function( data ) {
//             $('.suggest-box').html(data);
//             $('.suggest-box').slideDown();
//         }); 
//     });

//$script = <<< JS
//
//    $('.suggest-box').slideDown();
//    $('body .txt-search').keyup(function(){
//        var name = $(this).val();
//        if(name.length === 0){
//             $('.suggest-box').hide();
//        }else{
//             $('.suggest-box').html(data);
//            $('.suggest-box').slideDown();
//        }
//    });
//
//
//
//JS;
//$this->registerJs($script, \yii\web\View::POS_READY);
?>
<div class="header-bottom">
    <div class="container">
        <div class="fleft danh-muc-box">
            <div class="danh-muc-btn">Danh mục sản phẩm</div>
            <div class="danh-muc-menu"">
                <ul>
                    <?php
                    if (!empty($catProducts)){
                        foreach ($catProducts as $catProduct){ ?>
                            <li class=" li-parent">
                                <a href="<?= Url::to(['products/list-products-cat','slug'=>$catProduct->slug])?>" rel="category tag"><?= ucwords($catProduct->name) ?></a>
                                <ul class="sub-menu" style="min-height: 400px;">
                                    <?php
                                    $catProductParents = CatProducts::find()->where(['parent_id'=>$catProduct->id])->all();
                                    if (!empty($catProductParents)){
                                        foreach ($catProductParents as $catProductParent){ ?>
                                            <li class="">
                                                <a href="<?= Url::to(['products/list-products-cat','slug'=>$catProductParent->slug]) ?>" rel="category tag">
                                                    <span class="img">
                                                         <?php
                                                         if(!empty($catProductParent->avatar)){?>
                                                             <img src="<?= Yii::getAlias('@fakelink/cat-products/'.$catProductParent->avatar)?>">
                                                         <?php }else{?>
                                                             <img src="https://via.placeholder.com/140x70" alt="avatar">
                                                         <?php }
                                                         ?>

                                                    </span>
                                                    <span class="text"><?= ucwords($catProductParent->name) ?></span>
                                                </a>
                                            </li>
                                        <?php }
                                    }
                                    ?>
                                </ul>
                            </li>

                        <?php }
                    }
                    ?>
                </ul>
            </div>
        </div>
        <div class="fleft search-box">
            <form method="GET" action="<?= Url::to(['products/search'])?>" class="search-form">
                <input type="text" name="key" class="txt-search" autocomplete="on" placeholder="Tìm kiếm sản phẩm">
                <button type="submit" class="button btn-search">Tìm kiếm</button>
            </form>
<!--            <div class="suggest-box" style="display: none;">-->
<!---->
<!--            </div>-->
<!--            <div class="suggest-box">-->
<!--                <div class="suggest-item">-->
<!--                    <a href="https://dienmaythanhloi.vn/may-mai-goc-bosch-gws-750-100-750w">-->
<!--                        <img src="https://dienmaythanhloi.vn/thumb/crop/1283/50/50/">-->
<!--                    </a>-->
<!--                    <h2>-->
<!--                        <a href="https://dienmaythanhloi.vn/may-mai-goc-bosch-gws-750-100-750w">Máy Mài Góc Bosch GWS 750-100 (750W)</a>-->
<!--                    </h2>-->
<!--                    <span class="suggest-price">1,050,000</span>-->
<!--                </div>-->
<!--            </div>-->
        </div>
        <div class="fleft header-ky-thuat">
            Kỹ Thuật: 0973.937.035 | 0936.564.441 </div>
        <a href="<?= Url::to(['products/list-products-type','type'=>\common\models\Products::T_SANPHAMKHUYENMAI])?>" class="fright header-sale"></a>
    </div>
</div>