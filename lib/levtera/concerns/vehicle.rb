module Levtera::Concerns
  module Vehicle
    ENGINE_FEEDINGS_NAMES = %i(gasoline alcohol diesel multifuel)

    extend ActiveSupport::Concern

    included do
      field :fabrication_year  , type: Integer
      field :model_year        , type: Integer
      field :plate             , type: String
      field :engine_feeding    , type: Symbol

      belongs_to :version

      validates :fabrication_year , numericality: { only_integer: true, allow_nil: true, greater_than: 0 }
      validates :model_year       , numericality: { only_integer: true, allow_nil: true, greater_than: 0 }
      # Only allowing nil because motorcycle sometimes comes with unknown feeding type
      validates :engine_feeding   , inclusion:    { in: ENGINE_FEEDINGS_NAMES, allow_nil: true }


      # TODO implement provider domain creation configuration method on include Provided

      # Provider data on an vehicle entity must be scoped within the
      # version
      field :provider_id , type: String
      field :provider    , type: Symbol

      validates :provider_id, uniqueness: { allow_nil: true, scope: :version_id }
      validates :provider_id, uniqueness: { allow_nil: true, scope: :version_id }
    end
  end
end
