require './lib/swaggering'

# only need to extend if you want special configuration!
class MyApp < Swaggering
  self.configure do |config|
    config.api_version = '2016-07-15T09:42:29Z' 
  end
end

# include the api files
Dir["./api/*.rb"].each { |file|
  require file
}
