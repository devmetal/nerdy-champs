class Event < ApplicationRecord
  before_create :set_event_code

  has_one :owner, class_name: 'User'

  has_and_belongs_to_many :users

  validates :location, presence: true
  validates :title, presence: true

  def owner
    user
  end

  private

  def set_event_code
    self.code = SecureRandom.hex(10)[0..8]
  end
end
