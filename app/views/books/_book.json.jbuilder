json.extract! book, :id, :name, :author, :type, :rating, :created_at, :updated_at
json.url book_url(book, format: :json)
