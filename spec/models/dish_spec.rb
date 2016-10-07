require 'rails_helper'

RSpec.describe Dish, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :dish_name }
    it { is_expected.to have_db_column :category }
    it { is_expected.to have_db_column :dish_desc }
    it { is_expected.to have_db_column :dish_price }
    it { is_expected.to have_db_column :dish_allergy }
    it { is_expected.to have_db_column :dish_cal }
    it { is_expected.to have_db_column :dish_ingredients }

    it { is_expected.to have_and_belong_to_many :menus }
    it { is_expected.to belong_to :restaurant }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :dish_name }
    it { is_expected.to validate_presence_of :category }
    it { is_expected.to validate_presence_of :dish_desc }
    it { is_expected.to validate_presence_of :dish_price }
    it { is_expected.to validate_presence_of :restaurant }
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(FactoryGirl.create(:dish)).to be_valid
    end
  end
end
