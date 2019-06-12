class Artist
  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    @@all << self 
  end

  def paintings 
    Painting.all.select { |painting| painting.artist == self }
  end

  def galleries 
    paintings.map { |painting| painting.gallery }
  end

  def cities 
    galleries.map { |gallery| gallery.city }
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

  def prolific 
    paintings.length / years_experience
  end


  def self.all 
    @@all 
  end

  def self.total_experience 
    @@all.inject { |total_experience, artist| total_experience + artist.years_experience }
  end
  
  def self.most_prolific
    @@all.sort_by { |artist| artist.prolific }.last
  end

end
