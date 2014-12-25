json.array!(@lettures) do |letture|
  json.extract! letture, :id, :data, :consumofascia1, :consumofascia2, :consumofascia3, :consumofascia1periodoprecedente, :consumofascia2periodoprecedente, :consumofascia3periodoprecedente, :produzionefascia1, :produzionefascia2, :produzionefascia3, :immissionefascia1, :immissionefascia2, :immissionefascia3
  json.url letture_url(letture, format: :json)
end
