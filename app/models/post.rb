class Post < ApplicationRecord
  has_many :comments
  #  pp post.comments
end
