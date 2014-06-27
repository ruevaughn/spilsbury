json.array!(@obituaries) do |obituary|
  json.extract! obituary, :id, :first_name, :middle_name, :last_name, :born_date, :death_date
  json.url obituary_url(obituary, format: :json)
end
