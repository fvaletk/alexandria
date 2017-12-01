# == Schema Information
#
# Table name: authors
#
#  id          :integer          not null, primary key
#  given_name  :string
#  family_name :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

# app/models/author.rb
class Author < ApplicationRecord
  # Associations
  has_many :books

  # Validations
  validates :given_name, presence: true
  validates :family_name, presence: true
end
