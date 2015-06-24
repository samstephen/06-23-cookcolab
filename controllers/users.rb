# ---------------------------------------------------------------------
# User Menu
# ---------------------------------------------------------------------

# Step 1: Display a form into which the user will add new user info.
get "/user_manager" do
  erb :"users/user_manager"
end


# <li><a href="/add_user">Add a user</a></li>
# <li><a href="/find_user">Find a user</a></li>
# <li><a href="/update_user">Change user's name</a></li>
# <li><a href="/delete_user">Delete a user</a></li>
# <li><a href="/home">Return home</a></li>





# ---------------------------------------------------------------------
# Add a user
# ---------------------------------------------------------------------

# Step 1: Display a form into which the user will add new user info.
get "/add_user" do
  erb :"users/add_user_form"
end

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
