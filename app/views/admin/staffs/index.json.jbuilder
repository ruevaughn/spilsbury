json.array!(@staffs) do |staff|
  json.extract! staff, :id, :name, :image, :description, :job_name
  json.url staff_url(staff, format: :json)
end
