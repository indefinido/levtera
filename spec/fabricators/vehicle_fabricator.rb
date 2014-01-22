Fabricator :levtera_vehicle, class_name: 'Vehicle' do
  fabrication_year { Forgery::Date.year past: true }
  model_year       { Forgery::Date.year past: false }

  plate do
    plate  = Forgery::Basic.text allow_lower: false, exactly: 3, allow_numeric: false
    plate += sprintf "%04d", Forgery::Basic.number(at_most: 9999)
  end

  engine_feeding  { |attributes|
    if attributes.has_key? :version
      type = attributes[:version].model.make.vehicle_type
    else
      type = Make::VEHICLE_TYPES.sample
    end

    raise "Vehicle could not be detected while fabricating vehicle." unless type

    Levtera::Concerns::Vehicle::ENGINE_FEEDINGS_NAMES[type.to_sym].sample.to_s
  }
end
