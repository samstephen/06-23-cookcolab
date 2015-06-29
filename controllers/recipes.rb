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
  @user = @recipe.author
  @meal = @recipe.meal
  # Takes manager to user/user.id
  erb :"recipe/show"
end




# CHANGE A USER'S NAME
# ---------------

# Step 1: From user's profile (show.erb), select "update"

# Step 2: provide form for user to type a new name for user.
get "/recipe/change_recipe_form/:id" do
  @recipe = Recipe.find(params[:id])
  erb :"recipe/change_recipe_form"
end

# Step 3: params["x"] is the id of the user being modified,
# from the users table convert row of "id" to an object
# store params["name"] in @user_name.name
# UPDATE column "name" row of id with what was entered in form. 
post "/change_recipe" do
  
  @recipe = Recipe.new({"id" => params["x"].to_i, "title" => params["title"], "published_date" => params["published_date"],
    "content" => params["content"], "user_id" => params["user_id"].to_i, "meal_id" => params["meal_id"].to_i})
  @recipe.save
  # confirm user's name was updated in database
  erb :"recipe/updated_recipe"
end







# ---------------------------------------------------------------------
# Links from recipes_manager to CRUD
# ---------------------------------------------------------------------
get "/recipes/:webpage" do
  erb :"recipes/#{params["webpage"]}"
end
