# spec/models/publisher_spec.rb
require 'rails_helper'

RSpec.describe Publisher, type: :model do
  describe 'Associations' do
    it { should have_many(:books) }
  end

  describe 'Validations' do
    it { should validate_presence_of(:name) }

    it "should be invalid with a 'nil' name" do
      publisher = Publisher.new(name: nil)
      expect(publisher.valid?).to be_falsey
    end

    it 'should be invalid with a blank name' do
      publisher = Publisher.new(name: '')
      expect(publisher.valid?).to be_falsey
    end

    it 'should be valid with a name' do
      publisher = Publisher.new(name: "O'Reilly")
      expect(publisher.valid?).to be_truthy
    end

    it 'has a valid factory' do
      expect(build(:publisher)).to be_valid
    end
  end
end
