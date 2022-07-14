# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

users = User.create([{ name: "Demo User", photo: "https://i.imgur.com/XyqQZ.jpg", bio: "This is a demo user. Please do not use this user for any purpose." }, { name: "John Doe", photo: "https://i.imgur.com/XyqQZ.jpg", bio: "This is a demo user. Please do not use this user for any purpose." }])
posts = Post.create([{ title: "Demo Post", text: "This is a demo post. Please do not use this post for any purpose.", author_id: users[0].id, user_id: users[0].id }, { title: "Demo Post", text: "This is a demo post. Please do not use this post for any purpose.", author_id: users[0].id, user_id: users[0].id }, { title: "Demo Post", text: "This is a demo post. Please do not use this post for any purpose.", author_id: users[0].id, user_id: users[0].id }])
comments = Comment.create([{ text: "This is a demo comment. Please do not use this comment for any purpose.", post_id: posts[0].id, author_id: users[0].id, user_id: users[0].id }, { text: "This is a demo comment. Please do not use this comment for any purpose.", post_id: posts[0].id, author_id: users[0].id, user_id: users[0].id }, { text: "This is a demo comment. Please do not use this comment for any purpose.", post_id: posts[0].id, author_id: users[0].id, user_id: users[0].id }])
likes = Like.create([{ post_id: posts[0].id, author_id: users[0].id, user_id: users[0].id }, { post_id: posts[0].id, author_id: users[0].id, user_id: users[0].id }, { post_id: posts[0].id, author_id: users[0].id, user_id: users[0].id }])

puts "Seeded #{users.count} users, #{posts.count} posts, #{comments.count} comments, and #{likes.count} likes."