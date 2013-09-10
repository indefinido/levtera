module Levtera::Concerns
  module Vehicle
    ENGINE_FEEDINGS_NAMES = %w(gasoline alcohol disel multifuel)

    extend ActiveSupport::Concern

    included do
      include Provided

      field :fabrication_year  , type: Integer
      field :model_year        , type: Integer
      field :plate             , type: String
      field :engine_feeding    , type: Symbol

      embedded_in :version

      validates :fabrication_year , numericality: { only_integer: true, allow_nil: true, greater_than: 0 }
      validates :model_year       , numericality: { only_integer: true, allow_nil: true, greater_than: 0 }
      validates :engine_feeding   , inclusion: { in: ENGINE_FEEDINGS_NAMES }
    end
  end
end
