json.array!(@funerals) do |funeral|
  json.extract! funeral, :id, :location, :service_begins, :visitation, :interment
  json.url funeral_url(funeral, format: :json)
end
