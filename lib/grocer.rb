require 'pry'

def find_item_by_name_in_collection(name, collection)
  collection.each do |items|
    if items[:item] == name
      return items
    end
  end
  nil
end







def consolidate_cart(cart)
  new_cart = []
  cart.each do |items|
    new_cart_item = find_item_by_name_in_collection(cart[items][:item], new_cart)
    
    binding.pry
    
    end
new_cart
end


  