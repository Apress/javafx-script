/*
 *  SquaredNumbers.fx - The program file for the "Squared Numbers"
 *                      exercise in chapter 4.
 *
 *  Developed 2007 by James L. Weaver (jim.weaver at lat-inc dot com)
 */
package chapter4;

class SquaredNumbers {
  operation run();
}
operation SquaredNumbers.run() {
  for (i in [0 .. 10]) {
    println("The square of {i} is {i*i}");
  }
}

var example = 
  SquaredNumbers {};

example.run(); 
 