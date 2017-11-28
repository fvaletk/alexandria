# == Schema Information
#
# Table name: publishers
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

# app/models/publisher.rb
class Publisher < ApplicationRecord
  # Validations
  validates :name, presence: true
end
