require_relative "../database_class_methods.rb"
require_relative "../database_instance_methods.rb"

class RecipeTag
  extend DatabaseClassMethods
  include DatabaseInstanceMethods

  attr_accessor :recipe_id, :tag_id
  
  # Initializes a new recipe_tag object.
  #
  # recipe_tags_options - Hash containing key/values.recipe_tags
  #   - id (optional)   - Integer of the tag record in the 'tags' table.
  #   - tag (optional) - String of the tag's tag.
  #
  # Examples:
  #
  #   RecipeTag.new({ "recipe_id" => 1, "tag_id" => 2 })
  #   => #<RecipeTag:f32o23424> 
  #
  # Returns a Tag object.
  def initialize(options={})
    @recipe_id = options["recipe_id"]
    @tag_id = options["tag_id"]
  end

end



