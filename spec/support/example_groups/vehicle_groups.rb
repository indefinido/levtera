shared_examples :levtera_vehicle do
  it_should_behave_like :levtera_provided

  it { should validate_numericality_of(:fabrication_year).to_allow only_integer: true, allow_nil: true, greater_than: 0 }
  it { should validate_numericality_of(:model_year).to_allow only_integer: true, allow_nil: true, greater_than: 0 }
  it { should validate_inclusion_of(:engine_feeding).on(Levtera::Concerns::Vehicle::ENGINE_FEEDINGS_NAMES) }

end
