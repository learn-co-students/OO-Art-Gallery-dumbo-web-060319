class Painting
@@all=[]
  attr_reader :title, :price , :artist, :gallery



  def initialize(title, price , artist , gallery)
    @title = title
    @price = price
    @artist=artist
    @gallery=gallery
      @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    sum=0
    all.each { |painting| sum+=painting.price  }
    sum
  end
end
