require_relative '../config/environment.rb'



artist1=Artist.new("samip" ,5)
artist2=Artist.new("ali" ,10)
artist3=Artist.new("francis" ,2)
artist4=Artist.new("tony" ,5)



gallery1=Gallery.new("new gallery" ,"Nepal")
gallery2=Gallery.new("old gallery" ,"Egipt")
gallery3=Gallery.new("gallery" ,"USA")

painting1=Painting.new("mountains",100,artist1,gallery1)
painting2=Painting.new("butterfly",150,artist1,gallery1)
painting3=Painting.new("rocket",230,artist1,gallery2)
painting4=Painting.new("girl",560,artist2,gallery3)
painting5=Painting.new("nothing",30,artist3,gallery3)
painting6=Painting.new("3d",60,artist2,gallery1)
painting7=Painting.new("computer",10,artist4,gallery2)

binding.pry

puts "Bob Ross rules."
