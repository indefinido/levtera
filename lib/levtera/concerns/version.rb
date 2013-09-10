module Levtera::Concerns

  module Version
    extend ActiveSupport::Concern

    BODY_TYPES         = %w(covertible coupe pickup minivan truck)
    TRANSMISSION_TYPES = %w(mechanic automatic semi-automatic)

    included do
      include Provided

      field :name                , type: String
      field :engine_displacement , type: String
      field :traction            , type: String
      field :power               , type: Integer
      field :doors_amount        , type: Integer
      field :valves_amount       , type: Integer
      field :body_type           , type: Symbol
      field :transmission_type   , type: Symbol

      embedded_in :model
      embeds_many :vehicle

      validates :power             , numericality: { only_integer: true, allow_nil: true, greater_than: 0 }
      validates :doors_amount      , numericality: { only_integer: true, allow_nil: true, greater_than_or_equal_to: 0 }
      validates :valves_amount     , numericality: { only_integer: true, allow_nil: true, greater_than: 0 }
      validates :body_type         , inclusion: { in: BODY_TYPES }
      validates :transmission_type , inclusion: { in: TRANSMISSION_TYPES }
    end
  end
end
