# tensorflow-sandbox




### General structure of an ML pipeline

- data gathering (sampling), 
- EDA, 
- preprocessing, 
- split (sampling), 
- model (fit & prediction & hyper-tuning) 
- evaluation

for more [detail ...](https://github.com/tansudasli/tensorflow-sandbox/wiki) 

### ML fundamental concepts

- [statistical tests](https://github.com/tansudasli/tensorflow-sandbox/wiki/statistical-tests)
- [over-fitting](https://github.com/tansudasli/tensorflow-sandbox/wiki/overfitting)
- [simple vs complex models](https://github.com/tansudasli/tensorflow-sandbox/wiki/simple-vs-complex-models) 
- [imbalanced data in classification](https://github.com/tansudasli/tensorflow-sandbox/wiki/imbalanced-data-in-classification) 
- [how to split root node?](https://github.com/tansudasli/tensorflow-sandbox/wiki/how-to-split-root-node-in-decision-trees%3F) 
- [standardization vs normalization](https://github.com/tansudasli/tensorflow-sandbox/wiki/standardization-vs-normalization)
- [bias vs variance](https://github.com/tansudasli/tensorflow-sandbox/wiki/bias-vs-variance)
- [sampling](https://github.com/tansudasli/tensorflow-sandbox/wiki/sampling)  
  




- fit vs transform
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