# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.destroy_all
Location.destroy_all

Location.create(name:"ān huī", description:"安徽",image:"anhui.jpg")
Location.create(name:"běi jīng", description:"北京",image:"beijing.jpg")
Location.create(name:"chóng qìng", description:"重庆",image:"chongqing.jpg")
Location.create(name:"fú jiàn", description:"福建",image:"fujian.jpg")
Location.create(name:"guǎng dōng", description:"广东",image:"guangdong.jpg")
Location.create(name:"guǎng xī", description:"广西",image:"guangxi.jpg")
Location.create(name:"gān sù", description:"甘肃",image:"gansu.jpg")
Location.create(name:"guì zhōu", description:"贵州",image:"guizhou.jpg")
Location.create(name:"hé nán", description:"河南",image:"henan.jpg")
Location.create(name:"hé běi", description:"河北",image:"hebei.jpg")
Location.create(name:"hú nán", description:"湖南",image:"hunan.jpg")
Location.create(name:"hú běi", description:"湖北",image:"yunnan.jpg")
Location.create(name:"hǎi nán", description:"海南",image:"yunnan.jpg")
Location.create(name:"hēi lóng jiāng", description:"黑龙江",image:"yunnan.jpg")
Location.create(name:"jí lín", description:"吉林",image:"yunnan.jpg")
Location.create(name:"jiāng sū", description:"江苏",image:"yunnan.jpg")
Location.create(name:"jiāng xī", description:"江西",image:"yunnan.jpg")
Location.create(name:"liáo níng", description:"辽宁",image:"yunnan.jpg")
Location.create(name:"Inner Mongolia", description:"内蒙古",image:"innermongolia.jpg")
Location.create(name:"níng xià", description:"宁夏",image:"ningxia.jpg")
Location.create(name:"qīng hǎi", description:"青海",image:"qinghai.jpg")
Location.create(name:"sì chuān", description:"四川",image:"yunnan.jpg")
Location.create(name:"shān dōng	", description:"山东",image:"yunnan.jpg")
Location.create(name:"shān xī", description:"山西",image:"yunnan.jpg")
Location.create(name:"shǎan xī", description:"陕西",image:"yunnan.jpg")
Location.create(name:"shàng hǎi", description:"上海",image:'shanghai.jpg')
Location.create(name:"tiān jīn", description:"天津",image:"tianjin.jpg")
Location.create(name:"xīn jiāng", description:"新疆",image:"xinjiang.jpg")
Location.create(name:"Tibet", description:"西藏",image:"tibet.jpg")
Location.create(name:"yún nán", description:"云南",image:"yunnan.jpg")
Location.create(name:"zhè jiāng", description:"浙江",image:"zhejiang.jpg")
# Movie.create(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
# Movie.create(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
# Movie.create(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
# Movie.create(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)
p "created #{Location.count} locations"
p "created #{Itinerary.count} itineraries"


# i1 = Itinerary.new(name: , user: user, location: location)
# i1.save
# i2 = Itinerary.new(name: , user: user, location: location)
# i2.save
