# load/create our database for this program
CONNECTION = SQLite3::Database.new("users.db")

# creating tables (no need for "IF NOT EXISTS" because tables will be deleted immediately when loading app.rb)
CONNECTION.execute("CREATE TABLE IF NOT EXISTS users (id INTEGER PRIMARY KEY, name TEXT;")

CONNECTION.execute("CREATE TABLE IF NOT EXISTS recipes (id INTEGER PRIMARY KEY, title TEXT,
current_cost INTEGER, category TEXT, brand TEXT, retailer TEXT);")

CONNECTION.execute("CREATE TABLE IF NOT EXISTS orders (id INTEGER PRIMARY KEY, customer_id INTEGER,
purchased_on TEXT);")

CONNECTION.execute("CREATE TABLE IF NOT EXISTS order_items (id INTEGER PRIMARY KEY, order_id INTEGER,
product_id INTEGER, quantity INTEGER, item_cost INTEGER);")


# transforms sqlite tables(or rows/columns) to ruby hashes
CONNECTION.results_as_hash = true
