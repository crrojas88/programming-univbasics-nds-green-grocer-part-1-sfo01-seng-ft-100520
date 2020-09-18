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
  test_var = 0
  new_cart = []
  cart.each do |items|
    new_cart_item = find_item_by_name_in_collection(cart[items][:item], new_cart)
    if new_cart_item
      new_cart_item[:count] =+ 1
    else
      new_cart_item = {
        :item => cart[items][:item],
        :price => cart[items][:price],
        :clearance => cart[items][:clearance],
        :count => 1
      }
      new_cart << new_cart_item
      binding.pry
      end
      test_var
    end
  new_cart
end


  