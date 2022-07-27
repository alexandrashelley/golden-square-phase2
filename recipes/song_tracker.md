# {{PROBLEM}} Reading Time Estimate

## 1. Describe the problem

_Put or write the user story here. Add any claryifying notes you might have._

> As a user
> So that I can keep track of my music listening
> I want to add tracks I've listened to and see a list of them.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
class SongTracker
  def initialize

  end

  def add_songs(song)
  # song is a string that gets added to our list of songs
  # returns nothing
  end

  def list
  # outputs an array/list of songs that have been added 
  end
end

```
## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# 1. calling list method returns an array
songs = SongTracker.new
songs.list # => []

# 2. calling add_song adds song to our list
songs = SongTracker.new
songs.add_song("It's Gonna Be Lonely")
songs.list # => ["It's Gonna Be Lonely"]

# 3. calling add_song again, shows old and new songs that
# have been added to our list
songs = SongTracker.new
songs.add_song("It's Gonna Be Lonely")
songs.add_song("I Wanna Be Your Lover")
songs.list # => ["It's Gonna Be Lonely", "I Wanna Be Your Lover"

# 4. calling add_song with a duplicate song, list ignores update
songs = SongTracker.new
songs.add_song("It's Gonna Be Lonely")
songs.add_song("It's Gonna Be Lonely")
songs.list # => ["It's Gonna Be Lonely"]

# 5. calling add_song with an empty string shows error message
songs = SongTracker.new
songs.add_song("")
expect { songs.list }.to raise_error "You did not enter a song"

# 6. calling an empty list shows error message
songs = SongTracker.new
expect { songs.list }.to raise_error "Your list is empty"
```

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._