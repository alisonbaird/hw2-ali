# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!
# - Note rubric explanation for appropriate use of external resources.

# Rubric
#
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)
# - You are welcome to use external resources for help with the assignment (including
#   colleagues, AI, internet search, etc). However, the solution you submit must
#   utilize the skills and strategies covered in class. Alternate solutions which
#   do not demonstrate an understanding of the approaches used in class will receive
#   significant deductions. Any concern should be raised with faculty prior to the due date.

# Submission
#
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======
# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========
# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Represented by agent
# ====================
# Christian Bale

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!

# Generate models and tables, according to the domain model.
# TODO!

# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.

studio_1 = Studio.new
studio_1["name"] = "Warner Brothers"

studio_1.save
p studio_1["id"]

movie_1 = Movie.new
movie_1["title"] = "Batman Begins"
movie_1["mpaa_rating"] = "PG-13"
movie_1["year_released"] = "2005"
movie_1["studio_id"] = studio_1["id"]

movie_1.save
p movie_1

movie_2 = Movie.new
movie_2["title"] = "The Dark Knight"
movie_2["mpaa_rating"] = "PG-13"
movie_2["year_released"] = "2008"
movie_2["studio_id"] = studio_1["id"]

movie_2.save
p movie_2

movie_3 = Movie.new
movie_3["title"] = "The Dark Knight Rises"
movie_3["mpaa_rating"] = "PG-13"
movie_3["year_released"] = "2012"
movie_3["studio_id"] = studio_1["id"]

movie_3.save
p movie_3

agent = Agent.new
agent["name"] = "Patrick Whitesell"

agent.save
p agent

actor_CB = Actor.new
actor_CB["actor_name"] = "Christian Bale"


actor_CB.save
p actor_CB

actor_MC = Actor.new
actor_MC["actor_name"] = "Michael Caine"


actor_MC.save
p actor_MC

actor_LN = Actor.new
actor_LN["actor_name"] = "Liam Neeson"


actor_LN.save
p actor_LN

actor_KH = Actor.new
actor_KH["actor_name"] = "Katie Holmes"


actor_KH.save
p actor_KH

actor_GO = Actor.new
actor_GO["actor_name"] = "Gary Oldman"


actor_GO.save
p actor_GO


actor_HL = Actor.new
actor_HL["actor_name"] = "Heath Ledger"


actor_HL.save
p actor_HL

actor_AE = Actor.new
actor_AE["actor_name"] = "Aaron Eckhart"


actor_AE.save
p actor_AE


actor_MG = Actor.new
actor_MG["actor_name"] = "Maggie Gyllenhaal"


actor_MG.save
p actor_MG


actor_TH = Actor.new
actor_TH["actor_name"] = "Tom Hardy"


actor_TH.save
p actor_TH

actor_JGL = Actor.new
actor_JGL["actor_name"] = "Joseph Gordon-Levitt"


actor_JGL.save
p actor_JGL

actor_AH = Actor.new
actor_AH["actor_name"] = "Anne Hathaway"


actor_AH.save
p actor_AH

cast = TheCast.new
cast["character_name"] = "Bruce Wayne"
cast["actor_id"] = actor_CB["id"]
cast["movie_id"] = movie_1["id"]

cast.save
p cast

cast = TheCast.new
cast["character_name"] = "Alfred"
cast["actor_id"] = actor_MC["id"]
cast["movie_id"] = movie_1["id"]

cast.save
p cast

cast = TheCast.new
cast["character_name"] = "Ra's Al Ghul"
cast["actor_id"] = actor_LN["id"]
cast["movie_id"] = movie_1["id"]

cast.save
p cast

cast = TheCast.new
cast["character_name"] = "Rachel Dawes"
cast["actor_id"] = actor_MG["id"]
cast["movie_id"] = movie_1["id"]

cast.save
p cast

cast = TheCast.new
cast["character_name"] = "Commissioner Gordon"
cast["actor_id"] = actor_GO["id"]
cast["movie_id"] = movie_1["id"]

cast.save
p cast

cast = TheCast.new
cast["character_name"] = "Bruce Wayne"
cast["actor_id"] = actor_CB["id"]
cast["movie_id"] = movie_2["id"]

cast.save
p cast

cast = TheCast.new
cast["character_name"] = "Joker"
cast["actor_id"] = actor_AE["id"]
cast["movie_id"] = movie_2["id"]

cast.save
p cast

cast = TheCast.new
cast["character_name"] = "Harvey Dent"
cast["actor_id"] = actor_AE["id"]
cast["movie_id"] = movie_2["id"]

cast.save
p cast

cast = TheCast.new
cast["character_name"] = "Alfred"
cast["actor_id"] = actor_MC["id"]
cast["movie_id"] = movie_2["id"]

cast.save
p cast

cast = TheCast.new
cast["character_name"] = "Rachel Dawes"
cast["actor_id"] = actor_KH["id"]
cast["movie_id"] = movie_2["id"]

cast.save
p cast

cast = TheCast.new
cast["character_name"] = "Bruce Wayne"
cast["actor_id"] = actor_CB["id"]
cast["movie_id"] = movie_3["id"]

cast.save
p cast

cast = TheCast.new
cast["character_name"] = "Commissioner Gordon"
cast["actor_id"] = actor_GO["id"]
cast["movie_id"] = movie_3["id"]

cast.save
p cast


cast = TheCast.new
cast["character_name"] = "Bane"
cast["actor_id"] = actor_TH["id"]
cast["movie_id"] = movie_3["id"]

cast.save
p cast

cast = TheCast.new
cast["character_name"] = "John Blake"
cast["actor_id"] = actor_JGL["id"]
cast["movie_id"] = movie_3["id"]

cast.save
p cast

cast = TheCast.new
cast["character_name"] = "Selina Kyle"
cast["actor_id"] = actor_AH["id"]
cast["movie_id"] = movie_3["id"]

cast.save
p cast


# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""
p studio_1["id"]
movies = Movie.where({"studio_id" => studio_1["id"]})
p movies





# Query the movies data and loop through the results to display the movies output.
# TODO!
movies = Movie.where({"studio_id" => studio_1["id"]})
puts "Movies at Warner Brothers: #{movies.count}"
for movie in movies
  puts "#{movie["title"]} #{movie["year_released"]} #{movie["mpaa_rating"]}"
end

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!

# Prints a header for the agent's list of represented actors output
puts ""
puts "Represented by agent"
puts "===================="
puts ""

# Query the actor data and loop through the results to display the agent's list of represented actors output.
# TODO!
