# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

first_user = User.create(name: 'Versatile', photo: 'https://avatars.githubusercontent.com/u/80094659?v=4', bio: 'Mastering things Everyday.')
second_user = User.create(name: 'Yidne', photo: 'https://avatars.githubusercontent.com/u/104775335?v=4', bio: 'The potential for coding and playing the saxophone is unlimited')
third_user = User.create(name: 'Bese', photo: 'https://avatars.githubusercontent.com/u/23375153?v=4', bio: 'Your time is limited, so dont waste it living someone else life')

first_post = Post.create(author_id: first_user.id, title: 'My First Blog Post', text: 'I am excited to start my blogging journey.')
second_post = Post.create(author_id: first_user.id, title: 'My Thoughts on the Latest Trends', text: 'Here are my opinions on the latest industry trends.')
third_post = Post.create(author_id: first_user.id, title: 'My Favorite Tools for Productivity', text: 'These are the tools I use to stay productive.')
fourth_post = Post.create(author_id: second_user.id, title: 'Why I Love Saxophone', text: 'Playing Saxophone is my passion and here is why.')
fifth_post = Post.create(author_id: second_user.id, title: 'How I Manage My Time', text: 'Here are my tips for managing time effectively.')
sixth_post = Post.create(author_id: second_user.id, title: 'My Favorite Saxophone Lines', text: 'These are the famous saxophont lines that I love the most.')
seventh_post = Post.create(author_id: third_user.id, title: 'My Travel Adventures', text: 'Here are some of my favorite travel adventures.')
eight_post = Post.create(author_id: third_user.id, title: 'My Favorite Books', text: 'These are the books that have had the biggest impact on me.')
nineth_post = Post.create(author_id: third_user.id, title: 'My Goals for the Future', text: 'Here are my goals for the future and how I plan to achieve them.')
