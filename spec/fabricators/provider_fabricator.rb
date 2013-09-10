Fabricator :levtera_provider do
  provider_id   { sequence(:provider) { |provider_id| provider_id} }
  provider      { %q(fipe facebook).map(&:to_sym).sample }
end
