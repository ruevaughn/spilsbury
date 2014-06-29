json.array!(@guestbook_signatures) do |guestbook_signature|
  json.extract! guestbook_signature, :id, :guestbook_id, :name, :message
  json.url guestbook_signature_url(guestbook_signature, format: :json)
end
