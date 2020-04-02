class Client < ApplicationRecord
  belongs_to :user
  validates :first_name, :last_name, :gender, :birthdate, :email, presence: true
end
