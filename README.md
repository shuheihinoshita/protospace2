#DB設計


##User

###association
has_many :prototypes
has_many :likes
has_many :comments

###columns
name :string
email :string
password :string
avatar :string
team :string
profile :text
works :string


##prototype

###association
has_many :Images
has_many :likes
has_many :comments
belongs_to :user

###columns
user_id :integer
title :text
catch_copy :text
concept :text


##Image

###association
belongs_to :prototype

###columns
prototype_id :integer
status :integer
content :string


##Comment

###association
belongs_to :user
belongs_to :prototype

###columns
user_id :integer
prototype_id :integer
message :text


##Like

###association
belongs_to :user
belongs_to :prototype

###columns
id :integer
user_id :integer
prototype_id :integer
