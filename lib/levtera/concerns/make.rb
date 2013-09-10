module Levtera::Concerns
  module Make
    extend ActiveSupport::Concern

    included do
      include Provided

      field :name, type: String
      has_many :models

      validates :name, presence: true
    end
  end
end
