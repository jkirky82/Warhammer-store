# WarHammer Marketplace 

# What is Warhammer 40k 
Warhammer 40k is a miniature  tabletop wargame made by GamesWorkshop. It involves choosing an army out of many races/factions, purchasing plastic miniatures, building, painting and then with a set of core rules and race/faction specific rules, play against other peoples armies. When Building an army it is broken down into combat rolls: HQ, troops, elites, fast attack, heavy support and transport, these each have their own set of units that can go in them, they could be 1 single model, or a unit of 5 or more models. The hobby is super fun onces invested into, but is a very expensive hobby which limits the amount of people wanting to join.

![Warhammer40k](../../docs/Warhammer.jpg)

# Problems with Warhammer 40k

The problem with warhammer 40k is that it is a very expensive hobby, one of the most expensive hobby i've ever got myself into. When building army you buy the models based on the unit, if you are buying one that is in the HQ combat roll, that can cost you around $60 for 1 model and in the troop combat roll these boxes have around 10 models in them for $100, this will come unbuilt and unpainted. Now if for a full army this can cost around $1k to $2k depending on how you build it, this isn't including paint, mats to play on and terrain to use. This makes the hobby very expensive, it is also very time consuming to build and paint every model.

With this in mind here are some of the problems the hobby faces:
  - There are really no good second hand model websites besides ebay which is hard to find specific models.
  - Some people don't have time to build and paint their own models.
  - Locacly their arent any good second hand warhammer shops.

This new website of a dedicated two way marketplace for just warhammer models, this should help long time and new players find cheaper models, these can be painted if thats what they would like or even unpainted models but just at a cheaper price.

# Why do these Need to be Solved

The game needs players for the game to stay alive, and a lot of people don't want to spend the high amounts of money and time it takes to just make 1 army. This website will help people get into the hobby with cheaper and painted or unpainted models in a more local area.

# Application Breakdown

- ## Purpose

The purpose is to make an online shop that allows users to sell or buy second hand Warhammer models for a cheaper price for a more local market rather then it being an intenational market.

- ## Functionality / features

First when using the application if this is your first time using this application you will need to create and account (this will be made with Devise) or if you're a returning user you'll need to log into you account, with a username and password that you created.

The application will allow you to make a listing to sell your model, to do this you will need an account, and will have to fill in details to make a listing.

These listings will be see by other users and give them the option to add it to their cart, and users will be able to purchase all items that are in their cart.

When users are searching for models they will be able to set filters to find what they are looking for faster, this can be by setting painted or unpainted or by selecting a specific race/faction that they want.
 
- ## Sitemap
- ## Screenshots
- ## Target Audience

The target audience are long time players or people who are wanting to get into the hobby looking to build or add cheaper models to their armies.

- ## Tech stack

  - Ruby on Rails 5.2.3
  - Heroku PaaS
  - Relational Database
  - PostgresSQL
  - Git SCM & GitHub
  - Stripe Gem
  - Devise
  - Visual Studio Code
  - balsamiq
  - HTML/CSS/JS
  - Bootstrap

# User stories for your app

As someone who has been hearing about the lore about Warhammer 40k and wanting to get into the table top of the game, but I want to collect them at a cheaper price.

Someone who has been playing the game for years I want to start collecting some better painted models for my collection.

Warhammer isn't as fun for me anymore and im looking to sell my models

# Wireframes for your app

# An ERD for your app

A like to the ERD can be found [here](https://dbdiagram.io/d/60fd519b28da596eb54c40b5)
![ERD](../../docs/ERD.PNG)

## Entities Realation

### User - Profile

This is a one to one realtionship

User PK User.id to Profile FK user_id

### User - Order

This is a one to many

User PK User.id to Order FK user_id

### User - Listing

This is a one to Many

User PK User.id to Listng user_id

### User - Cart

This is a one to one

User Pk User.id to Cart FK user_id


# Trello 

A Trello board will be kept up-to-date to keep track of everything from what needs to be completed to finished tasks to extra brainstormed ideas that could be added in later down the track.

A link to my Trello board can be found [here](https://trello.com/b/oxQecd7f/warhammer-website)

![Trello](../../docs/trello.PNG)

# Third Party Services

The third party services used in this application are:

  - Heroku

    This will be used to lunch the website
  - Stripe

    Stripe is how payment will be authorised in the website
  - Devise

    Devise will be used to to authenticate users in a sign up and login process
  - Bootstrape

    Bootstrape is used for styling and formating purposes
  - Github

    Github will be used for sources control
  - Balsamiq
  
    Wireframes will be made on balsamiq