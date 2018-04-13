json.book do 
  json.partial! 'book', book: @book
  json.extract! @book, :average_rating, :description, :published, :ISBN
end
json.reviews do 
  @book.reviews.each do |review|
    json.set! review.author_id do
      json.extract! review, :id, :book_id, :rating, :body
      json.user do
        json.extract! review.user, :id, :username
      end
    end
  end
end
if current_user
  json.shelves do 
    json.array! current_user.shelves, :id, :name, :book_ids
  end
end