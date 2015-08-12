class Artists
  @@artists = []

  define_method(:initialize) do |artist|
    @artist = artist
    # @artist_id = artist
    @albums = []
  end

  define_singleton_method(:all) do
    @@artists
  end

  # define_method(:album) do
  #   @album
  # end
  #
  # define_method(:album_id) do
  #   @album_id
  # end

  define_method(:artist) do
    @artist
  end

  # define_method(:artist_id) do
  #   @artist_id
  # end

  define_method(:save) do
    @@artists.push(self)
  end

  define_singleton_method(:clear) do
    @@artists = []
  end

  define_method(:albums) do
    @albums
  end
  
  define_method(:add_albums) do |album|
    @albums.push(album)
  end

end
