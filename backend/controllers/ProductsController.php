<?php

namespace backend\controllers;
use common\models\Brand;
use common\models\CatProducts;
use Yii;
use common\models\Products;
use common\models\query\ProductsQuery;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;

/**
 * ProductsController implements the CRUD actions for Products model.
 */
class ProductsController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }
    /**
     * Lists all Products models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new ProductsQuery();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Products model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($slug)
    {
        $model = Products::find()->where(['slug'=>$slug])->one();
        return $this->render('view', [
            'model' => $model,
        ]);
    }

    /**
     * Creates a new Products model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Products();
        $model->sale_number = 1;
        $dataCat = $model->getCatProducts();
        if ($model->load(Yii::$app->request->post())) {

            $model->created_at = strtotime("now");
            $model->status = Products::IS_NEW;
            // convert base64 to image
            $data = $model->avatar;
            $fileName = explode('+', $data);
            $strFileNam = "$fileName[0]+";
            $img = explode($strFileNam, $data);
            $strEx = explode('base64,',$img[1]);
            $imgFile = base64_decode($strEx[1]);
            file_put_contents(Yii::$app->basePath.'/web/upload/products/'.$fileName[0], $imgFile);
            $model->avatar = $fileName[0];
            if ($model->save()){
                $modelCat = CatProducts::find()->where(['id'=>$model->cat_id])->one();
                $modelBrand = Brand::find()->where(['id'=>$model->brand])->one();
                if (!$modelCat->status == CatProducts::IS_ACTIVE){
                    $modelCat->status = CatProducts::IS_ACTIVE;
                    $modelCat->save();
                }
                if (!$modelBrand->status == Brand::TT_HOATDONG){
                    $modelBrand->status = Brand::TT_HOATDONG;
                    $modelBrand->save();
                }
                Yii::$app->session->setFlash('success', Yii::t('common','Thêm mới thành công.'));
                return $this->redirect(['update','id'=>$model->id]);
            }
        }

        return $this->render('create', [
            'model' => $model,
            'dataCat' => $dataCat,
        ]);
    }

    /**
     * Updates an existing Products model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
        $str = $model->avatar;
        $dataCat = $model->getCatProducts();
        if ($model->load(Yii::$app->request->post())) {
            $model->updated_at = strtotime("now");
            if ($model->avatar == $str){
                $model->avatar = $str;
            }else{
                $data = $model->avatar;
                if(!empty($model->avatar)){
                    $fileName = explode('+', $data);
                    $strFileNam = "$fileName[0]+";
                    $img = explode($strFileNam, $data);
                    $strEx = explode('base64,',$img[1]);
                    $imgFile = base64_decode($strEx[1]);
                    file_put_contents(Yii::$app->basePath.'/web/upload/products/'.$fileName[0], $imgFile);
                    $model->avatar = $fileName[0];
                }
            }
            if ($model->save()){
                Yii::$app->session->setFlash('success', Yii::t('app','Cập nhật thành công.'));
                return $this->redirect(['update','id'=>$model->id]);
            }
        }

        return $this->render('update', [
            'model' => $model,
            'dataCat' => $dataCat,
        ]);
    }

    /**
     * Deletes an existing Products model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Products model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Products the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Products::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException(Yii::t('backend', 'The requested page does not exist.'));
    }
}
