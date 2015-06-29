# ---------------------------------------------------------------------
# Recipes Menu
# ---------------------------------------------------------------------

get "/recipes_manager" do
  erb :"recipes/recipes_manager"
end



# ---------------------------------------------------------------------
# Add a recipe
# ---------------------------------------------------------------------

get "/save_recipe" do
  @new_recipe = Recipe.add({"title" => params["title"], "published_date" => params["published_date"],
    "content" => params["content"], "user_id" => params["user_id"], "meal_id" => params["meal_id"]})
    
  @new_tags_arr = [params["tag"]]
  
  @new_tags_arr.each do |tag|
    Tag.add( { "tag" => "#{tag}" } )
  end
    
    erb :"recipes/recipe_added"
end







# ---------------------------------------------------------------------
# Links from recipes_manager to CRUD
# ---------------------------------------------------------------------
get "/recipes/:webpage" do
  erb :"recipes/#{params["webpage"]}"
end
