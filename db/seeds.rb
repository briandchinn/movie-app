# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(name: "Brian", email: "brian@gmail.com", password_digest: "password")
User.create(name: "Franny", email: "franny@gmail.com", password_digest: "password")


Movie.create(title: "The Godfather", year: "1972", plot: "The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.", director: "Francis Ford Coppola")
Movie.create(title: "The Shawshank Redemption", year: "1994", plot: "Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.", director: "Frank Darabont")
Movie.create(title: "Schindler's List", year: "1993", plot: "In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.", director: "Steven Spielberg")
Movie.create(title: "Raging Bull", year: "1980", plot: "The life of boxer Jake LaMotta, who's violence and temper that lead him to the top in the ring destroyed his life outside of it.", director: "Martin Scorsese")
Movie.create(title: "Casablanca", year: "1942", plot: "A cynical American expatriate struggles to decide whether or not he should help his former lover and her fugitive husband escape French Morocco.", director: "Michael Curtiz")


Actor.create(first_name: "Morgan", last_name: "Freeman", gender: "Male", age: "72", known_for: "Se7en")
Actor.create(first_name: "Leonardo", last_name: "DiCaprio", gender: "Male", age: "52", known_for: "Inception")
Actor.create(first_name: "Natalie", last_name: "Portman", gender: "Female", age: "38", known_for: "Black Swan")


Genre.create(name: "Drama")
Genre.create(name: "Action")
Genre.create(name: "Comedy")


MovieGenre.create(genre_id: 1, movie_id: 1)
MovieGenre.create(genre_id: 2, movie_id: 2)
MovieGenre.create(genre_id: 3, movie_id: 3)
MovieGenre.create(genre_id: 1, movie_id: 4)
MovieGenre.create(genre_id: 2, movie_id: 5)

