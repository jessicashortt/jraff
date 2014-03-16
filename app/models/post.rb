class Post < ActiveRecord::Base
  belongs_to :user
  validates :content, presence: true, length: { maximum: 160 }
  default_scope -> { order('created_at DESC') }
  validates :user_id, presence: true   # ensures that the post is connected to the user/there is a user present to post (associations)

end
