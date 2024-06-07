class Event < ApplicationRecord
  belongs_to :user

  validates :location, presence: true
  validates :title, presence: true

  def owner
    user
  end
end
