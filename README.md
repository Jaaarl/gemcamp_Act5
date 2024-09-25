# Activity 5
Create atleast 10 records using the create method
```ruby
Product.create(name: "G14 Laptop", description: "the fastest laptop", quantity: 10, price: 100000, available: true, released_at: "2023-10-01 10:30:00" , expiry_date: nil, discount: 10)
Product.create(name: "Gardenia bread", description: "Tasty without filing", quantity: 45, price: 50, available: true, released_at: "2024-9-01 12:00:00" , expiry_date: "2024-9-10", discount: 0)
Product.create(name: "Iphone 14 Pro Max", description: "The iPhone 14 Pro Max features cutting-edge performance, an stunning Super Retina XDR display, and advanced camera capabilities for capturing every moment in brilliance.", quantity: 30, price: 50000, available: true, released_at: "2023-4-01 12:00:00" , expiry_date: nil, discount: 5)
Product.create(name: "Glasses", description: "Enhance your vision and style with our chic glasses, combining modern design with superior clarity for everyday wear.", quantity: 5, price: 50, available: true, released_at: "2024-9-01 12:00:00" , expiry_date: nil, discount: 0)
Product.create(name: "Hoodie Jacket", description: "Stay cozy and stylish in our versatile hoodie jacket, designed for ultimate comfort and a perfect fit in any season.", quantity: 0, price: 150, available: false, released_at: "2024-9-01 12:00:00" , expiry_date: nil, discount: 0)
Product.create(name: "Portable SSD", description: "Compact and high-speed, our Portable SSD offers secure storage and fast transfer speeds for all your data on the go.", quantity: 48, price: 2050, available: true, released_at: "2022-5-02 12:00:00" , expiry_date: nil, discount: 0)
Product.create(name: "Hair Gel", description: "Achieve lasting hold and effortless style with our premium hair gel", quantity: 250, price: 150, available: true, released_at: "2024-9-01 12:00:00" , expiry_date: "2026-9-10", discount: 4.5)
Product.create(name: "Polo Shirt", description: "Elevate your casual wardrobe with our classic polo shirt", quantity: 450, price: 50, available: true, released_at: "2024-9-01 12:00:00" , expiry_date: nil, discount: 3.5)
Product.create(name: "Gaming Monitor", description: "Elevate your gaming experience with our high-refresh-rate monitor, featuring stunning visuals and ultra-responsive performance for immersive gameplay.", quantity: 45, price: 50, available: true, released_at: "2024-9-01 12:00:00" , expiry_date: nil, discount: 0)
Product.create(name: "Arduino", description: "Arduino is an open-source electronics platform that enables users to create interactive projects and prototypes using programmable hardware and software.", quantity: 0, price: 2000, available: false, released_at: "2024-9-01 12:00:00" , expiry_date: nil, discount: 0)
```
Create atleast 10 records using the save method
```ruby
product = Product.new
product.name = "Wireless Earbuds"
product.description = "Experience true wireless freedom with our premium earbuds, featuring high-fidelity sound and a long-lasting battery."
product.quantity = 100
product.price = 3000
product.available = true
product.released_at = "2024-10-01 09:00:00"
product.expiry_date = nil
product.discount = 15
product.save

product = Product.new
product.name = "Smartwatch"
product.description = "Stay connected on the go with our feature-rich smartwatch, offering fitness tracking and notifications."
product.quantity = 50
product.price = 7500
product.available = true
product.released_at = "2024-11-15 08:00:00"
product.expiry_date = nil
product.discount = 20
product.save

product = Product.new
product.name = "Gaming Chair"
product.description = "Enhance your gaming experience with our ergonomic gaming chair, designed for comfort during long sessions."
product.quantity = 20
product.price = 12000
product.available = true
product.released_at = "2024-12-01 10:00:00"
product.expiry_date = nil
product.discount = 10
product.save

product = Product.new
product.name = "Bluetooth Speaker"
product.description = "Enjoy high-quality sound with our portable Bluetooth speaker, perfect for any occasion."
product.quantity = 75
product.price = 2500
product.available = true
product.released_at = "2024-10-20 14:00:00"
product.expiry_date = nil
product.discount = 5
product.save

product = Product.new
product.name = "Action Camera"
product.description = "Capture your adventures with our compact action camera, featuring 4K video and waterproof design."
product.quantity = 30
product.price = 15000
product.available = true
product.released_at = "2024-09-15 11:00:00"
product.expiry_date = nil
product.discount = 12
product.save

product = Product.new
product.name = "Electric Kettle"
product.description = "Boil water quickly with our energy-efficient electric kettle, featuring an automatic shut-off for safety."
product.quantity = 60
product.price = 2000
product.available = true
product.released_at = "2024-08-10 09:30:00"
product.expiry_date = nil
product.discount = 8
product.save

product = Product.new
product.name = "Electric Kettle"
product.description = "Boil water quickly with our energy-efficient electric kettle, featuring an automatic shut-off for safety."
product.quantity = 60
product.price = 2000
product.available = true
product.released_at = "2024-08-10 09:30:00"
product.expiry_date = nil
product.discount = 8
product.save

product = Product.new
product.name = "Electric Toothbrush"
product.description = "Achieve a superior clean with our advanced electric toothbrush, featuring multiple modes and a timer."
product.quantity = 80
product.price = 3500
product.available = true
product.released_at = "2024-06-01 10:00:00"
product.expiry_date = nil
product.discount = 10
product.save

product = Product.new
product.name = "Wireless Charger"
product.description = "Charge your devices effortlessly with our sleek wireless charger, compatible with all Qi-enabled phones."
product.quantity = 150
product.price = 2000
product.available = true
product.released_at = "2024-05-15 14:30:00"
product.expiry_date = nil
product.discount = 5
product.save

product = Product.new
product.name = "Instant Camera"
product.description = "Capture memories instantly with our easy-to-use instant camera, perfect for parties and events."
product.quantity = 40
product.price = 9000
product.available = true
product.released_at = "2024-04-10 11:00:00"
product.expiry_date = nil
product.discount = 20
product.save
```
Fetch all products where name is "Laptop".
```ruby
Product.where(name: 'Laptop')
```
Find products where price is greater than 100.
```ruby
Product.where('price > ?', 100)
```
Retrieve products where available is true.
```ruby

```
Fetch products where quantity is less than 50.

