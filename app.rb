#require "pry"
require "sinatra"
require "sinatra/reloader"

# SQL/Database
require "sqlite3"
require_relative 'database_setup.rb'

# Models
require_relative 'models/user.rb'
# require_relative 'models/recipe.rb'
# require_relative 'models/category.rb'
# require_relative 'models/tag.rb'
# require_relative 'models/recipe_tag.rb'

# Controllers
require_relative "controllers/main.rb"
require_relative "controllers/users.rb"