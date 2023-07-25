# tensorflow-sandbox




## general structure of ML pipeline


|                        | **Steps**                                                    |                                                                                                                                                                     |
|------------------------|--------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------| 
| **EDA**                | understanding data <br/>missing, wrong, null, duplicates ... |                                                                                                                                                                     | 
|                        | outliers                                                     |                                                                                                                                                                     |
|                        | relations of[^1]                                             |                                                                                                                                                                     | 
|                        | encoding & binning                                           |                                                                                                                                                                     | 
| **Preprocessing**      | Feature Scaling                                              | Normalization vs Standardization                                                                                                                                    |
|                        | Feature Selection                                            |                                                                                                                                                                     |
|                        | Feature Extraction                                           | PCA, SVD                                                                                                                                                            |
| **Split**              |                                                              |                                                                                                                                                                     |
| **Model**              | Regression                                                   |                                                                                                                                                                     |     
|                        | Classification                                               |                                                                                                                                                                     |    
|                        | Clustering                                                   |                                                                                                                                                                     |     
| _prediction_           |                                                              |                                                                                                                                                                     |
| _hyper-tuning_         |                                                              |                                                                                                                                                                     |
| **Evaluation Metrics** | Regression                                                   | Loss f., <br/>R², <br/>cosine similarity                                                                                                                            |
|                        | Classification                                               | Confusion Matrix <br/>&nbsp; - accuracy, precision, recall, f1-score, ROC curve <br/>&nbsp; - cost-of-misclassification-matrix <br/>&nbsp; - accuracy-weight-matrix | 
|                        |                                                              | Cross Entropy                                                                                                                                                       |
|                        | Clustering                                                   | tendency <br/>#k <br/> quality <br/>&nbsp; - V-measure, <br/>&nbsp; - Silhouette Score                                                                              |
|                        |                                                              | purpose <br/>&nbsp; - for another model (check the improvement) <br/>&nbsp; - for itself (ground truth labeling)                                                    |


### tables

[^1]: relations
```
                        categorical         |  continuous
         categorical    chi-square          |  T-test or ANOVA
         continuous     logistic-regression |  correlation
```