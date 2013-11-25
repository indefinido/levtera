module Levtera::Concerns
  module Make
    extend ActiveSupport::Concern

    included do
      include Provided

      VEHICLE_TYPES = %w(motorcycle car)

      field :name, type: String
      field :vehicle_type, type: String

      has_many :models

      validates :name, presence: true
      validates :vehicle_type, inclusion: { in: VEHICLE_TYPES }
    end
  end
end
