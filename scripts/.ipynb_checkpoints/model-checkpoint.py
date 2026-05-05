import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LogisticRegression
from sklearn.metrics import classification_report

###load data
df = pd.read_csv(r'C:\Users\USER\Desktop\HOSPITAL_READMISSION_PROJECT\data\cleaned_hospital_readmissions.csv')
print(df.head())

### features and target
# handle a common typo in the dataset
if 'lenth_of_stay' in df.columns:
    df = df.rename(columns={'lenth_of_stay': 'length_of_stay'})

# prepare target column
if 'readmitted_30_days' in df.columns:
    y = df['readmitted_30_days'].map({'Yes': 1, 'No': 0})
elif 'readmitted' in df.columns:
    y = df['readmitted'].map({'Yes': 1, 'No': 0})
else:
    raise KeyError("Target column 'readmitted_30_days' not found in data")

# select numeric features that exist
features = [c for c in ['age', 'length_of_stay', 'medication_count','gender'] if c in df.columns]
X = df[features].copy()

# basic preprocessing: fill missing numeric values with median
X = X.fillna(X.median())

# train-test split
x_train, x_test, y_train, y_test = train_test_split(X, y, test_size=0.3, random_state=42)

# model training
model = LogisticRegression(max_iter=1000)
model.fit(x_train, y_train)

# predict
y_predict = model.predict(x_test)

# results
print(classification_report(y_test, y_predict))




