module Levtera::Concerns
  module Make
    extend ActiveSupport::Concern

    included do
      include Provided

      VEHICLE_TYPES = %i(motorcycle car truck)

      field :name, type: String
      has_many :models

      field :vehicle_type, type: String

      validates :name, presence: true
      validates :vehicle_type, inclusion: { in: VEHICLE_TYPES }
    end
  end
end
