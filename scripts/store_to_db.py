import pandas as pd
import sqlite3

# load cleaned data
df = pd.read_csv(r'C:\Users\USER\Desktop\HOSPITAL_READMISSION_PROJECT\data\cleaned_hospital_readmissions.csv')

#connect to SQLite database (or create it if it doesn't exist)
conn = sqlite3.connect(r'C:\Users\USER\Desktop\HOSPITAL_READMISSION_PROJECT\database\hospital.db')

#store table in database
df.to_sql('hospital_readmissions',conn, if_exists='replace', index = False)

conn.close()

print('Data stored in database')