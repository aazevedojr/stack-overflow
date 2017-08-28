class Question < ApplicationRecord
  belongs_to :questioner, class_name: :User
  has_many :answers
  has_many :comments, as: :commentable
  has_many :votes, as: :votable

  validates :content, :title, null: false
end
