# load/create our database for this program
CONNECTION = SQLite3::Database.new("cookcolab.db")

# never change this table, it's not modifiable by any user
CONNECTION.execute("DROP TABLE IF EXISTS categories;")

# creating tables (no need for "IF NOT EXISTS" if dropping table)
CONNECTION.execute("CREATE TABLE IF NOT EXISTS users (id INTEGER PRIMARY KEY, name TEXT);")
CONNECTION.execute("CREATE TABLE IF NOT EXISTS recipes (id INTEGER PRIMARY KEY, title TEXT, published_date TEXT, content TEXT, user_id INTEGER, category_id INTEGER);")
CONNECTION.execute("CREATE TABLE categories (id INTEGER PRIMARY KEY, meal TEXT);")

# transforms sqlite tables(or rows/columns) to ruby hashes
CONNECTION.results_as_hash = true

