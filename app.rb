require "pry"
require "sinatra"
require "sinatra/reloader"

# SQL/Database
require "sqlite3"
require_relative 'database_setup.rb'

# Models
require_relative 'models/user.rb'
require_relative 'models/recipe.rb'
require_relative 'models/meal.rb'
require_relative 'models/tag.rb'
require_relative 'models/recipe_tag.rb'

# Controllers
require_relative "controllers/main.rb"
require_relative "controllers/users.rb"
require_relative 'controllers/recipes.rb'
require_relative 'controllers/tags.rb'


# create rows for categories
Meal.add({ "id" => 1, "meal" => "Breakfast" })
Meal.add({ "id" => 2, "meal" => "Lunch" })
Meal.add({ "id" => 3, "meal" => "Dinner" })
Meal.add({ "id" => 4, "meal" => "Snack" })