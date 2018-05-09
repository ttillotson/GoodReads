# json.extract! @new_membership, :book_id, :shelf
json.status do 
  json.set! @new_membership.book_id do 
    json.extract! @shelf, :name
    json.extract! @new_membership, :shelf_id
  end
end

json.shelf do 
  json.extract! @new_membership, :book_id, :shelf_id
end
