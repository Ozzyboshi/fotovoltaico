json.array!(@prezzis) do |prezzi|
  json.extract! prezzi, :id, :datainiziovalidita, :datafinevalidita, :prezzofascia1, :prezzofascia2, :prezzofascia3
  json.url prezzi_url(prezzi, format: :json)
end
