first_user = User.create(name: 'Versatile', photo: 'https://avatars.githubusercontent.com/u/80094659?v=4', bio: 'Mastering things Everyday.')
second_user = User.create(name: 'Yidne', photo: 'https://avatars.githubusercontent.com/u/104775335?v=4', bio: 'The potential for coding and playing the saxophone is unlimited')
third_user = User.create(name: 'Bese', photo: 'https://avatars.githubusercontent.com/u/23375153?v=4', bio: 'Your time is limited, so dont waste it living someone else life')

# Posts Section
first_post = Post.create(author_id: first_user.id, title: 'My First Blog Post', text: 'I am excited to start my blogging journey.')
second_post = Post.create(author_id: first_user.id, title: 'My Thoughts on the Latest Trends', text: 'Here are my opinions on the latest industry trends.')
third_post = Post.create(author_id: first_user.id, title: 'My Favorite Tools for Productivity', text: 'These are the tools I use to stay productive.')
fourth_post = Post.create(author_id: second_user.id, title: 'Why I Love Saxophone', text: 'Playing Saxophone is my passion and here is why.')
fifth_post = Post.create(author_id: second_user.id, title: 'How I Manage My Time', text: 'Here are my tips for managing time effectively.')
sixth_post = Post.create(author_id: second_user.id, title: 'My Favorite Saxophone Lines', text: 'These are the famous saxophont lines that I love the most.')
seventh_post = Post.create(author_id: third_user.id, title: 'My Travel Adventures', text: 'Here are some of my favorite travel adventures.')
eighth_post = Post.create(author_id: third_user.id, title: 'My Favorite Books', text: 'These are the books that have had the biggest impact on me.')
nineth_post = Post.create(author_id: third_user.id, title: 'My Goals for the Future', text: 'Here are my goals for the future and how I plan to achieve them.')

# Comments section

first_comment = Comment.create(author_id: first_user.id, post_id: first_post.id, text: 'Great first post, looking forward to more!')
second_comment = Comment.create(author_id: second_user.id, post_id: second_post.id, text: 'Interesting thoughts, thanks for sharing.')
third_comment = Comment.create(author_id: third_user.id, post_id: third_post.id, text: 'Nice post, keep up the good work!')
fourth_comment = Comment.create(author_id: first_user.id, post_id: fourth_post.id, text: 'Loved this post, thanks for sharing.')
fifth_comment = Comment.create(author_id: second_user.id, post_id: second_post.id, text: 'I respectfully disagree with your opinion.')
sixth_comment = Comment.create(author_id: third_user.id, post_id: sixth_post.id, text: 'This post really resonated with me, thanks for writing it.')
seventh_comment = Comment.create(author_id: first_user.id, post_id: fifth_post.id, text: 'Great tips, I will definitely try them out.')
eighth_comment = Comment.create(author_id: second_user.id, post_id: seventh_post.id, text: 'Can you please provide more details about this?')
nineth_comment = Comment.create(author_id: third_user.id, post_id: fifth_post.id, text: 'Thanks for sharing your experience.')
tenth_comment = Comment.create(author_id: first_user.id, post_id: eighth_post.id, text: 'I think the idea is interesting, but needs more development.')
eleventh_comment = Comment.create(author_id: second_user.id, post_id: eighth_post.id, text: 'I agree, the idea needs more clarification.')
twelveth_comment = Comment.create(author_id: third_user.id, post_id: nineth_post.id, text: 'This is really impressive work, keep it up!')

# Create likes for user posts

first_like = Like.create(author_id: third_user.id, post_id: first_post.id)
second_like = Like.create(author_id: second_user.id, post_id: second_post.id)
third_like = Like.create(author_id: first_user.id, post_id: third_post.id)
fourth_like = Like.create(author_id: first_user.id, post_id: fourth_post.id)
fifth_like = Like.create(author_id: third_user.id, post_id: fifth_post.id)
sixth_like = Like.create(author_id: second_user.id, post_id: sixth_post.id)
seventh_like = Like.create(author_id: third_user.id, post_id: seventh_post.id)
eighth_like = Like.create(author_id: first_user.id, post_id: eighth_post.id)
ninth_like = Like.create(author_id: third_user.id, post_id: nineth_post.id)
