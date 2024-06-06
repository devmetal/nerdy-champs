class Event < ApplicationRecord
  belongs_to :user

  def owner
    user
  end
end
