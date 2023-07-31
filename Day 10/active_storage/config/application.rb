require_relative 'boot'

require 'rails/all'

require 'cloudinary'
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ActiveStorage
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    config.i18n.default_locale = :en
    config.assets.initialize_on_precompile = false
    config.exceptions_app = self.routes
    config.active_storage.service = :cloudinary
    Cloudinary.config_from_url("cloudinary://648868349926568:MjEP0Hj0mJvbTw6I7yJ92FJ8bcM@dl40wvlge")

    Cloudinary.config do |config|
      config.secure = true
    end

  end
end
