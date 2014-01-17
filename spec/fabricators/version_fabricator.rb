Fabricator :levtera_version, class_name: 'Version' do
  name                 { sequence(:version) { |i| "Version #{i}" } }
  engine_displacements { %w(1.0 1.5 2.0 3.5).sample 2 }
  tractions            { %w(1x1 2x2 2x1 4x4 4x3 6x5 4x2).sample 2 }
  powers               { [ Forgery::Basic.number,Forgery::Basic.number ] }
  doors_amounts        { [ Forgery::Basic.number,Forgery::Basic.number ] }
  valves_amounts       { [ Forgery::Basic.number,Forgery::Basic.number ] }
  body_types           { Levtera::Concerns::Version::BODY_TYPES[[:car, :motorcycle].sample].sample 2 }
  transmission_types   { Levtera::Concerns::Version::TRANSMISSION_TYPES.sample 2 }
end
