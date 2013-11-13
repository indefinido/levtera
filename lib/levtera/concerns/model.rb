module Levtera::Concerns
  module Model
    extend ActiveSupport::Concern

    included do
      include Provided

      VEHICLE_TYPES = %i(motorcycle car truck)

      belongs_to :make
      has_many :versions

      field :name, type: String
      field :vehicle_type, type: Symbol

      validates :name, presence: true
      validates :vehicle_type, inclusion: { in: VEHICLE_TYPES }
    end
  end
end
