/*
 *  ForRangeExample.fx - An example of a range expression that has an
 *                       interval, and is iterated over with a for statement
 *
 *  Developed 2007 by James L. Weaver (jim.weaver at lat-inc dot com)
 */
package jfx_book;

import java.lang.System;

class ForRangeExample {
  operation run();
}
operation ForRangeExample.run() {
  for (i in [5, 10 .. 50]) {
    System.out.println("The value of the current element is {i}");
  }
}

var example = 
  ForRangeExample {
  };

example.run(); 
