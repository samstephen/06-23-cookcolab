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
  @new_recipe = Recipe.add({"name" => params["name"]})
    erb :"recipes/recipe_added"
end



# ---------------------------------------------------------------------
# Find a user
# ---------------------------------------------------------------------

# Step 1: List all users.

# done in find_user.erb

# Each user in the ERB is linked to a route that displays a their profile.

# Step 2: Let manager select a user
get "/user/:id" do
  @user_name = User.find(params[:id])
  # Takes manager to user/user.id
  erb :"user/show"
end



# ---------------------------------------------------------------------
# User's profile
# ---------------------------------------------------------------------

# CHANGE A USER'S NAME
# ---------------

# Step 1: From user's profile (show.erb), select "update"

# Step 2: provide form for user to type a new name for user.
get "/user/change_name_form/:id" do
  erb :"user/change_name_form"
end

# Step 3: params["x"] is the id of the user being modified,
# from the users table convert row of "id" to an object
# store params["name"] in @user_name.name
# UPDATE column "name" row of id with what was entered in form. 
get "/change_user_name" do
  @user_name = User.find(params[:id])
  @user_name.name = params["name"]
  @user_name.update_cell("name", @user_name.name)
  # confirm user's name was updated in database
  erb :"user/updated_user_name"
end


# DELETE A ROW FROM USERS TABLE
# ---------------

# Step 1: From user's profile, select "delete"

# Step 2: confirm with user that deleting user will remove user from db
get "/user/confirm_delete_user/:id" do
  @user_name = User.find(params[:id])
  erb :"user/confirm_delete_user"
end

# Step 3: remove the row with @user_name.id in id column
get "/user/delete_user/:id" do
  @user_name = User.find(params[:id])
  User.delete(@user_name.id)
  # confirm user was deleted from db
  erb :"user/user_deleted"
end



# ---------------------------------------------------------------------
# Links from users_manager to CRUD
# ---------------------------------------------------------------------
get "/users/:webpage" do
  erb :"users/#{params["webpage"]}"
end




