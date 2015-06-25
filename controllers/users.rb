# ---------------------------------------------------------------------
# User Menu
# ---------------------------------------------------------------------

# Step 1: Display a form into which the user will add new user info.
get "/user_manager" do
  erb :"users/user_manager"
end


# <li><a href="/users/add_user_form">Add a user</a></li>
# <li><a href="/users/find_user">Find a user</a></li>
# <li><a href="/users/update_user">Change user's name</a></li>
# <li><a href="/users/delete_user">Delete a user</a></li>
# <li><a href="/users/home">Return home</a></li>





# ---------------------------------------------------------------------
# Add a user
# ---------------------------------------------------------------------

# Step 1: Display a form into which the user will add new user info.
#get "/add_user" do
#  erb :"users/add_user_form"
#end

# Step 2: Take the information they submitted and use it to create new record.
get "/save_user" do
  # Since the form's action was "/save_user", it sent its values here.
  #
  # Sinatra stores them for us in `params`, which is a hash. Like this:
  #
  # {"name" => "Sam Stephen"}
  
  # So using `params`, we can run our class/instance methods as needed
  # to create a user record.

  @new_user = User.add({"name" => params["name"]})
    erb :"users/user_added"
end



# ---------------------------------------------------------------------
# Find a user
# ---------------------------------------------------------------------

# Step 1: List all users.
#
# done in find_user.erb
#
# Each user in the ERB is linked to a route that displays a
# form to collect their new name.

# Step 2: Let manager select a user
get "/user/:x" do
  @user_name = User.find_as_object(params["x"])
  # Takes manager to user/user.id
  erb :"user/show"
end

get "/user/change_name_form/:x" do
  erb :"user/change_name_form"
end

get "/change_user_name" do
  @user_name = User.find_as_object(params["x"].to_i)
  @user_name.name = params["name"]
  @user_name.update_cell("name", @user_name.name)
  erb :"user/updated_user_name"
end
















# Links from user_manager to CRUD
get "/users/:webpage" do
  erb :"users/#{params["webpage"]}"
end











