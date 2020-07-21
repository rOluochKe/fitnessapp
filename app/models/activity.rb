class Activity < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, allow_blank: false
  validates :date, presence: true, allow_blank: false
  validates :duration, presence: true, allow_blank: false
end
