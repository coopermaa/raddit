class Link < ApplicationRecord
  belongs_to :owner, class_name: "User", foreign_key: :user_id
  has_many :comments
  acts_as_votable
end
