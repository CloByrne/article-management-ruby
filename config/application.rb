require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module ArticleManagement
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0
    config.public_file_server.enabled = true

    # Allow cross-origin resource sharing (CORS)
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins 'http://localhost:3001'
        resource '*', headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head]
      end
    end
  end
end
