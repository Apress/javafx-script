/*
 *  TextAndEllipse.fx - A JavaFX Script program that demonstrates putting 
                        multiple shapes on a Canvas.
 *
 *  Developed 2007 by James L. Weaver (jim.weaver at jmentor dot com)
 */
package jfx_book;

import javafx.ui.*;
import javafx.ui.canvas.*;

Frame {
  title: "Text and Ellipse"
  height: 250
  width: 600
  visible: true
  content:
    Canvas {
      content: [
        Ellipse {
          transform: translate(300, 100)
          strokeWidth: 5
          stroke: red
          fill: white
          cx: 0
          cy: 0
          radiusX: 250
          radiusY: 50
        },
        Text {
          font: 
            Font {
              faceName: "Sans Serif"
              style: BOLD
              size: 24
            }
          x: 120
          y: 90
          content: "This is Text and an Ellipse"
        }
      ]
    }
}