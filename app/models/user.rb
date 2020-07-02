# rubocop:disable Layout/LineLength

class User < ApplicationRecord
  validates :username, length: { maximum: 40 }, presence: true
  validates :email, format: { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i, message: 'Please use the orignal format of Email' }
  validates :password, length: { minimum: 8 }
end

# rubocop:enable Layout/LineLength
