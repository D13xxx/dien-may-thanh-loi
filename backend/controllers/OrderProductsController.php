<?php

namespace backend\controllers;

use common\models\DetailOrder;
use Yii;
use common\models\OrderProducts;
use common\models\query\OrderProductsQuery;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * OrderProductsController implements the CRUD actions for OrderProducts model.
 */
class OrderProductsController extends Controller
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
     * Lists all OrderProducts models.
     * @return mixed
     */
    public function actionIndex()
    {
        $orderProducts = OrderProducts::find()->all();
        $searchModel = new OrderProductsQuery();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
        $dataProvider->query->orderBy(['id'=>SORT_DESC]);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
            'orderProducts' => $orderProducts,
        ]);
    }

    /**
     * Displays a single OrderProducts model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {
        $detaiOrders = DetailOrder::find()->where(['order_product_id'=>$id])->all();
        return $this->render('view', [
            'model' => $this->findModel($id),
            'detaiOrders' => $detaiOrders
        ]);
    }

    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the OrderProducts model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return OrderProducts the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = OrderProducts::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
