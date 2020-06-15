# Simple Linear Regression

# Importing the dataset
X_train = read.csv('Linear_X_Train.csv')
y_train = read.csv('Linear_Y_Train.csv')
X_test = read.csv('Linear_X_Test.csv')

# Splitting the dataset into the Training set and Test set
# Feature Scaling
Train_set = data.frame(X_train , y_train)

# Fitting Simple Linear Regression to the Training set
regressor = lm(formula = y ~ x ,
               data = Train_set)
summary(regressor)

# Predicting the Test set results
y_pred = predict(regressor, newdata = X_test)

# Visualising the Training set results
library(ggplot2)
ggplot() +
  geom_point(aes(x = Train_set$x, y = Train_set$y),
             colour = 'red') +
  geom_line(aes(x = Train_set$x , y = predict(regressor, newdata = Train_set)),
            colour = 'blue') +
  ggtitle('Training set') +
  xlab('Coding Time') +
  ylab('Score')

# Visualising the Test set results
library(ggplot2)
ggplot() +
  geom_point(aes(x = X_test$x , y = y_pred),
             colour = 'red') +
  geom_line(aes(x = Train_set$x , y = predict(regressor, newdata = Train_set)),
            colour = 'blue') +
  ggtitle('Test set') +
  xlab('Coding Time') +
  ylab('Score')