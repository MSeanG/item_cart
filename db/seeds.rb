
Item.destroy_all
10.times { Item.create!(name: "Item", description: "I am a description.", image_url: "http://placecage.com/200/200", price: 1.00) }
