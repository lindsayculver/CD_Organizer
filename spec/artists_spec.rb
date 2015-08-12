require('rspec')
require('artists')
require('albums')

describe(Artists) do
  before() do
    Artists.clear()
  end

  describe('.all') do
    it('returns an empty array at first to store artist name') do
      expect(Artists.all()).to(eq([]))
    end
  end

  # describe('#album') do
  #   it('adds cd') do
  #     new_cd = Cd.new("Mariah", "Butterfly")
  #     expect(new_cd.album()).to(eq("Butterfly"))
  #   end
  # end
  #
  # describe('#album_id')  do
  #   it('returns the id of the album name') do
  #     new_cd = Cd.new("Mariah", "Butterfly")
  #     expect(new_cd.album_id()).to(eq("Butterfly"))
  #   end
  # end

  describe('#artist') do
    it('returns the name of the artist') do
      new_artist = Artists.new("Mariah")
      expect(new_artist.artist()).to(eq("Mariah"))
    end
  end
  #
  # describe('#artist_id')  do
  #   it('returns the id of the artist name') do
  #     new_artist = Artists.new("Mariah")
  #     expect(new_artist.artist_id()).to(eq("Mariah"))
  #   end
  # end

  describe('#save') do
    it('saves the name of the artist into the artist array') do
      new_cd = Artists.new("Mariah")
      new_cd.save()
      expect(Artists.all()).to(eq([new_cd]))
    end
  end

  describe('.clear') do
    it('empties out saved artists') do
      Artists.new("Mariah").save()
      Artists.clear()
      expect(Artists.all()).to(eq([]))
    end
  end

  describe('#albums') do
    it('initially returns an empty array of albums for the artist') do
      new_artist = Artists.new("Mariah")
      expect(new_artist.albums()).to(eq([]))
    end
  end

  describe('#add_albums') do
    it('add new albums to an artist') do
      new_artist = Artists.new("Mariah")
      new_album = Albums.new("Butterfly")
      new_artists.add_albums(new_albums)
      expect(new_artist.albums()).to(eq([new_album]))
    end
  end




  # describe('.find_album') do
  #   it('returns a cd by its album name') do
  #     new_cd = Cd.new("Stop Making Sense")
  #     new_cd.save()
  #     second_cd = Cd.new("Butterfly")
  #     second_cd.save()
  #     expect(Cd.find_album(album_id())).to(eq(new_cd))
  #   end
  # end


end
