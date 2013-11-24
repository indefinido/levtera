module Levtera::Concerns
  module Model
    extend ActiveSupport::Concern

    included do
      include Provided

      belongs_to :make
      has_many :versions

      field :name, type: String

      validates :name, presence: true
    end
  end
end
