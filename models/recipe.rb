require_relative "../database_class_methods.rb"
require_relative "../database_instance_methods.rb"

class Recipe
  extend DatabaseClassMethods
  include DatabaseInstanceMethods
  
  attr_reader :id
  attr_accessor :title, :published_date, :content, :user_id, :category_id
  
  # Initializes a new user object.
  #
  # user_options - Hash containing key/values.
  #   - id (optional)   - Integer of the user record in the 'users' table.
  #   - name (optional) - String of the user's name.
  #
  # Examples:
  #
  #   User.new({ "id" => 1, "name" => "Sam Stephen" })
  #   => #<User:f32o23424>  INTEGER PRIMARY KEY, title TEXT, published_date TEXT, content TEXT, user_id INTEGER, category_id INTEGER
  #
  # Returns a Recipe object.
  def initialize(options={})
    @id = options["id"]
    @title = options["title"]
    @published_date = options["published_date"]
    @content = options["content"]
    @user_id = options["user_id"]
    @category_id = options["category_id"]
  end

end






