<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use frontend\assets\AppAsset;
use common\widgets\Alert;

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta property="og:url"                content="http://dienmaythanhloi.com" />
    <meta property="og:type"               content="Tin tức" />
    <meta property="og:title"              content="Điện máy thành lợi" />
    <meta property="og:description"        content="Hệ thống điện máy uy tín hàng đầu Việt Nam?" />
    <meta property="og:image"              content="http://static01.nyt.com/images/2015/02/19/arts/international/19iht-btnumbers19A/19iht-btnumbers19A-facebookJumbo-v2.jpg" />
    <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
    <?php $this->registerCsrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
    <script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v4.0&appId=156105261771811&autoLogAppEvents=1"></script>

</head>
<body>
<?php $this->beginBody() ?>

    <?= $this->render('header-top')?>

    <?= $content ?>
    <!-- footer -->
    <?= $this->render('footer.php')?>
    <div id="fb-root"></div>
<?php $this->endBody() ?>
<script>
    function addCartPro(id){
        $.get('<?= \yii\helpers\Url::to(['products/add-cart-pro'])?>',{'id':id},function (data) {
            console.log('vao');
        });
    }
</script>

</body>
</html>
<?php $this->endPage() ?>
