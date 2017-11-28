# app/models/author.rb
class Author < ApplicationRecord
  # Validations
  validates :given_name, presence: true
  validates :family_name, presence: true
end
