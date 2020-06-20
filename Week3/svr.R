# SVR

# Importing the dataset
dataset = read.csv('CarPurchasingData.csv')
dataset = dataset[4:9]

# Splitting the dataset into the Training set and Test set
install.packages('caTools')
 library(caTools)
 set.seed(123)
 split = sample.split(dataset$Car.Purchase.Amount, SplitRatio = 0.8)
 training_set = subset(dataset, split == TRUE)
 test_set = subset(dataset, split == FALSE)

# Feature Scaling
 training_set = scale(training_set)
 test_set = scale(test_set)

# Fitting SVR to the dataset
install.packages('e1071')
 library(e1071)
 regressor = svm(formula = Car.Purchase.Amount ~ .,
                data = dataset,
                type = 'eps-regression',
                kernel = 'radial')

# Predicting a new result
y_pred = predict(regressor, test_set)
