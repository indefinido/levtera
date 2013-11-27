Fabricator :levtera_vehicle, class_name: 'Vehicle' do
  fabrication_year { Forgery::Date.year past: true }
  model_year       { Forgery::Date.year past: false }

  plate do
    plate  = Forgery::Basic.text allow_lower: false, exactly: 3, allow_numeric: false
    plate += sprintf "%04d", Forgery::Basic.number(at_most: 9999)
  end

  engine_feeding  { Levtera::Concerns::Vehicle::ENGINE_FEEDINGS_NAMES.sample }
end
