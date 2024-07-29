Movie.destroy_all

Movie.create!([{
  title: "Soul",
  director: "Pete Docter",
  description: "After landing the gig of a lifetime, a New York jazz pianist suddenly finds himself trapped in a strange land between Earth and the afterlife.",
  watched_on: 1.week.ago
},
{
  title: "The Lord of the Rings: The Fellowship of the Ring",
  director: "Peter Jackson",
  description: "The Fellowship of the Ring embark on a journey to destroy the One Ring and end Sauron's reign over Middle-earth. A young Hobbit known as Frodo has been thrown on an amazing adventure, when he is appointed the job of destroying the One Ring, which was created by the Dark Lord Sauron.",
  watched_on: 2.years.ago
},
{
  title: "Terminator 2",
  director: "James Cameron",
  watched_on: 3.years.ago
}])

p "Created #{Movie.count} movies"