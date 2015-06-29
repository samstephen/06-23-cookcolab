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
  @new_recipe = Recipe.add({"title" => params["title"], "published_date" => options["published_date"],
    "content" => options["content"], "user_id" => options["user_id"], "meal_id" => options["meal_id"]})
    erb :"recipes/recipe_added"
end







# ---------------------------------------------------------------------
# Links from recipes_manager to CRUD
# ---------------------------------------------------------------------
get "/recipes/:webpage" do
  erb :"recipes/#{params["webpage"]}"
end
