# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
# movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
# Character.create(name: "Luke", movie: movies.first)
# movies = Movie.create([{ title: "Captain America: The First Avenger ", year: 2011, plot: "Captain America: The First Avenger will focus on the early days of the Marvel Universe when Steve Rogers", director: "Joe Johnston", english: "true", image: "https://resizing.flixster.com/zI8rKOHTUXdkJwTry4YESw867aw=/173x270/v1.bTsxMTE1ODMzOTtqOzE4ODUzOzIwNDg7MTc0NTsyNzI0" }])

# movies = Movie.create([{ title: "Captain Marvel ", year: 2019, plot: "The story follows Carol Danvers as she becomes one of the universe's most powerful heroes when Earth is caught in...", director: "Anna Boden", english: "true", image: "https://resizing.flixster.com/MjfRJviMZv0-kROFKCcErCwMkEM=/180x267/v1.bTsxMjkyNjcxNjtqOzE4Nzk1OzIwNDg7MTY4ODsyNTAw" }])

# movies = Movie.create([{ title: "Iron Man", year: 2008, plot: "Billionaire industrialist and genius inventor Tony Stark is kidnapped and forced to build a devastating weapon. Instead, using his intelligence...", director: "n/a", english: "true", image: "https://resizing.flixster.com/LRm85z0lrWJw6WlPhS7U1JiZ_fk=/180x270/v1.bTsxMTIxODE4OTtqOzE4ODUzOzIwNDg7MTAwMDsxNTAw" }])

# movies = Movie.create([{ title: "Black Panther", year: 2018, plot: "Black Panther follows TChalla who, after the events of Captain America: Civil War, returns home to the isolated, technologically advanced...", director: "Ryan Coogler", english: "true", image: "https://resizing.flixster.com/egw34EEyA8wGO0LI4FbWT1hREbE=/180x267/v1.bTsxMjU1NzcyNTtqOzE4ODAwOzIwNDg7MTY4ODsyNTAw" }])

# Actors

actor = Actor.create([{ first_name: "Chadwick", last_name: "Boseman", known_for: "Black Panther", age: 43, gender: "Male", movie_id: 1 }])
