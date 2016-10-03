require 'rails_helper'

RSpec.describe Restaurant, type: :model do

  describe "regression test" do
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_db_column :description}
    it { is_expected.to have_db_column :address}
    it {is_expected.to belong_to :user}
    it {is_expected.to validate_presence_of :user}
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(create(:restaurant)).to be_valid
    end
  end


end
