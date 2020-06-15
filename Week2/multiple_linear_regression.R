# Multiple Linear Regression

# Importing the dataset
training_set = read.csv('Train.csv')
test_set = read.csv('Test.csv')

# Encoding categorical data
# Splitting the dataset into the Training set and Test set
# Feature Scaling

# Fitting Multiple Linear Regression to the Training set
regressor = lm(formula = Profit ~ .,
               data = training_set)

summary(regressor)
#All 5 features are statistically significant.

# Predicting the Test set results
y_pred = predict(regressor, newdata = test_set)
y_pred
