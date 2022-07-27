class SongTracker
  def initialize
    @list = []
  end

  def add_song(song)
    fail "You did not enter a song" if song.empty?
    @list << song unless @list.include? song
  end

  def list
    fail "Your list is empty" if @list.empty?
    @list
  end
end