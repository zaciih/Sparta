dragons_array = ["charizard", "drogon", "fluffy", "toothless", "Niv"]

# Access Charizard
dragons_array[0]
dragons_array.first
dragons_array[-5]

# Access Niv
dragons_array[4]
dragons_array.last
dragons_array[-1]

# Access random dragon
puts dragons_array.sample

#2 Dimensional Array
dragons_and_rating_array = [["charizard", 6], ["drogon", 2], ["fluffy", 10], ["toothless", 8], ["Niv", 7]]

# Random Rating
puts dragons_and_rating_array.sample.last
