class ProductSerializer < ApplicationRecord
  def self.serialize(product)
 
    # start with the open brace to create a valid JSON object
    serialized_product = '{'
 
    serialized_product += '"id": ' + product.id.to_s + ', '
    serialized_product += '"name": "' + product.name + '", '
    serialized_product += '"description": "' + product.description + '", '
    serialized_product += '"inventory": "' + product.inventory + '", '
    serialized_product += '"price": "' + product.price + '", '

    # and end with the close brace
    serialized_product += '}'
  end
end
