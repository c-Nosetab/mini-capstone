# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

product = Product.new(name: "Nabisco Chips Ahoy! Chocolate Chip Cookies", price: "4", image: "http://coupondivas.com/wp-content/uploads/2013/05/chips-ahoy.png", description: "Lift resealable package. Sooo good. Share me. Tasty. Where fun lives. Sealed; slit appears when opened.")
product.save

product = Product.new(name: "Nabisco Chips Ahoy! Chewy Chocolate Chip Cookies", price: "4", image: "http://target.scene7.com/is/image/Target/12942943?wid=520&hei=520&fmt=pjpeg", description: "Crammed with real chocolate chips. Resealable package. Made in Mexico.")
product.save

#Dare Breaktime, Chips Ahoy, Famous Amos, Keebler Chips Deluxe, Key Food, Pepperidge Farm Nantucket, Trader Joe’s,  Tate’s, Voortman, and Whole Foods 365