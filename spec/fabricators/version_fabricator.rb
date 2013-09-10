Fabricator :levtera_version do
  name                { sequence(:version) { |i| "Version #{i}" } }
  engine_displacement { %w(1.0 1.5 2.0 3.5).sample }
  traction            { %w(1x1 2x2 2x1 4x4 4x3 6x5 4x2).sample }
  power               { Forgery::Basic.number }
  doors_amount        { Forgery::Basic.number }
  valves_amount       { Forgery::Basic.number }
  body_type           { BODY_TYPES.sample }
  transmission_type   { TRANSMISSION_TYPES.sample }
end