Find products where discount is exactly 10%.

Retrieve products where name contains the word "Pro".

Fetch products where description includes the word "portable".

Find products where price is between 50 and 150.

Retrieve products where available is false and quantity is greater than 0.

Fetch products where released_at is after January 1, 2023.

Find products where expiry_date is nil.

Retrieve products where released_at is before January 1, 2022.

Fetch products where quantity is between 10 and 100.

Find products where discount is greater than or equal to 5%.

Retrieve products where price is less than or equal to 200 and available is true.

Fetch products where expiry_date is before today’s date.

Find products where name starts with the letter "A".

Retrieve products where price is not equal to 100.

Fetch products where quantity is nil.

Find products where discount is not nil.

Update the price of a product where name is "Laptop" to 120.

Set the available status to false for products where quantity is 0.

Increase the discount by 5% for products where price is greater than 100.

Update the description to "Out of stock" for products where available is false.

Change the expiry_date to December 31, 2024, for products with a discount greater than 10%.

Update the quantity to 50 for products where name starts with "Pro".

Set the price to 200 for all products where discount is nil.

Mark products as available if their released_at is before January 1, 2023.

Update the price to 80 where the quantity is between 10 and 20.

Remove any discount (set to nil) for products where expiry_date is before today.

Update the name to "Premium Laptop" for products where price is more than 500.

Set the quantity to nil for products where available is false.

Update released_at to the current date for products with a price less than 50.

Reduce the price by 20% for products where quantity is less than 5.

Set the discount to 0% for products with a price greater than or equal to 300.

Change the description to "Limited time offer" where the discount is 15%.

Set available to true for products where the price is between 100 and 200.

Increase the quantity by 10 for products where released_at is after January 1, 2023.

Set the expiry_date to nil for products where discount is less than 5%.

Update the price to 150 where the description contains "sale".

Delete a product where name is "Laptop".

Remove all products where available is false.

Delete products where price is greater than 500.

Remove all products where quantity is 0.

Delete products where discount is greater than 20%.

Remove products where expiry_date is before today’s date.

Delete all products where name starts with "Pro".

Remove products where price is less than 50.

Delete products where released_at is before January 1, 2022.

Remove products where description contains "discontinued".

Delete products where quantity is between 1 and 10.

Remove all products where available is true and price is greater than 300.

Delete products where discount is nil.

Remove products where price is exactly 100.

Delete products where released_at is more than 5 years ago.

Remove products where description includes "obsolete".

Delete products where quantity is nil.

Remove products where expiry_date is within the next month.

Delete products where discount is less than 5%.

Remove all products where available is true but quantity is less than 5.

Print the name of all the products

Write a new migration to rename the description to content

Write a new migration to add a new column image

Write a new migration to remove the column expiry_date