# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Picture.delete_all
Follow.delete_all

guest = User.create!({username: "gunther", name: "Gunther", password: 'password', img_url: 'http://res.cloudinary.com/dchen3/image/upload/v1528934443/gunther_profile.jpg'})
ross = User.create!({username: 'dr_ross', name: "Ross Geller", password: "password1", img_url: "http://res.cloudinary.com/dchen3/image/upload/v1528934437/ross_profile.png"})
rachel = User.create!({username: 'rach', name: "Rachel Green", password: "password1",img_url: "http://res.cloudinary.com/dchen3/image/upload/v1528934430/Rachel_Green_profile.jpg"})
joey = User.create!({username: 'drake_ramoray', name: "Joey Tribbiani", password: "password1", img_url:"http://res.cloudinary.com/dchen3/image/upload/v1528934422/joey_profile.jpg"})
chandler = User.create!({username: 'bing', name: "Chandler Bing", password: "password1",img_url: "http://res.cloudinary.com/dchen3/image/upload/v1528934417/chandle_profile.jpg"})
monica = User.create!({username: 'chef_geller', name: "Monica Geller", password: "password1",img_url: "http://res.cloudinary.com/dchen3/image/upload/v1528934412/monica_profile.jpg"})
phoebe = User.create!({username: 'smelly_cat', name: "Phoebe Buffay", password: "password1", img_url: "http://res.cloudinary.com/dchen3/image/upload/v1528934401/phoebe_profile.jpg"})
mike = User.create!({username: 'mike', name: 'Mike Hannigan', password: 'password1', img_url: "http://res.cloudinary.com/dchen3/image/upload/c_scale,w_345/v1528994395/Mike_Hannigan.jpg"})
janice = User.create!({username: 'janice', name: "Janice Hosenstein", password: 'password1', img_url: "http://res.cloudinary.com/dchen3/image/upload/c_scale,w_439/v1528994484/janice-from-friends-825x580.jpg"})

picture4 = Picture.create!({img_url: 'http://res.cloudinary.com/dchen3/image/upload/c_fill,h_500,w_500/v1528934233/armadilloRoss.jpg', user: ross, caption: "Holiday Armadillo!"})
picture10 = Picture.create!({img_url:'http://res.cloudinary.com/dchen3/image/upload/c_fit,h_500,w_500/v1528934381/picture_10.jpg', user: joey , caption: 'JOEY DOESNT SHARE FOOD'})
picture16 = Picture.create!({img_url:'http://res.cloudinary.com/dchen3/image/upload/c_fit,h_501,w_500/v1528934366/picture_16.jpg', user: monica , caption: 'TBT'})
picture19 = Picture.create!({img_url: 'http://res.cloudinary.com/dchen3/image/upload/c_fit,h_500,w_500/v1528934361/picture_19.jpg', user: phoebe, caption: "TRIPLETS"})

picture2 = Picture.create!({img_url: 'http://res.cloudinary.com/dchen3/image/upload/c_fit,h_500,w_500/v1528934244/gunther.jpg', user: guest, caption: "I can dream..."})
picture5 = Picture.create!({img_url: 'http://res.cloudinary.com/dchen3/image/upload/c_fit,h_500,w_500/v1528934356/picture_5.jpg', user: ross, caption: "My favorite British sport"})
picture8 = Picture.create!({img_url:'http://res.cloudinary.com/dchen3/image/upload/c_fit,h_500,w_500/v1528934351/picture_8.jpg', user: rachel , caption: 'Got a new assistant'})
picture11 = Picture.create!({img_url:'http://res.cloudinary.com/dchen3/image/upload/c_fit,h_500,w_500/v1528934346/picture_11.jpg', user: joey , caption: 'ITS NOT TRUE'})
picture17 = Picture.create!({img_url:'http://res.cloudinary.com/dchen3/image/upload/c_fill,h_500,w_500/v1528934335/picture_17.jpg', user: monica , caption: 'The routine'})
picture20 = Picture.create!({img_url: 'http://res.cloudinary.com/dchen3/image/upload/c_fit,h_500,w_500/v1528934323/picture_20.jpg', user: phoebe, caption: "smelly cat...smelly cat"})

