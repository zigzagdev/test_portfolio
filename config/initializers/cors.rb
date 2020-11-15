# frozen_string_literal: true
# Be sure to restart your server when you modify this file.
module RailsApi
  # 行間調整
  class Application < Rails::Application
    # Avoid CORS issues when API is called from the frontend app.
    # Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

    # Read more: https://github.com/cyu/rack-cors
    config.api_only = true

    Rails.application.config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins 'example.com'

        resource '*',
                 headers: :any,
                 methods: :resources
      end
    end
  end
end
