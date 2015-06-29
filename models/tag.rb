require_relative "../database_class_methods.rb"
require_relative "../database_instance_methods.rb"

class Tag
  extend DatabaseClassMethods
  include DatabaseInstanceMethods
  
  attr_reader :id
  attr_accessor :tag
  
  # Initializes a new tag object.
  #
  # tag_options - Hash containing key/values.tag
  #   - id (optional)   - Integer of the tag record in the 'tags' table.
  #   - tag (optional) - String of the tag's tag.
  #
  # Examples:
  #
  #   Tag.new({ "id" => 1, "tag" => "Sam Stephen" })
  #   => #<User:f32o23424> 
  #
  # Returns a Tag object.
  def initialize(options={})
    @id = options["id"]
    @tag = options["tag"]
  end

end






