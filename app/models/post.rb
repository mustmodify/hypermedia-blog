class Post < ApplicationRecord
  validates_presence_of :title
  validates_length_of :body, :minimum => 10

  has_many :comments

  def published
    self.published_at
  end

  def published=(value)
    if value
      self.publised_at ||= Time.now
    else
      self.published_at = nil
    end
  end
end
