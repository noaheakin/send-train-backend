# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all

user1 = User.create(username: "noah8", password: "climbing", location: "Seattle, WA", bio: "I love climbing", profile_pic: "https://scontent-sea1-1.xx.fbcdn.net/v/t1.0-9/13620793_10210165704243728_2416355997509709543_n.jpg?_nc_cat=111&ccb=2&_nc_sid=174925&_nc_ohc=3m0MBWcAHIEAX_6MpAY&_nc_ht=scontent-sea1-1.xx&oh=00239e44bd1d075084ad7350bb3e8ba4&oe=5FDE03E0")

