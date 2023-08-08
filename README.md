# tensorflow-sandbox




## general structure of ML pipeline

|                        | **Steps**                                                    |                                                                                                                                                                     |
|------------------------|--------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------| 
| **EDA**                | understanding data <br/>missing, wrong, null, duplicates ... |                                                                                                                                                                     | 
|                        | outliers                                                     | IRQ <br/> anomaly detection                                                                                                                                         |
|                        | relations                                                    | statistical tests <br/> (K², t-test or anova, correlation)                                                                                                          | 
| **Preprocessing**      | Feature Scaling                                              | Normalization <br/> Standardization                                                                                                                                 |
|                        | Feature Selection                                            |                                                                                                                                                                     |
|                        | Feature Extraction                                           | PCA, SVD                                                                                                                                                            |
|                        | Encoding - dummy categorical f.                              |                                                                                                                                                                     | 
|                        | Discretization - binning continuous f.                       |                                                                                                                                                                     |
| **Sampling** - Split   |                                                              |                                                                                                                                                                     |
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

**relations**
```statistical tests
                        categorical         |  continuous
         categorical    chi-square          |  T-test or ANOVA
         continuous     logistic-regression |  correlation
```

## ML fundamental concepts

- **over-fitting**</br>
generally; more data, cross-validation, and reducing variables (future selection & extraction) improves over-fitting.

```
                           overfitting                            scaling         multi-collinearity
         regression |   L1 (lasso), L2 (rigde) Regularization  | standardize  |  eliminate high correlated features or use Ridge(Lasso)Regression which penalties high correlation..
         trees      |   ensembling (bagging, boosting, RF)     | no-need      |    n/a
 neural network, DL |   early stop, drop-out                   | normalize    |    n/a
         
```
the methodology _finding the sweet spot_ b/w the simple and complex models are, regularization, boosting and bagging!

- imbalanced data in classification (biased to )
- gini & entropy in decision trees (how to split root node?)
- feature scaling (standardization vs normalization)
```
                                 scaling     
       gradient calculations  |   mandotary  | linear r, logistic r., neural n., deep l.
 distance based calculations  |    no-need   | tree, enseble models, k-means ...
 
             neural networks  |  Normalization (changes distribution!)
    linear, logistic r., svm  |  Standardization => standard_scaler(μ=0, σ=1) or minmax_scaler(min=0, max=1)   
```
- bias vs variance
```
      underfitting  ----------------------- overfitting
      model has high bias      |    model has high variance
```

- sampling  
  - sampling is about **understanding the population characteristic**
  - sampling is about **controlling randomness**
  - repeating experiment (which is expensive) vs bootstrapping (resample the sample, and get a distribution, calculate some stats)
  - cross validation is some like bootstrapping
  - / N-1 => sample ν is always smaller than the population ν. So to compensate the gap, divide N-1 not N! 
``` two critical concepts
 sampling      |  from population    | or, splitting in ML
```

- fit vs transform<br>
    - with test data, there is no fitting at transformer step! no new calculation!
    - if, pipeline.fit(X_train,...) used, fit & transform applied for preprocessing step. for estimator, only fit applied!
    - In pipeline.predict(X_test,...), transform and predict steps are applied

```
                                transformer  --------------------  model
                              (preprocessing)                   (estimator)     
  train                  |     fit (calculates params)     |    fit (trains the model)
                               transform 
  test (predict phase)   |     transform                   |    predict
  
  
```