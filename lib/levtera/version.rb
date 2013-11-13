require 'active_support'

module Levtera
  # levtera version
  VERSION = "0.2.0"

  module Concerns
    extend ActiveSupport::Autoload

    autoload :Provided
    autoload :Make
    autoload :Model
    autoload :Version
    autoload :Vehicle
  end
end
