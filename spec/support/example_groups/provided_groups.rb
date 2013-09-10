shared_examples :levtera_provided do
  it { should validate_uniqueness_of :provider_id }
end
