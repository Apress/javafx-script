/*
 *  LongerMessage.fx - The program file for the "Longer Message"
 *                     exercise in chapter 2.
 *
 *  Developed 2007 by James L. Weaver (jim.weaver at lat-inc dot com)
 */
package chapter2;

import javafx.ui.*;
import javafx.ui.canvas.*;

Frame {
  title: "The Longer Message Exercise"
  height: 100
  width: 750
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
          content: "This is a longer message requiring an increase in Frame width!"
        }
    }
  // Show the Frame on the screen
  visible: true
}