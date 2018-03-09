# Rails Decal Spring 2018 Lab 2: Associations

## Overview

Welcome to Lab 2 of the Rails Decal! In this lab, you will get practice with:
- Associations
- Migrations
- Routes
- MVC

## Getting Started

Feel free to clone this app and get started from there. Remember to run `bundle install`. Alternatively, you may also start the app from scratch by doing:

```
rails new lab2
cd lab2
```
## Models
**Step 1** 

Let's begin by creating two models with the following attributes:
### Trainer
```
name: a string containing the name of the trainer
age: an integer that contains the age of the trainer
```
### Pokemon
```
name: a string containing the name of the pokemon
attack: an integer representing the attack points of the pokemon
```

Finally, run `rails db:migrate` to create your tables.

**Step 2**

Oh wait! I forgot that pokemon should also have a `health` column :( Luckily, we have migrations that can help us.

Generate a migration that adds a integer column to the `pokemons` table that represents the health points of a pokemon.

*Challenge:* Is there a single command you can run in your terminal to generate this for you?

## Associations

Let's create the association between pokemon(s) and trainers!

Create the migration that will add the foreign key, `trainer_id` column to the `pokemons` table. 

Then, declare the `belongs_to` and `has_many` association in the `pokemon.rb` and `trainer.rb` model classes. 

Run `rails db:migrate` and play around in the `rails console` to create some trainers and their pokemon!

## Model-View-Controller

**Step 1**
Create a trainers controller that contains an `index` method that will allow you to fetch all trainers from your database. (Don't overwrite the provided `views/trainers/index.html/erb` - if you're confused by this note, ignore it.)

*Hint:* This method should contain one line.

**Step 2**
Create a route to `'/'` (localhost:3000) for this `index` method.
The view is provided for you in `app/views/trainers/index.html.erb` if you cloned this repo. Do however take a look the code in the view file to see how things are getting displayed.

**Step 3**
You should now be able to run `rails server` and immediately see a list view of all trainers and their pokemon! Congrats!

## Seed File
Often times, it isn't very efficient to run rails console in order to create data models when you don't have a form to create them in your web app. 

Another way we can quickly populate our database with default values is through a **seed file**, located in `db/seeds.rb`. Take a look at the file to see what it does.

Finally, to seed your database, run `rails db:seed` and refresh the page to see the new data.