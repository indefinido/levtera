Fabricator :levtera_version do
  name                 { sequence(:version) { |i| "Version #{i}" } }
  engine_displacements { %w(1.0 1.5 2.0 3.5).sample }
  tractions            { %w(1x1 2x2 2x1 4x4 4x3 6x5 4x2).sample }
  powers               { Forgery::Basic.number }
  doors_amounts        { Forgery::Basic.number }
  valves_amounts       { Forgery::Basic.number }
  body_types           { BODY_TYPES.sample }
  transmission_types   { TRANSMISSION_TYPES.sample }
end