picture6 = Picture.create!({img_url: 'http://res.cloudinary.com/dchen3/image/upload/v1528934310/picture_6.jpg', user: ross, caption: "Vegas"})
picture9 = Picture.create!({img_url:'http://res.cloudinary.com/dchen3/image/upload/c_fit,h_500,w_500/v1528934305/picture_9.jpg', user: rachel , caption: 'Emma'})
picture15 = Picture.create!({img_url:'http://res.cloudinary.com/dchen3/image/upload/c_fit,h_500,w_500/v1528934277/picture_15.jpg', user: chandler , caption: 'The best roomie'})
picture1 = Picture.create!({img_url: 'http://res.cloudinary.com/dchen3/image/upload/v1528934394/picture1.jpg', user: guest, caption: "Welcome to Central Perk"})
picture21 = Picture.create!({img_url: 'http://res.cloudinary.com/dchen3/image/upload/c_fit,h_500,w_500/v1528934259/picture_21.jpg', user: phoebe , caption: "I GOT MARRIED"})
picture13 = Picture.create!({img_url:'http://res.cloudinary.com/dchen3/image/upload/c_fit,h_500,w_500/v1528934375/picture_13.jpg', user: chandler , caption: 'best day ever'})
picture3 = Picture.create!({img_url: "http://res.cloudinary.com/dchen3/image/upload/v1528934317/picture_3.jpg", user: guest, caption: "NYC"})
picture18 = Picture.create!({img_url:'http://res.cloudinary.com/dchen3/image/upload/c_fit,h_500,w_500/v1528934269/picture_18.jpg', user: monica , caption: 'Getting Married!'})
picture14 = Picture.create!({img_url:'http://res.cloudinary.com/dchen3/image/upload/c_fit,h_500,w_500/v1528934341/picture_14.jpg', user: chandler , caption: 'I married a turkey'})
picture22 = Picture.create!({img_url: 'http://res.cloudinary.com/dchen3/image/upload/v1528910472/dt8rgb3hfsopp4rrfkp0.jpg', user: ross, caption: 'I miss marcel'})
picture7 = Picture.create!({img_url:'http://res.cloudinary.com/dchen3/image/upload/c_fit,h_500,w_500/v1528934387/picture_7.jpg', user: rachel , caption: 'Me and Ross'})
picture12 = Picture.create!({img_url:'http://res.cloudinary.com/dchen3/image/upload/c_fit,h_500,w_500/v1528934296/picture_12.jpg', user: joey , caption: 'How you doing?'})
picture23 = Picture.create!({img_url: 'https://s33.postimg.cc/q697384a7/Bl8rf_V6_IMAA75_Dp.jpg', user:ross, caption: 'I really though it would pivot'})
picturelast = Picture.create!({img_url: 'http://res.cloudinary.com/dchen3/image/upload/v1528911108/csbcgmbgbnsk6aexuw0i.jpg', user: monica, caption: ':\')'})

follow1 = Follow.create!({user_id: guest.id, followed_id: ross.id})
follow2 = Follow.create!({user_id: guest.id, followed_id: rachel.id})
follow3 = Follow.create!({user_id: guest.id, followed_id: joey.id})
follow4 = Follow.create!({user_id: guest.id, followed_id: chandler.id})
follow5 = Follow.create!({user_id: guest.id, followed_id: monica.id})
follow6 = Follow.create!({user_id: guest.id, followed_id: phoebe.id})
follow7 = Follow.create!({user_id: ross.id, followed_id: guest.id})
follow8 = Follow.create!({user_id: ross.id, followed_id: rachel.id})
follow9 = Follow.create!({user_id: ross.id, followed_id: joey.id})
follow10 = Follow.create!({user_id: ross.id, followed_id: chandler.id})
follow11 = Follow.create!({user_id: ross.id, followed_id: monica.id})
follow12 = Follow.create!({user_id: ross.id, followed_id: phoebe.id})
follow13 = Follow.create!({user_id: rachel.id, followed_id: ross.id})
follow14 = Follow.create!({user_id: rachel.id, followed_id: guest.id})
follow15 = Follow.create!({user_id: rachel.id, followed_id: joey.id})
follow16 = Follow.create!({user_id: rachel.id, followed_id: chandler.id})
follow17 = Follow.create!({user_id: rachel.id, followed_id: monica.id})
follow18 = Follow.create!({user_id: rachel.id, followed_id: phoebe.id})
follow19 = Follow.create!({user_id: joey.id, followed_id: ross.id})
follow20 = Follow.create!({user_id: joey.id, followed_id: rachel.id})
follow22 = Follow.create!({user_id: joey.id, followed_id: chandler.id})
follow23 = Follow.create!({user_id: joey.id, followed_id: monica.id})
follow24 = Follow.create!({user_id: joey.id, followed_id: phoebe.id})
follow25 = Follow.create!({user_id: chandler.id, followed_id: ross.id})
follow26 = Follow.create!({user_id: chandler.id, followed_id: rachel.id})
follow27 = Follow.create!({user_id: chandler.id, followed_id: joey.id})
follow29 = Follow.create!({user_id: chandler.id, followed_id: monica.id})
follow30 = Follow.create!({user_id: chandler.id, followed_id: phoebe.id})
follow31 = Follow.create!({user_id: monica.id, followed_id: ross.id})
follow32 = Follow.create!({user_id: monica.id, followed_id: rachel.id})
follow33 = Follow.create!({user_id: monica.id, followed_id: joey.id})
follow34 = Follow.create!({user_id: monica.id, followed_id: chandler.id})
follow35 = Follow.create!({user_id: monica.id, followed_id: phoebe.id})
follow36 = Follow.create!({user_id: phoebe.id, followed_id: ross.id})
follow37 = Follow.create!({user_id: phoebe.id, followed_id: rachel.id})
follow38 = Follow.create!({user_id: phoebe.id, followed_id: joey.id})
follow39 = Follow.create!({user_id: phoebe.id, followed_id: monica.id})
follow40 = Follow.create!({user_id: phoebe.id, followed_id: chandler.id})
follow41 = Follow.create!({user_id: phoebe.id, followed_id: guest.id})
