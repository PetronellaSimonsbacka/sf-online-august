require 'coveralls'
Coveralls.wear_merged!("rails")
require 'cucumber/rails'
ActionController::Base.allow_rescue = true
begin
  DatabaseCleaner.strategy = :transaction
rescue NameError
  raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
end
Cucumber::Rails::Database.javascript_strategy = :truncation

Warden.test_mode!
World Warden::Test::Helpers
After { Warden.test_reset! }

Geocoder.configure(lookup: :test)

Geocoder::Lookup::Test.set_default_stub(
  [
    {
      'latitude'     => 57.7089,
      'longitude'    => 11.9746,
      'address'      => 'Gothenburg, Sweden',
      'state'        => 'Gothenburg',
      'country'      => 'Sweden',
      'country_code' => 'SE'
    }
  ]
)
