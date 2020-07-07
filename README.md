# rails-coding-challenge

Welcome to the Hive Logistics Ruby on Rails challenge! This challenge is designed for you and us to get an estimate of your current Rails abilities, as well as where there is still room for improvement. Clone this repository and run `bundle install` to get up and running. Then fill out and modify the code skeleton we've provided to complete the exercises below.

## Context
To give you a taste of life at Hive, we've chosen a (simplified) example from real life: Since we are a fulfillment company, we want to keep track of customer orders (we've already created this model for you in order.rb). Each order has a recipient and a status, which describes how far it is in the fulfillment process. Additionally, each Order is associated with one or more order items  - for example a user might place an order on Shopify that consists of a T-Shirt and a pair of socks. 

## Models and ActiveAdmin
In this exercise you'll create a simple model, and some validations, and create an ActiveAdmin page to interact with the model. 
### 1. Create a model called OrderItem. 
Each OrderItem should belong to one Order. Each OrderItem should also have a product_name attribute that indicates what product it is (for example, "Wii"). 
### 2. Add validations to OrderItem
What kind of validations do you think would make sense for OrderItem? Add them to your OrderItem model.
### 3. Create an ActiveAdmin page for OrderItem.
For inspiration, feel free to look at the ActiveAdmin page we created for Order. Your ActiveAdmin page should allow us to create new OrderItems, and delete or modify existing ones. When creating a new OrderItem, we should be able to choose with a dropdown menu which Order the new OrderItem should belong to. 

### Bonus
1. What validations do you think would make sense for Order? Add them to the model. 

2. On the ActiveAdmin page you made for creating a new OrderItem, you may see an Orders dropdown full of ugly values like `#<Order:0x00007f826fe3ccd8>`. How would you change this to instead display the id of the order? (Hint: You probably need to change the Order model). 
