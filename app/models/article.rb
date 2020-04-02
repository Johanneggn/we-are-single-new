class Article < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  validates :title, :text, presence: true
end
