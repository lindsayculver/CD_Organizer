require('rspec')
require('albums')

describe(Albums) do

  describe('#name') do
    it("defines the album name") do
      new_album = Albums.new("The Best of Bowie")
      expect(new_album.name()).to(eq("The Best of Bowie"))
    end
  end

  describe('.all') do
    it("creates and empty array to store all albums") do
      expect(Albums.all()).to(eq([]))
    end
  end

  describe('#save') do
    it("saves albums already entered into albums array") do
      new_album = Albums.new("The Best of Bowie")
      new_album.save()
      expect(Albums.all()).to(eq([new_album]))
    end
  end

  describe('.clear') do
    it("clears the albums array of albums") do
      Albums.new("The Best of Bowie").save()
      Albums.clear()
      expect(Albums.all()).to(eq([]))
    end
  end
end
