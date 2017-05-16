# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# product = Product.new(name: "", price: "",image: "", description: "")
# product.save

# product = Product.new(name: "", price: "",image: "", description: "")
# product.save

# product = Product.new(name: "", price: "",image: "", description: "")
# product.save

# product = Product.new(name: "", price: "",image: "", description: "")
#Dare Breaktime, Chips Ahoy, Famous Amos, Keebler Chips Deluxe, Key Food, Pepperidge Farm Nantucket, Trader Joe’s,  Tate’s, Voortman, and Whole Foods 365

supplier = Supplier.create(name: "Nabisco", email: 'time@nabisco.com', phone: '555-345-6789')

supplier = Supplier.create(name: 'Pepperidge Farm', email: 'george@pepfarms.com', phone: '678-222-5555')

supplier = Supplier.create(name: 'General Cookies', email: 'whatthecookies@gmail.com', phone: '555-123-9876')