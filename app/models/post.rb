class Post < ActiveRecord::Base
  belongs_to :user
  validates :content, presence: true, length: { maximum: 160 }
  default_scope -> { order('created_at DESC') }
  validates :user_id, presence: true   # ensures that the post is connected to the user/there is a user present to post (associations)

  # Returns microposts from the users being followed by the given user.
  def self.from_users_followed_by(user)
    followed_user_ids = "SELECT followed_id FROM relationships
                         WHERE follower_id = :user_id"
    where("user_id IN (#{followed_user_ids}) OR user_id = :user_id",
          user_id: user.id)
  end
end
