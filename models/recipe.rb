require_relative "../database_class_methods.rb"
require_relative "../database_instance_methods.rb"

class Recipe
  extend DatabaseClassMethods
  include DatabaseInstanceMethods
  
  attr_reader :id
  attr_accessor :title, :published_date, :content, :user_id, :meal_id
  
  # Initializes a new user object.
  #
  # user_options - Hash containing key/values.
  #   - id (optional)   - Integer of the user record in the 'users' table.
  #   - name (optional) - String of the user's name.
  #
  # Examples:
  #
  #   User.new({ "id" => 1, "name" => "Sam Stephen" })
  #   => #<User:f32o23424>  INTEGER PRIMARY KEY, title TEXT, published_date TEXT, content TEXT, user_id INTEGER, meal_id INTEGER
  #
  # Returns a Recipe object.
  def initialize(options={})
    @id = options["id"]
    @title = options["title"]
    @published_date = options["published_date"]
    @content = options["content"]
    @user_id = options["user_id"]
    @meal_id = options["meal_id"]
  end
  
  def author
    User.find(@user_id)
  end
  
  def meal
    Meal.find(@meal_id)
  end


  # Get all of the rows for a table and convert hashes to objects
  #
  # Returns an Array containing Recipe objects.
  def self.user_recipes(user_id)
    
    results = CONNECTION.execute("SELECT * FROM recipes WHERE user_id = #{user_id}")

    results_as_objects = []

    results.each do |results_hash|
      results_as_objects << self.new(results_hash)
    end

    return results_as_objects
  end

end



