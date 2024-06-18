# app/forms/event_code_validator.rb
class EventCodeValidator
  include ActiveModel::Model

  attr_accessor :code

  validates :code, presence: true, format: { with: /\A[a-zA-Z0-9]+\z/, message: 'only allows alphanumeric characters' }
end
