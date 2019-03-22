def pet_shop_name(petshop)
  return petshop[:name]
end

def total_cash(petshop)
  return petshop[:admin][:total_cash]
end

def add_or_remove_cash(petshop, money)
  petshop[:admin][:total_cash] += money
end

def pets_sold(petshop)
  return petshop[:admin][:pets_sold]
end

def increase_pets_sold(petshop, number_of_pets)
  petshop[:admin][:pets_sold] += number_of_pets
end

def stock_count(petshop)
  return petshop[:pets].count
end

def pets_by_breed(petshop, breed)
  # pets_by_breed = []
  # for pet in petshop[:pets]
  #   if pet[:breed] == breed
  #     pets_by_breed.push(pet)
  #   end
  # end
  # return pets_by_breed
  # refactored this to a shorter version..
  return petshop[:pets].select{|pet| pet[:breed] == breed}
end

def find_pet_by_name(petshop, name)
  # pet_by_name = []
  # for pet in petshop[:pets]
  #   if pet[:name] == name
  #     pet_by_name = pet
  #   end
  # end
  # return pet_by_name
  # making a big assumption that there's only one pet matching or no pets
  return petshop[:pets].select{|pet| pet[:name] == name}[0]
end

def remove_pet_by_name(petshop, name)
  pet_to_remove = find_pet_by_name(petshop, name)
  petshop[:pets].delete(pet_to_remove)
end

def add_pet_to_stock(petshop, pet)
  petshop[:pets].push(pet)
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, money)
  customer[:cash] -= money
end

def customer_pet_count(customer)
  return customer[:pets].count()
end

def add_pet_to_customer(customer, pet)
  customer[:pets].push(pet)
end

def customer_can_afford_pet(customer, pet)
  if customer[:cash] >= pet[:price]
    return true
  end
  return false
end
