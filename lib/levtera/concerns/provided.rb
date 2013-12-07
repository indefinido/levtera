module Levtera::Concerns
  module Provided
    extend ActiveSupport::Concern

    included do
      field :provider_id , type: String
      field :provider    , type: Symbol
    end
  end
end
