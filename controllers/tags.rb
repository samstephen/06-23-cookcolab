# ---------------------------------------------------------------------
# Recipes Menu
# ---------------------------------------------------------------------

get "/tags_manager" do
  erb :"tags/tags_manager"
end



# ---------------------------------------------------------------------
# Add a recipe
# ---------------------------------------------------------------------

get "/save_tag" do

  @new_tags_arr = params["tag"].split(",")
  @new_tags_arr.each do |tag|
    Tag.add( { "tag" => "#{tag}" } )
  end
    
    erb :"tags/tag_added"
end







# ---------------------------------------------------------------------
# Links from recipes_manager to CRUD
# ---------------------------------------------------------------------
get "/tags/:webpage" do
  erb :"tags/#{params["webpage"]}"
end
