class Post < ApplicationRecord
  validates_presence_of :title
  validates_length_of :body, :minimum => 10

  has_many :comments
end
