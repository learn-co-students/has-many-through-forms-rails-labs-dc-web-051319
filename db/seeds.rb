# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

post1 = Post.find_or_create_by(title: "This is Flatiron",content: "I am having fun.")
post2 = Post.find_or_create_by(title: "Jade Falcon", content: "I am JADE FALCON!")
post3 = Post.find_or_create_by(title: "This is it.", content: "So I face my final curtain.")

category1 = Category.find_or_create_by(name: "Gaming")
category2 = Category.find_or_create_by(name: "Life Events")

user1 = User.find_or_create_by(username: "noobmaster1",email: "trolol@troll.com")
user2 = User.find_or_create_by(username: "joestar",email: "jojostar@jojo.com")
user3 = User.find_or_create_by(username: "JohnDoe",email: "johnbasic@basic.com")
user4 = User.find_or_create_by(username: "pilyo",email: "pill@yo.com")

PostCategory.find_or_create_by(post_id: post1.id, category_id: category2.id)
PostCategory.find_or_create_by(post_id: post2.id, category_id: category1.id)
PostCategory.find_or_create_by(post_id: post3.id, category_id: category2.id)

Comment.find_or_create_by(post_id: post1.id , user_id: user1.id , content: "LUL! SHUT UP!")
Comment.find_or_create_by(post_id: post2.id, user_id: user1.id , content: "JADE FALCON MY A..")
Comment.find_or_create_by(post_id: post3.id, user_id: user1.id , content: "GOOD FOR YOU! >:)")
Comment.find_or_create_by(post_id: post1.id , user_id: user2.id , content: "Great! Enjoy it! Ignore the fool above.")
Comment.find_or_create_by(post_id: post2.id , user_id: user3.id , content: "Jade falcon is Basic.")
Comment.find_or_create_by(post_id: post3.id , user_id: user4.id , content: "Yo yo yo!")
Comment.find_or_create_by(post_id: post3.id , user_id: user2.id , content: "It'll get better.")
Comment.find_or_create_by(post_id: post1.id , user_id: user1.id , content: " I SAID STFU!")