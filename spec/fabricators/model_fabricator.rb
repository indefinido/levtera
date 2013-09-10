Fabricator :levtera_model do
  name                { sequence(:model) { |i| "Model #{i}" } }
  vehicle_type        { VEHICLE_TYPES.sample }
end
