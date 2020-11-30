User.destroy_all
Crag.destroy_all
UserCrag.destroy_all

user1 = User.create(name: "Noah Eakin", username: "noah8", password_digest: BCrypt::Password.create('test'), location: "Seattle, WA", bio: "I love climbing", profile_pic: "https://scontent-sea1-1.xx.fbcdn.net/v/t1.0-9/13620793_10210165704243728_2416355997509709543_n.jpg?_nc_cat=111&ccb=2&_nc_sid=174925&_nc_ohc=3m0MBWcAHIEAX_6MpAY&_nc_ht=scontent-sea1-1.xx&oh=00239e44bd1d075084ad7350bb3e8ba4&oe=5FDE03E0")

crag1 = Crag.create(name: "Banks Lake", lat: 47.883, lon: -119.092, location: "Washington")
crag2 = Crag.create(name: "China Bend", lat: 48.81603, lon: -117.94775, location: "Washington")
crag3 = Crag.create(name: "Darrington", lat: 48.161, lon: -121.638, location: "Washington")
crag4 = Crag.create(name: "Exit 32 (AKA Little Si)", lat: 47.498, lon: -121.756, location: "Washington")
crag5 = Crag.create(name: "Exit 38 and Deception Crags", lat: 47.436, lon: -121.66, location: "Washington")
crag6 = Crag.create(name: "Gold Bar", lat: 47.848, lon: -121.61, location: "Washington")
crag7 = Crag.create(name: "Index", lat: 47.825, lon: -121.562, location: "Washington")
crag8 = Crag.create(name: "Leavenworth", lat: 47.543, lon: -120.711, location: "Washington")
crag9 = Crag.create(name: "Mazama", lat: 48.593, lon: -121.61, location: "Washington")
crag10 = Crag.create(name: "McLellan Rocks", lat: 47.836, lon: -117.725, location: "Washington")
crag12 = Crag.create(name: "Mt. Adams", lat: 46.201, lon: -121.502, location: "Washington")
crag12 = Crag.create(name: "Mt. Baker", lat: 48.78, lon: -121.82, location: "Washington")
crag13 = Crag.create(name: "Mt. Erie", lat: 48.453, lon: -122.627, location: "Washington")
crag14 = Crag.create(name: "Mt. Olympus", lat: 40.663, lon: -111.778, location: "Washington")
crag15 = Crag.create(name: "Mt. Rainier", lat: 46.853, lon: -121.76, location: "Washington")
crag16 = Crag.create(name: "Mt. St. Helens", lat: 46.204, lon: -122.192, location: "Washington")
crag17 = Crag.create(name: "Lonely Planet (AKA No Name Rock)", lat: 47.819, lon: -121.625, location: "Washington")
crag18 = Crag.create(name: "North Cascades", lat: 48.509, lon: -120.66, location: "Washington")
crag19= Crag.create(name: "Peshastin Pinnacles", lat: 47.542, lon: -120.521, location: "Washington")
crag20 = Crag.create(name: "Snoqualmie Pass", lat: 47.427, lon: -121.431, location: "Washington")
crag21 = Crag.create(name: "Tieton", lat: 46.684, lon: -120.958, location: "Washington")
crag22 = Crag.create(name: "Vantage (AKA Frenchman Coulee)", lat: 47.025, lon: -119.969, location: "Washington")

userCrag1 = UserCrag.create(user_id: User.all[0].id, crag_id: Crag.all[5].id)
userCrag2 = UserCrag.create(user_id: User.all[0].id, crag_id: Crag.all[7].id)
