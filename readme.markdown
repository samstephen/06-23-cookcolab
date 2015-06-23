#CookcoLab

###A Collaborative Cookbook
The CookcoLab app is a multi-user created collection of recipes.

####Description
```
A user can have more than one recipe.

Each recipe will show:
	- the publish date
	- a list of ingredients associated
	- documented instructions by the user
	
The author of a recipe may categorize the recipe by Breakfast, Lunch, Dinner, or Snack.

The author may also tag the recipe - e.g. #quick #simple #bacon
```

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




####Stretches
```
A user can "like" a user's recipe.
A user can comment on a user's recipe.
A user can search for a recipe by category/tag.
A user can delete their recipe.
A user can delete their profile 
	- doing so removes their recipes and likes?
```