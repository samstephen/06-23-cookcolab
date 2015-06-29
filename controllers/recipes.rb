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
  
    erb :"recipes/recipe_added"
end



# ---------------------------------------------------------------------
# Find a recipe
# ---------------------------------------------------------------------

# Step 1: List all users.

# done in find_user.erb

# Each user in the ERB is linked to a route that displays a their profile.

# Step 2: Let manager select a user
get "/recipe/:id" do
  @recipe = Recipe.find(params[:id])
  # Takes manager to user/user.id
  erb :"recipe/show"
end




# ---------------------------------------------------------------------
# Links from recipes_manager to CRUD
# ---------------------------------------------------------------------
get "/recipes/:webpage" do
  erb :"recipes/#{params["webpage"]}"
end
