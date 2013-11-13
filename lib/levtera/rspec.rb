if defined?(RSpec)
  require 'shoulda-matchers'

  root = Pathname.new(__FILE__).parent.parent.parent
  Dir[root.join('spec', 'support', '**', '*.rb').to_s].each { |f| require f }
else
  puts 'Cannot add levtera shared examples, RSpec not defined!'
end
