module Levtera::Concerns

  module Version
    extend ActiveSupport::Concern

    BODY_TYPES         = %i(covertible coupe pickup minivan truck)
    TRANSMISSION_TYPES = %i(mechanic automatic semi-automatic)

    included do
      include Provided

      # TODO implement array validator
      # http://zogovic.com/post/32932492190/how-to-validate-array-fields-in-mongoid
      field :name                , type: String
      field :engine_displacements, type: Array
      field :tractions           , type: Array
      field :powers              , type: Array
      field :doors_amounts       , type: Array
      field :valves_amounts      , type: Array
      field :body_types          , type: Array
      field :transmission_types  , type: Array

      belongs_to :model
      has_many   :vehicles

      # validates :power             , numericality: { only_integer: true, allow_nil: true, greater_than: 0 }
      # validates :doors_amount      , numericality: { only_integer: true, allow_nil: true, greater_than_or_equal_to: 0 }
      # validates :valves_amount     , numericality: { only_integer: true, allow_nil: true, greater_than: 0 }
      # validates :body_type         , inclusion: { in: BODY_TYPES }
      # validates :transmission_type , inclusion: { in: TRANSMISSION_TYPES }
    end
  end
end
