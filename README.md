Making a travel attractionlist app 

# Users will be able to login, sign up and log out

# users can 
create post to add to their travel account 
see all the posts
edit the posts
delete the posts

Model 
    Users , Countries, Post 

Users Attribute 
    name  
    email
    password (bcrypt and password_digest)
    has mnay countries 
    has many post through countries 

Association 
has many countries 
has many post through countries

Countries 
    country_name

Association

    has many posts
    belong to many users 

Post 
    countries_id
    season 
    content 
    user_id 

Association 
    belong users
    belong to countries 
    
