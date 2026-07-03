from sqlalchemy import create_engine, text

USERNAME = "postgres"
PASSWORD = "Patriotism0102"
HOST = "localhost"
PORT = "5432"
DATABASE = "retail_sales"

engine = create_engine(
    f"postgresql+psycopg://{USERNAME}:{PASSWORD}@{HOST}:{PORT}/{DATABASE}"
)

with engine.connect() as conn:
    print("Connection to the database established successfully.")

    version = conn.execute(text("SELECT version();")).scalar()

    print(f"Database version: {version}")