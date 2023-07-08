# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Assuming you have User and Recipe models defined

# Seed Users
users = [
    { username: "user1", password: "password1", image_url: "user1.jpg", bio: "User 1 bio" },
    { username: "user2", password: "password2", image_url: "user2.jpg", bio: "User 2 bio" },
    { username: "user3", password: "password3", image_url: "user3.jpg", bio: "User 3 bio" },
    { username: "user4", password: "password4", image_url: "user4.jpg", bio: "User 4 bio" },
    { username: "user5", password: "password5", image_url: "user5.jpg", bio: "User 5 bio" },
    { username: "user6", password: "password6", image_url: "user6.jpg", bio: "User 6 bio" }
  ]
  
  users.each { |user| User.create(user) }
  
  # Seed Recipes
  recipes = [
    { title: "Recipe 1", instructions: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", minutes_to_complete: 20, user_id: User.first.id },
    { title: "Recipe 2", instructions: "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", minutes_to_complete: 30, user_id: User.second.id },
    { title: "Recipe 3", instructions: "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", minutes_to_complete: 25, user_id: User.third.id },
    { title: "Recipe 4", instructions: "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", minutes_to_complete: 40, user_id: User.fourth.id },
    { title: "Recipe 5", instructions: "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", minutes_to_complete: 35, user_id: User.fifth.id },
    { title: "Recipe 6", instructions: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", minutes_to_complete: 30, user_id: User.first.id },
    { title: "Recipe 7", instructions: "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", minutes_to_complete: 45, user_id: User.second.id },
    { title: "Recipe 8", instructions: "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", minutes_to_complete: 40, user_id: User.third.id },
    { title: "Recipe 9", instructions: "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", minutes_to_complete: 35, user_id: User.fourth.id },
    { title: "Recipe 10", instructions: "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", minutes_to_complete: 50, user_id: User.fifth.id }
  ]
  
  recipes.each do |recipe|
    if recipe[:instructions].length < 50
      recipe[:instructions] = recipe[:instructions].ljust(50, ' ') # Padding instructions to meet the minimum requirement
    end
    Recipe.create(recipe)
  end
  