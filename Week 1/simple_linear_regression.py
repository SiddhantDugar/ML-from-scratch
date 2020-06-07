# Simple Linear Regression

# Importing the libraries
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd

# Importing the dataset

X_train = pd.read_csv('Linear_X_Train.csv')
y_train = pd.read_csv('Linear_Y_Train.csv')
X_test = pd.read_csv('Linear_X_Test.csv')


# Training the Simple Linear Regression model on the Training set
from sklearn.linear_model import LinearRegression
regressor = LinearRegression()
regressor.fit(X_train, y_train)

# Predicting the Test set results
y_pred = regressor.predict(X_test)

# Visualising the Training set results
plt.scatter(X_train, y_train, color = 'red')
plt.plot(X_train, regressor.predict(X_train), color = 'blue')
plt.title('Score vs Coding Time (Training set)')
plt.xlabel('Time spent Coding')
plt.ylabel('Score')
plt.show()

#Visualising the Test set results
plt.scatter(X_test, y_pred, color = 'red')
plt.plot(X_train, regressor.predict(X_train), color = 'blue')
plt.title('Score vs Coding Time (Test set)')
plt.xlabel('Time spent Coding')
plt.ylabel('Score')
plt.show()