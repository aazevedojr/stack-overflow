class User < ApplicationRecord
  has_many :questions, foreign_key: :questioner_id
  has_many :answers, foreign_key: :answerer_id
  has_many :comments, foreign_key: :commenter_id
  has_many :votes, foreign_key: :voter_id

  validates :username, :email, :password, presence: true
  validates :username, :email, uniqueness: true
  validates :password, length: {minimum: 6}
  validates :email, format: {with: /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/}

  has_secure_password
end
