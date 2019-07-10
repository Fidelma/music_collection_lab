require('pry')
require_relative('../models/albums')
require_relative('../models/artist')

Album.delete_all()
Artist.delete_all()

artist1 = Artist.new({
  'name' => "Mac DeMarco"
  })
artist2 = Artist.new({
  'name' => "Mac DeMarco"
  })

artist1.save()

artist1.name = "Marc DeMaco"
artist1.update()


album1 = Album.new({
  'title' => 'Here comes the cowboy',
  'genre' => 'indie',
  'artist_id' => artist1.id
  })
album2 = Album.new({
  'title' => 'Cowboys are all you need',
  'genre' => 'indie',
  'artist_id' => artist1.id
  })

  album1.save()
  album2.save()

  album1.genre = 'electro'
  album1.update()

  artist2.delete()

  album2.delete()





binding.pry
nil
