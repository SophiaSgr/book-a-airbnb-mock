# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
GrandmotherOffer.destroy_all 



queen = User.create!(email: 'apple@apple.com', password: 'applelovesapple', username: 'apple')
leslie = User.create!(email:"a@gmail.de", first_name:"boba", last_name:"ross", username:"bobr", password: "123456")
hanna = User.create!(email:"s@gmail.de", first_name:"bobs", last_name:"ross", username:"bobr", password: "123456")
georgina = User.create!(email:"d@gmail.de", first_name:"bobd", last_name:"ross", username:"bobr", password: "123456")
tammy = User.create!(email:"f@gmail.de", first_name:"bobf", last_name:"ross", username:"bobr", password: "123456")
susanna = User.create!(email:"g@gmail.de", first_name:"bobg", last_name:"ross", username:"bobr", password: "123456")
lena = User.create!(email:"h@gmail.de", first_name:"bobj", last_name:"ross", username:"bobr", password: "123456")
lora = User.create!(email:"j@gmail.de", first_name:"bobh", last_name:"ross", username:"bobr", password: "123456")
lotti = User.create!(email:"b@gmail.de", first_name:"bobk", last_name:"ross", username:"bobr", password: "123456")
sabrina = User.create!(email:"c@gmail.de", first_name:"bobl", last_name:"ross", username:"bobr", password: "123456")
puts 'finished'

puts 'creating grandmas'

GrandmotherOffer.create(photo: 'https://img.derwesten.de/img/promi-tv/crop229232648/1894224781-w1200-cv3_2-q85/QueenElizabeth.jpg', user_id: queen.id, first_name: 'Queen', last_name: 'Elizabeth', username: 'realQueenElizabeth', activity_price: 'one big smile', activity_type: 'Playing cricket', description: 'Hi, I am the Queen, but you cann call me Elizabeth. I am very into buisquits and love hanging out with my family. If you like playing cricket, you are more then welcome to join me and a cup of tea. Sincerly - Elizabeth')


GrandmotherOffer.create(photo: 'https://images.unsplash.com/photo-1551861568-332d2a6e2330?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1950&q=80', user_id: leslie.id, first_name: 'Leslie', last_name: 'Bauwers', username: 'leeeeeslie', activity_price: 'cake', activity_type: 'reading stories', description: 'Hello, my name is Leslie, I am 78 years old. I like to tell people some old storys, so they wont be forgotten in the future. If you like to listen and have some cake, feel free to join me.')


GrandmotherOffer.create!(photo: 'https://images.unsplash.com/photo-1447005497901-b3e9ee359928?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1867&q=80',user_id: hanna.id, first_name: 'Queen', last_name: 'Elizabeth', username: 'Hannah54', activity_price: 'one big smile', activity_type: 'playing cricket', description: 'Hi, I am the Queen, but you cann call me Elizabeth. I am very into buisquits and love hanging out with my family. If you like playing cricket, you are more then welcome to join me and a cup of tea. Sincerly - Elizabeth')

GrandmotherOffer.create!(photo: 'https://images.unsplash.com/photo-1505685679686-2490cab6217d?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1950&q=80',user_id: georgina.id, first_name: 'Leslie', last_name: 'Bauwers', username: 'Georgina', activity_price: 'cake', activity_type: 'reading stories', description: 'Hello, my name is Leslie, I am 78 years old. I like to tell people some old storys, so they wont be forgotten in the future. If you like to listen and have some cake, feel free to join me.')

GrandmotherOffer.create!(photo: 'https://images.unsplash.com/photo-1577368287217-16ff9373a733?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80',user_id: tammy.id, first_name: 'Leslie', last_name: 'Bauwers', username: 'GrandmaTammy', activity_price: 'cake', activity_type: 'reading stories', description: 'Hello, my name is Leslie, I am 78 years old. I like to tell people some old storys, so they wont be forgotten in the future. If you like to listen and have some cake, feel free to join me.')

GrandmotherOffer.create!(photo: 'https://images.unsplash.com/photo-1536122522160-72ca6bd783ba?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80',user_id: susanna.id, first_name: 'Leslie', last_name: 'Bauwers', username: 'Suzana', activity_price: 'cake', activity_type: 'reading stories', description: 'Hello, my name is Leslie, I am 78 years old. I like to tell people some old storys, so they wont be forgotten in the future. If you like to listen and have some cake, feel free to join me.')

