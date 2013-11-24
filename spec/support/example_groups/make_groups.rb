shared_examples :levtera_make do
  it_should_behave_like :levtera_provided

  it { should validate_presence_of :name }
  it { should validate_inclusion_of(:vehicle_type).on(Levtera::Concerns::Make::VEHICLE_TYPES) }
end
