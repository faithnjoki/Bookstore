json.extract! mybook, :id, :name, :genre, :rating, :created_at, :updated_at
json.url mybook_url(mybook, format: :json)
