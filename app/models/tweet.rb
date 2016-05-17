class Tweet < ActiveRecord::Base
  belongs_to :user

  validates :message, presence: true, length: {maximum: 140, too_long: "Tweets can only be 140 characters long."}
  validates :user_id, presence: true
end
