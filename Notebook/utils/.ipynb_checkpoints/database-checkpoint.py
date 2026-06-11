from sqlalchemy import create_engine
from sqlalchemy.engine import URL

def get_engine():

    connection_url = URL.create(
    drivername="mysql+pymysql",
    username="root",
    password="password@123",
    host="localhost",
    database="SupplyChain"
)

    return create_engine(connection_url)