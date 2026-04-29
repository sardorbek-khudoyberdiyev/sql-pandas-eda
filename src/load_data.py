import sqlite3
import pandas as pd

df = pd.read_csv('data/raw/vgsales.csv')
conn = sqlite3.connect('data/vgsales.db')
df.to_sql('vgsales', conn, if_exists='replace', index=False)    
conn.close()

print("Data loaded successfully into SQLite database.")

