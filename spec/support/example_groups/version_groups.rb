shared_examples :levtera_version do
  it_should_behave_like :levtera_provided

  describe 'validations' do
    it "waiting for array of items validator support"
    # it { should validate_numericality_of(:power).to_allow only_integer: true, allow_nil: true, greater_than: 0 }
    # it { should validate_numericality_of(:doors_amount ).to_allow only_integer: true, allow_nil: true, greater_than_or_equal_to: 0 }
    # it { should validate_numericality_of(:valves_amount).to_allow only_integer: true, allow_nil: true, greater_than: 0 }
    # it { should validate_inclusion_of(:transmission_type).on(Levtera::Concerns::Version::TRANSMISSION_TYPES) }
    # it { should validate_inclusion_of(:body_type).on(Levtera::Concerns::Version::BODY_TYPES) }
    it { should validate_uniqueness_of(:provider_id).scoped_to(:model_id) }
  end

end
