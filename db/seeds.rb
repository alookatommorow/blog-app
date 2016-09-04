# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Book.create(title: "Catcher in the Rye", author: "J. D. Salinger", year: 1951)
Book.create(title: "Ulysses", author: "James Joyce", year: 1922)
Book.create(title: "Oliver Twist", author: "Charles Dickens", year: 1837)


Movie.create(title: "The Stoned Age", director: "James Melkonian", year: 1994, country: "USA")
Movie.create(title: "Wayne's World", director: "Penelope Spheeris", year: 1992, country: "USA")
Movie.create(title: "The French Connection", director: "William Friedkin", year: 1971, country: "USA")

User.create(username: "Barnabus Bradley", email: "kookenheimer@gmail.com", password: "dummy")
User.create(username: "Frogboy Haggins", email: "joe@blow.com", password: "dummy")

Like.create(user_id: 1, likeable_id: 1, likeable_type: "Movie")
Like.create(user_id: 2, likeable_id: 1, likeable_type: "Movie")
Like.create(user_id: 2, likeable_id: 1, likeable_type: "Book")
Like.create(user_id: 1, likeable_id: 3, likeable_type: "Book")
Like.create(user_id: 2, likeable_id: 2, likeable_type: "Book")
Like.create(user_id: 1, likeable_id: 2, likeable_type: "Book")


