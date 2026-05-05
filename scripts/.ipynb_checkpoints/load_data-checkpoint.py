import pandas as pd

# Load csv file 
df = pd.read_csv(r'C:\Users\USER\Desktop\HOSPITAL_READMISSION_PROJECT\data\hospital_readmissions.csv')

# Display first rows
print(df.head())

# Basic info
print(df.info())

# To run this script:on terminal ;
#cd scripts
#python load_data.py