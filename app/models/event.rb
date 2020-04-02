class Event < ApplicationRecord
  belongs_to :user
  validates :start_date, :end_date, :title, :description, :address, :kind, :link, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
