shared_examples :levtera_make do
  it_should_behave_like :levtera_provided

  it { should validate_presence_of :name }
end
