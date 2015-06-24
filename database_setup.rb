# load/create our database for this program
CONNECTION = SQLite3::Database.new("cookcolab.db")

# creating tables (no need for "IF NOT EXISTS" because tables will be deleted immediately when loading app.rb)
CONNECTION.execute("CREATE TABLE IF NOT EXISTS users (id INTEGER PRIMARY KEY, name TEXT);")

# transforms sqlite tables(or rows/columns) to ruby hashes
CONNECTION.results_as_hash = true
