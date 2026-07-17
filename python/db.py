import oracledb
import config


def get_connection():

    connection = oracledb.connect(
        user=config.DB_USER,
        password=config.DB_PASSWORD,
        dsn=config.DB_DSN
    )

    return connection

