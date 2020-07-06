# rubocop:disable Layout/LineLength

class User < ApplicationRecord
  validates :username, length: { minimum: 4, message: 'Minimum Characters are 4' }, presence: true
  validates :email, format: { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i, message: 'Please use the orignal format of Email' }, presence: true
  validates :password, length: { minimum: 8 }, presence: true
end

# rubocop:enable Layout/LineLength
