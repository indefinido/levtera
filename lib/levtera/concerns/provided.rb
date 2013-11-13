module Levtera::Concerns
  module Provided
    extend ActiveSupport::Concern

    included do
      field :provider_id , type: String
      field :provider    , type: Symbol

      validates :provider_id, uniqueness: {allow_nil: true}
    end
  end
end
