=begin
production-171103-metatron-api

OpenAPI spec version: 2017-12-04T14:42:17Z

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

# Common files
require 'metatron_ruby_client/api_client'
require 'metatron_ruby_client/api_error'
require 'metatron_ruby_client/version'
require 'metatron_ruby_client/configuration'

# Models

# APIs
require 'metatron_ruby_client/api/default_api'

module MetatronClient
  class << self
    # Customize default settings for the SDK using block.
    #   MetatronClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
