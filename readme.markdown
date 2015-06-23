#CookcoLab

###A Collaborative Cookbook

The CookcoLab app is a multi-user created collection of recipes.
```
A user can have more than one recipe.
Each recipe will show a list of ingredients associated and documented instructions by the user.
The author of a recipe may categorize the recipe by Breakfast, Lunch, Dinner, or Snack.
The author may also tag the recipe - e.g. #quick #simple #bacon
```
####Database Tables
#####users
```
id
name
```
#####recipes
```
id
title
published_date
content
user_id
tag_id
category_id
```
#####tags
```
id
tag
```
#####categories
```
id
category
```