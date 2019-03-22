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
