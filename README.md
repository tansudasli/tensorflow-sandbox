# tensorflow-sandbox

- ....


## general structure of ML pipeline

|                        | **Steps**                                 |                                                                                        |
|------------------------|-------------------------------------------|----------------------------------------------------------------------------------------| 
| **EDA**                | missing, outlier, wrong, null, duplicates |                                                                                        | 
|                        | associations of                           |                                                                                        | 
|                        | encoding & binning                        |                                                                                        | 
| **Preprocessing**      | Feature Scaling                           | Normalization vs Standardization                                                       |
|                        | Feature Selection                         |                                                                                        |
|                        | Feature Extraction                        | PCA, SVD                                                                               |
| **Split**              |                                           |                                                                                        |
| **Model**              | Regression                                |                                                                                        |     
|                        | Classification                            |                                                                                        |    
|                        | Clustering                                |                                                                                        |     
| _prediction_           |                                           |                                                                                        |
| _hyper-tuning_         |                                           |                                                                                        |
| **Evaluation Metrics** | Regression                                | Loss f., <br/>R², <br/>cosine similarity                                               |
|                        | Classification                            | Confusion Matrix <br/>accuracy, precision, recall, f1-score, ROC curve                 |
|                        |                                           | Cost of misclassification-matrix or <br/>accuracy-weight-matrix                        |
|                        |                                           | Cross Entropy                                                                          |
|                        | Clustering                                | tendency <br/>#k <br/> quality <br/>&nbsp; - V-measure, <br/>&nbsp; - Silhouette Score |
|                        |                                           |                                                                                        |