GrandmotherOffer.create!(photo: 'https://images.unsplash.com/photo-1556889882-73ea40694a98?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1976&q=80',user_id: lena.id, first_name: 'Leslie', last_name: 'Bauwers', username: 'Granny-Lena', activity_price: 'cake', activity_type: 'reading stories', description: 'Hello, my name is Leslie, I am 78 years old. I like to tell people some old storys, so they wont be forgotten in the future. If you like to listen and have some cake, feel free to join me.')

GrandmotherOffer.create!(photo: 'https://images.unsplash.com/photo-1581579439002-e29ac578f8d4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1834&q=80',user_id: lora.id, first_name: 'Leslie', last_name: 'Bauwers', username: 'Lora', activity_price: 'cake', activity_type: 'reading stories', description: 'Hello, my name is Leslie, I am 78 years old. I like to tell people some old storys, so they wont be forgotten in the future. If you like to listen and have some cake, feel free to join me.')

GrandmotherOffer.create!(photo: 'https://images.unsplash.com/photo-1519975258993-60b42d1c2ee2?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80',user_id: lotti.id, first_name: 'Leslie', last_name: 'Bauwers', username: 'TheOnlyLotti', activity_price: 'cake', activity_type: 'reading stories', description: 'Hello, my name is Leslie, I am 78 years old. I like to tell people some old storys, so they wont be forgotten in the future. If you like to listen and have some cake, feel free to join me.')

GrandmotherOffer.create!(photo: 'https://images.unsplash.com/photo-1504778995644-77707b624d5a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80',user_id: sabrina.id, first_name: 'Leslie', last_name: 'Bauwers', username: 'Sabrina', activity_price: 'cake', activity_type: 'reading stories', description: 'Hello, my name is Leslie, I am 78 years old. I like to tell people some old storys, so they wont be forgotten in the future. If you like to listen and have some cake, feel free to join me.')




p "CREATED #{GrandmotherOffer.count}"


# GrandmotherOsffer.new(first_name: 'Queen', last_name: 'Elizabeth', username: 'realQueenElizabeth', activity_price: 'one big smile', activity_type: 'playing cricket', description: 'Hi, I am the Queen, but you cann call me Elizabeth. I am very into buisquits and love hanging out with my family. If you like playing cricket, you are more then welcome to join me and a cup of tea. Sincerly - Elizabeth')git add .

# GrandmotherOsffer.new(first_name: 'Queen', last_name: 'Elizabeth', username: 'realQueenElizabeth', activity_price: 'one big smile', activity_type: 'playing cricket', description: 'Hi, I am the Queen, but you cann call me Elizabeth. I am very into buisquits and love hanging out with my family. If you like playing cricket, you are more then welcome to join me and a cup of tea. Sincerly - Elizabeth')

# GrandmotherOsffer.new(first_name: 'Queen', last_name: 'Elizabeth', username: 'realQueenElizabeth', activity_price: 'one big smile', activity_type: 'playing cricket', description: 'Hi, I am the Queen, but you cann call me Elizabeth. I am very into buisquits and love hanging out with my family. If you like playing cricket, you are more then welcome to join me and a cup of tea. Sincerly - Elizabeth')

# GrandmotherOsffer.new(first_name: 'Queen', last_name: 'Elizabeth', username: 'realQueenElizabeth', activity_price: 'one big smile', activity_type: 'playing cricket', description: 'Hi, I am the Queen, but you cann call me Elizabeth. I am very into buisquits and love hanging out with my family. If you like playing cricket, you are more then welcome to join me and a cup of tea. Sincerly - Elizabeth')

# GrandmotherOsffer.new(first_name: 'Queen', last_name: 'Elizabeth', username: 'realQueenElizabeth', activity_price: 'one big smile', activity_type: 'playing cricket', description: 'Hi, I am the Queen, but you cann call me Elizabeth. I am very into buisquits and love hanging out with my family. If you like playing cricket, you are more then welcome to join me and a cup of tea. Sincerly - Elizabeth')

# GrandmotherOsffer.new(first_name: 'Queen', last_name: 'Elizabeth', username: 'realQueenElizabeth', activity_price: 'one big smile', activity_type: 'playing cricket', description: 'Hi, I am the Queen, but you cann call me Elizabeth. I am very into buisquits and love hanging out with my family. If you like playing cricket, you are more then welcome to join me and a cup of tea. Sincerly - Elizabeth')

# GrandmotherOsffer.new(first_name: 'Queen', last_name: 'Elizabeth', username: 'realQueenElizabeth', activity_price: 'one big smile', activity_type: 'playing cricket', description: 'Hi, I am the Queen, but you cann call me Elizabeth. I am very into buisquits and love hanging out with my family. If you like playing cricket, you are more then welcome to join me and a cup of tea. Sincerly - Elizabeth')
