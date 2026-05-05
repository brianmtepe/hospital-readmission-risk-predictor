import pandas as pd

#load csv file
df = pd.read_csv(r'C:\Users\USER\Desktop\HOSPITAL_READMISSION_PROJECT\data\hospital_readmissions.csv')

# check for missing values
print(df.isnull().sum())

#encode gender column
df['gender'] = df['gender'].map({'M': 1, 'F': 0,})

#encoding discharge disposition
df['discharge_destination'] = df['discharge_destination'].map({'Home': 0,'Rehab': 1,'Nursing Facility': 2})

#save cleaned data
df.to_csv(r'C:\Users\USER\Desktop\HOSPITAL_READMISSION_PROJECT\data\cleaned_hospital_readmissions.csv', index = False)


print('data cleaned and saved')