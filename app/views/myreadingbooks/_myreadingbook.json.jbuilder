json.extract! myreadingbook, :id, :name, :author, :genre, :rating, :created_at, :updated_at
json.url myreadingbook_url(myreadingbook, format: :json)
