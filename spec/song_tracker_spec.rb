require 'song_tracker'

RSpec.describe SongTracker do
  xit "calling list method returns an array" do
    songs = SongTracker.new
    expect(songs.list).to eq []
  end

  it "calling add_song adds song to our list" do
    songs = SongTracker.new
    songs.add_song("It's Gonna Be Lonely")
    expect(songs.list).to eq ["It's Gonna Be Lonely"]
  end

  it "calling add_song again, shows old and new songs that
  have been added to our list" do
    songs = SongTracker.new
    songs.add_song("It's Gonna Be Lonely")
    songs.add_song("I Wanna Be Your Lover")
    expect(songs.list).to eq ["It's Gonna Be Lonely", "I Wanna Be Your Lover"]
  end

  it "calling add_song with a duplicate song, list ignores 
  update" do
    songs = SongTracker.new
    songs.add_song("It's Gonna Be Lonely")
    songs.add_song("It's Gonna Be Lonely")
    expect(songs.list).to eq ["It's Gonna Be Lonely"]
  end

  context "error message" do
    it "calling add_song with an empty string returns error
    message" do
      songs = SongTracker.new
      expect { (songs.add_song("")) }.to raise_error "You did not enter a song"
    end

    it "calling an empty list returns error message" do
      songs = SongTracker.new
      expect { (songs.list) }.to raise_error "Your list is empty"
    end
  end
end