/*
 *  SequenceExample.fx - An example creating a sequence literal and using
 *                       some sequence related features of JavaFX to work
 *                       with it.
 *
 *  Developed 2007 by James L. Weaver (jim.weaver at lat-inc dot com)
 */
package jfx_book;

// Literally define the planets sequence, leaving out Jupiter and Uranus
var planets:String* = ["Mercury", "Venus", "Earth", "Mars",
                       "Saturn", "Neptune"];

// Print out the third element in the array, which is element 2
// since arrays are zero-based.
println("The third planet is:{planets[2]}");

// Print out all planets by iterating over the planets sequence
for (planet in planets) {
  println("{planet} is a planet in our solar system");
}
println("");

// Insert Uranus before Neptune (which is currently in position 5)
println("Inserting Uranus before Neptune");
insert "Uranus" before planets[5];

// Insert Jupiter after Mars (which is currently in position 3)
println("Inserting Jupiter after Mars");
insert "Jupiter" after planets[3];

// Add Pluto to the end of the sequence.
println("Inserting Pluto as the last planet");
insert "Pluto" into planets;

// Add Sun to the beginning of the sequence 
println("Inserting the Sun into the beginning");
insert "Sun" as first into planets;

// Print out all planets by iterating over a sequence that is the same
// size as the planets sequence, and reference the corresponding element
// in the planets array.
for (i in [0.. sizeof planets - 1]) {
  println("{planets[i]} is a planet in our solar system");
}
println("");

// Delete the Sun (which is currently in position 0)
println("Deleting the Sun in position 0");
delete planets[0];

// Query for the indexof Pluto and delete it
println("Querying for the indexof Pluto");
var indices = foreach (planet in planets 
                       where planet == "Pluto") indexof planet;
println("Pluto is in position {indices}");
if (sizeof indices >= 0) {
  println("Deleting Pluto");
  delete planets[indices];
}

// Query for and print all of the planets run together in reverse order
var allPlanetsRunTogether = select planet from planet in reverse planets;
println(allPlanetsRunTogether);
println("");

// Use select to query for all of the planets with more than 5 characters
var somePlanets;
somePlanets = select "{planet},"  from planet in planets 
              where planet.length() > 5;
println("The {sizeof somePlanets} planets with more than 5 characters are: 
    {somePlanets}");
println("");

// Use foreach to query for all of the planets that begin with 
// the letter "N" or later
somePlanets = foreach (planet in planets where planet >= "N") "{planet},";
println("The {sizeof somePlanets} planets in the second half of the alphabet are: 
    {somePlanets}");
