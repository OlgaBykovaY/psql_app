import pandas as pd
import psycopg2
from sqlalchemy import create_engine

def process_data1(engine):
    conn = engine.connect()

    data = pd.read_sql('SELECT * FROM test_table', conn)


    len_str = data[data['name'].apply(lambda x: len(str(x)) < 6)]
    max = len_str['age'].max()

    return max


def process_data2(engine):
    conn = engine.connect()

    data = pd.read_sql('SELECT * FROM test_table', conn)


    len_str = data[data['name'].apply(lambda x: len(str(x)) < 6)]
    min = len_str['age'].min()

    return min



if __name__ == "__main__":
    db_user = 'postgres'
    db_password = 'password'
    db_host = 'db'
    db_port = '5432'
    db_name = 'bykova'

    engine = create_engine(f'postgresql://{db_user}:{db_password}@{db_host}:{db_port}/{db_name}')



    result1 = process_data1(engine)
    print("Максимальный возраст для имен, длина которых меньше 6 символов, равняется: ")
    print(result1)

    result2 = process_data2(engine)
    print("Минимальный возраст для имен, длина которых меньше 6 символов, равняется: ")
    print(result2)
