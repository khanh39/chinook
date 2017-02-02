## Active Record Query Interface Assignment

## Provide one or more Active Record queries that retrieve the requested data
## below each of the following questions:


# 1a) Find the genre with the name "Hip Hop/Rap".

Genre.where('name = ?', "Hip Hop/Rap")

# 1b) Count how many tracks belong to the "Hip Hop/Rap" genre

SELECT * from genres; - to get genre_id
then

Track.where('genre_id = ?', 17).count

Proper way, from answers-
genre = Genre.find_by(name: "Hip Hop/Rap")
Track.where(genre: genre)

genre = Genre.find_by(name: "Hip Hop/Rap")
genre.tracks

# 2) Find the total amount of time required to listen to all the tracks in the database.

Track.sum(:milliseconds)


# 3a) Find the highest price of any track that has the media type "MPEG audio file".


SELECT * FROM media_types; --> get media_types ID number 1

# MediaType.find_by(name:"MPEG audio file")

Track.where(media_type_id: MediaType.find_by(name:"MPEG audio file").id).order("unit_price desc").limit(1)

random blocks used of testing
# Genre.find_each do |a|
#   puts a.name
# end
#
MediaType.find do |a|
  puts (a.id) && (a.name)
end


Track. where("unit_price = ? AND media_type_id = ?", 0.99, 1).count
3033

Track. where("unit_price = ? AND media_type_id = ?", 1.99, 1).count
0
--> all track seem to be 0.99

3b) Find the name of the most expensive track that has the media type "MPEG audio file".

name = Track. where("unit_price = ? AND media_type_id = ?", 0.99, 1)

name.first.name = "Put The Finger On You"

4) Find the 2 oldest artists.

(Artist.find_each do |a|
  puts a.created_at
end)

Artist.order(:created_at).limit(2)

## Stretch Exercise (Active Record Query Interface)


1) Find all the albums whose titles start with B.

Album.where("title ILIKE?",'B%').
