#CookcoLab

###A Collaborative Cookbook
The CookcoLab app is a multi-user created collection of recipes.


####Description

A user can have multiple recipes; a recipe can have multiple tags and one meal.

#####Each recipe's content will show:
* a list of ingredients associated
* documented instructions of cooking the recipe by the user

A recipe will also have a "published date."
The author may categorize the recipe by Breakfast, Lunch, Dinner, or Snack.
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
meal_id
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
* create a meal
* create a tag
* asign tags to a recipe
* assign a meal to a recipe
* assign a recipe to a user
* view all users
* view all recipes
* view recipes of a user
* search for recipes by meal
* search for recipes by tag
* delete a recipe of a user
* delete a user & users recipes

#####shouldn't be able to 
* delete a user with recipes, without also removing that users recipes
* create a recipe without a meal
* create a recipe without a tag
* duplicate tags
* delete a user with recipes, without also removing that user's recipe's recipe_tags

####Stretches
* when a recipe is added, the publish date will automatically be assigned
* A user can "like" a user's recipe.
* A user can comment on a user's recipe.
