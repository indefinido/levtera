require 'levtera/version'
require 'active_support'



module Levtera
  module Concerns
    extend ActiveSupport::Autoload

    autoload :Provided
    autoload :Make
    autoload :Model
    autoload :Version
    autoload :Vehicle
  end
end
