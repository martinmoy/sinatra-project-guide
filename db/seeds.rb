martin = User.create(name: "Martin", email: "martin@martin.com", password: "password")
apple = User.create(name: "Apple", email: "apple@martin.com", password: "password")

Country.create(name: "Medoc, France", user_id: martin.id)
Country.create(name: "Bordeaux, France", user_id: apple.id)

martin.countries.create(name: "Cadillac, France")