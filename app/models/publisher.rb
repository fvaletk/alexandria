class Publisher < ApplicationRecord

  # Validations
  validates :name, presence: true
end
