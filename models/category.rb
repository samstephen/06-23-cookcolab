require_relative "../database_class_methods.rb"
require_relative "../database_instance_methods.rb"

class Category
  extend DatabaseClassMethods
  include DatabaseInstanceMethods
  
  attr_reader :id
  attr_accessor :meal
  
  # Initializes a new user object.
  #
  # user_options - Hash containing key/values.
  #   - id (optional)   - Integer of the user record in the 'users' table.
  #   - name (optional) - String of the user's name.
  #
  # Examples:
  #
  #   Category.new({ "id" => 1, "meal" => "Breakfast" })
  #   Category.new({ "id" => 2, "meal" => "Lunch" })
  #   Category.new({ "id" => 3, "meal" => "Dinner" })
  #   Category.new({ "id" => 4, "meal" => "Snack" })
  #
  # Returns a Category object.
  def initialize(options={})
    @id = options["id"]
    @meal = options["meal"]
  end

end






