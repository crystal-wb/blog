class Comment < ApplicationRecord
  belongs_to :post
  # bin/rails generate migration AddPostToComments post_id:integer:index
  # bin/rails generate migration AddPostToComments post:references
  # ls db/migrate
end
