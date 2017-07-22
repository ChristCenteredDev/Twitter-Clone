class Post < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 } # Tweets are capped at 140 Characters
  default_scope -> { order(created_at: :desc) } # newest Tweets first
end
