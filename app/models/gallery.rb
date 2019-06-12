class Gallery
  attr_reader :name, :city

  @@all = []
  
  def initialize(name, city)
    @name = name
    @city = city

    @@all << self
  end

  def paintings 
    Painting.all.select { |painting| painting.gallery == self }
  end

  def artists
    paintings.map { |painting| painting.artist }
  end

  def artist_names
    artists.map { |artist| artist.name }
  end

  def most_expensive_painting 
    most_expensive_painting = paintings[0]
    paintings.each do |painting| 
      if painting.price > most_expensive_painting.price 
        most_expensive_painting = painting 
      end
    end
    most_expensive_painting
  end


  def self.all 
    @@all 
  end

end
