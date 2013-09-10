module Levtera::Concerns
  module Model
    extend ActiveSupport::Concern

    included do
      include Provided

      VEHICLE_TYPES = %w(motorcycle car truck)

      belongs_to :make

      field :name, type: String
      field :vehicle_type, type: String
      field :versions

      validates :name, presence: true
      validates :vehicle_type, inclusion: { in: VEHICLE_TYPES }
    end
  end
end
