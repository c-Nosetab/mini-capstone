Product.create!([
  {name: "Nabisco Chips Ahoy! Chewy Chocolate Chip Cookies", price: "4.0", description: "Crammed with real chocolate chips. Resealable package. Made in Mexico.", stock: true, supplier_id: 1},
  {name: "Famous Amos Bite Size Cookies, Chocolate Chip & Pecans", price: "1.0", description: "I \"d-double\" dare you to eat just one! Semi-sweet chocolate chips. Since 1894. It takes heart to make a great cookie.", stock: true, supplier_id: 3},
  {name: "Keebler Fudge Stripes Original Cookies", price: "3.0", description: "We don't fudge on our fudge. When fudge is rich and creamy and made with only 100% real cocoa, no matter where it goes, it's wonderfully delicious. So that's exactly what we Elves use. Then we add a little of our magic to bake up oh-so-many delightful and different kinds of fudge cookies. We love our fudge. Oh, how it can please.", stock: true, supplier_id: 3},
  {name: "Nantucket Pepperidge Farm Chunk Cookies", price: "3.0", description: "Baked with ingredients to satisfy the most decadent cookie cravings.", stock: true, supplier_id: 2},
  {name: "Oreo Original Chocolate Chip Cookies", price: "4.0", description: "Milk's favorite cookie. Sealed; slit appears when opened.", stock: true, supplier_id: 3},
  {name: "Nabisco Chips Ahoy! Chocolate Chip Cookies", price: "4.0", description: "This is a thing", stock: true, supplier_id: 1}
])
Supplier.create!([
  {name: "Nabisco", email: "time@nabisco.com", phone: "555-345-6789"},
  {name: "Pepperidge Farm", email: "george@pepfarms.com", phone: "678-222-5555"},
  {name: "General Cookies", email: "whatthecookies@gmail.com", phone: "555-123-9876"}
])
User.create!([
  {name: "Chris", email: "Chris@chris.com", password_digest: "$2a$10$na3gxvRJTRQ9wni/jLO4p.hYRQ5/.kXvfk9nYf372xg6VtChvp1nq", admin: false},
  {name: "Chris", email: "Chris@chris.com", password_digest: "$2a$10$cZt.sJ2KGN1qzFOqV7NEoeR8Kd5vLlNcy9qkDoDzq5YDDII2awpxa", admin: false},
  {name: "asklfj", email: "alsjf@gmail.com", password_digest: "$2a$10$7xkd62rVPLrNE/LLT4rnnOeuVmQFinrPh318FsItp2K97hwsigZC6", admin: false},
  {name: "bob", email: "bob@gmail.com", password_digest: "$2a$10$mv69/bQ3958LVUFPbH8/j.Xre5UQQgNe.ThCh99g7y3xUFw2HpNGG", admin: false},
  {name: "chris", email: "cpbateson@gmail.com", password_digest: "$2a$10$850H2YR3JOLjOJr6SPn26OfRSWQojHdfB5ghKyUmj9i1KxCZAYKdq", admin: true},
  {name: "steve", email: "steve@gmail.com", password_digest: "$2a$10$xQjqIvVLaXiyRtyYoaONMu6Wzuc125QKTGhgE6wY9dIyaDPKcm9..", admin: false}
])

Image.create!([
  {url: "http://target.scene7.com/is/image/Target/12942943?wid=520&hei=520&fmt=pjpeg", product_id: 2},
  {url: "http://2.bp.blogspot.com/--K9wxIh3rhg/Uf-MxeYW4NI/AAAAAAAAXK4/mDKYeQHpjsY/s1600/brownie-filled-chewy-chips-ahoy-cookies-02.JPG", product_id: 2},
  {url: "https://i5.walmartimages.com/asr/8788fbfb-6323-499f-857e-9e8a7ca4a987_1.dcb5284e666b79b60423948a79ecd1f5.jpeg", product_id: 2},
  {url: "http://coupondivas.com/wp-content/uploads/2013/05/chips-ahoy.png", product_id: 1},
  {url: "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcTOSeyQ9xHsrTm4QsqkcA6S901LrPWgdI6xbqfw5QELb39TsvsX5lbjM9TYkV0&usqp=CAE", product_id: 4},
  {url: "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcQ_YNi1vfjTwXubum5ERu0JAyoONkemeCF5o5QQQwGaTH8krc0yzWJ4Gz9eSTjqXpJgR5XFyh0&usqp=CAE", product_id: 6},
  {url: "https://campbells55.wpengine.com/pepperidge-farm/wp-content/uploads/sites/46/2017/02/00014100077138CR_144537.102.jpg", product_id: 3},
  {url: "https://a414d8b8be7ecf690411-24d26dc954d93c2734fedc44a84a7714.ssl.cf2.rackcdn.com/0014100078600_NF_hyvee_default_medium.jpeg", product_id: 3},
  {url: "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcQoT85ve0bcPJV5mC6k5qMeIdTkrF_OwKK08wM45BUxyMQN5OEruEMFn0pxYGQydchEbto4Pc4&usqp=CAE", product_id: 5},
  {url: "http://del.h-cdn.co/assets/15/23/1600x800/landscape-1433469460-oreo-plate.jpg", product_id: 5}
])

Category.create!([
  {name: "Expensive"},
  {name: "Chocolate Chip"},
  {name: "Yummy"}
])


CategoryProduct.create!([
  {category_id: 2, product_id: 1},
  {category_id: 1, product_id: 3},
  {category_id: 3, product_id: 1},
  {category_id: 3, product_id: 4},
  {category_id: 2, product_id: 2},
  {category_id: 3, product_id: 5},
  {category_id: 3, product_id: 6},
  {category_id: 3, product_id: 3},
  {category_id: 1, product_id: 5},
  {category_id: 1, product_id: 2}
])
