if defined?(RSpec)
  require 'mongoid-rspec'
  require 'fabrication'

  root = Pathname.new(__FILE__).parent.parent.parent

  Dir[root.join('spec', 'support', '**', '*.rb').to_s].each { |f| require f }
  Dir[root.join('spec', 'fabricators', '**', '*.rb').to_s].each { |f| require f }


  RSpec.configure do |config|
    config.include Mongoid::Matchers
  end

else
  puts 'Cannot add levtera shared examples, RSpec not defined!'
end
