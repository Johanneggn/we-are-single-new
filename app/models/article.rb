class Article < ApplicationRecord
  belongs_to :user
  validates :title, :text, presence: true
  has_one_attached :photo
end
