/*
 *  HelloJFX.fx - A JavaFX Script "Hello World" style example
 *
 *  Developed 2007 by James L. Weaver (jim.weaver at jmentor dot com)
 */
package jfx_book;

import javafx.ui.*;
import javafx.ui.canvas.*;

Frame {
  title: "Hello World-style example for JavaFX Script"
  height: 100
  width: 400
  content:
    Canvas {
      content:
        Text {
          font: 
            Font {
              faceName: "Sans Serif"
              style: BOLD
              size: 24
            }
          x: 10
          y: 10
          content: "Hello JavaFX Script Developer!"
        }
    }
  // Show the Frame on the screen
  visible: true
}