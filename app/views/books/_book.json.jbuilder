json.extract! book, :id, :name, :isbn, :author, :year_publication, :editorial, :created_at, :updated_at
json.url book_url(book, format: :json)
