require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Recipegram
  class Application < Rails::Application
    config.time_zone = 'Tokyo'
    # Initialize configuration defaults for originally generated Rails 
    config.i18n.default_locale = :ja
  end
end
