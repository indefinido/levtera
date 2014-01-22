module Levtera::Concerns

  module Version
    extend ActiveSupport::Concern


    TRANSMISSION_TYPES = %i(mechanic automatic semi-automatic)
    BODY_TYPES = {
      car:        %w(Buggy Conversível Hatch Minivan Perua/SW Picape Sedan Utilitário Van SUV),
      motorcycle: %w(Cross Naked Scooter/Cub Street Trail Custom Quadriciclo Sport Touring Triciclo)
    }

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

      # TODO figure out why this is commented
      # TODO implement array validator
      # validates :powers             , numericality: { only_integer: true, allow_nil: true, greater_than: 0 }
      # validates :doors_amounts      , numericality: { only_integer: true, allow_nil: true, greater_than_or_equal_to: 0 }
      # validates :valves_amounts     , numericality: { only_integer: true, allow_nil: true, greater_than: 0 }
      # validates :body_types         , inclusion: { in: BODY_TYPES }
      # validates :transmission_types , inclusion: { in: TRANSMISSION_TYPES }
      validates :provider_id, uniqueness: { allow_nil: true, scope: :model_id }
    end
  end
end
