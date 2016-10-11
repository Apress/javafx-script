/*
 *  ForRangeExampleNoClass.fx - An example of a range expression that has an
 *                              interval, and is iterated over with a for 
 *                              statement, but has no containing class,
 *                              and uses the JavaFX println() operation.
 *
 *  Developed 2007 by James L. Weaver (jim.weaver at lat-inc dot com)
 */
package jfx_book;
  
for (i in [5, 10 .. 50]) {
  println("The value of the current element is {i}");
}
