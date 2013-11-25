Fabricator :levtera_make, class_name: 'Make' do
  name         { Forgery::Name.company_name }
  vehicle_type { Levtera::Concerns::Make::VEHICLE_TYPES.sample }
end
