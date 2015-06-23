#CookcoLab

###A Collaborative Cookbook
The CookcoLab app is a multi-user created collection of recipes.


####Description

A user can have more than one recipe.

#####Each recipe will show:
* the publish date
* a list of ingredients associated
* documented instructions by the user

The author of a recipe may categorize the recipe by Breakfast, Lunch, Dinner, or Snack.

The author may also tag the recipe - e.g. #quick #simple #bacon


####Database Tables
#####users
```
id
name
```
#####categories

```
id
meal
```
#####recipes
```
id
title
published_date
content
user_id
category_id
```
#####tags
```
id
tag
```
#####recipe_tags
```
recipe_id
tag_id
```


####First Model and Views
#####should be able to 
* create a user
* create a recipe
* create a category
* create a tag
* asign tags to a recipe
* asign a category to a recipe
* asign a recipe to a user
* view all users
* view all recipes
* view recipes of a user
* search for recipes by category
* search for recipes by tag
* delete a recipe of a user
* delete a user & users recipes

#####shouldn't be able to 
* delete a user with recipes, without also removing that users recipes
* create a recipe without a category
* create a recipe without a tag
* duplicate tags


####Stretches
A user can "like" a user's recipe.
A user can comment on a user's recipe.
