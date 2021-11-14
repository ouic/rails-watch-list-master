# puts "Cleaning up database..."
# Movie.destroy_all
# puts "Database cleaned"


# ____________________________________________________________
# meilleurs films de l’API Le Wagon

require 'open-uri'
require 'json'

url = "http://tmdb.lewagon.com/movie/top_rated"
10.times do |i|
  puts "Importing movies from page #{i + 1}"
  movies = JSON.parse(open("#{url}?page=#{i + 1}").read)['results']
  movies.each do |movie|
    puts "Creating #{movie['title']}"
    base_poster_url = "https://image.tmdb.org/t/p/original"
    Movie.create(
      title: movie['title'],
      overview: movie['overview'],
      poster_url: "#{base_poster_url}#{movie['backdrop_path']}",
      rating: movie['vote_average']
    )
  end
end
puts "Movies created"

# # ____________________________________________________________
# # meilleurs films de l’API de IMBD
# # https://api.themoviedb.org/3/movie/550?api_key=b8a9f948f664eafd1b267b52c2485662&language=fr

# require 'open-uri'
# require 'json'

# # https://api.themoviedb.org/3/movie/550?api_key=b8a9f948f664eafd1b267b52c2485662
# url = 'http://tmdb.lewagon.com/movie/top_rated?&language=fr-FR'

# movies = JSON.parse(URI.open(url).read)

# movies["results"].each do |movie|
#   Movie.create(title: movie["title"], overview: movie["overview"], rating: movie["vote_average"],
#                poster_url: "https://image.tmdb.org/t/p/w500/#{movie["poster_path"]}")
# end
