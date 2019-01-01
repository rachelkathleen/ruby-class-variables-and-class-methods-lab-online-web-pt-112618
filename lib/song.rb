class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres  = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do {|artist| artist_count[artist][@@artists.count(artist)]}
      artist_count
  end

end
