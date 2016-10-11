/*
 *  GroupTextAndEllipse.fx - A JavaFX Script program that demonstrates putting 
 *                           shapes into a Group.
 *
 *  Developed 2007 by James L. Weaver (jim.weaver at jmentor dot com)
 */
package jfx_book;

import javafx.ui.*;
import javafx.ui.canvas.*;

Frame {
  title: "Text and an Ellipse in a Group"
  height: 600
  width: 600
  visible: true
  content:
    Canvas {
      content: 
        Group {
          var rotAngle = 0
          var scaleFactorX = 1
          var scaleFactorY = 1
          var transX = 300
          var transY = 200
          transform: bind [
            translate(transX, transY),
            rotate (rotAngle, 0, 0),
            scale (scaleFactorX, scaleFactorY)
          ]  
          content: [
            Ellipse {
              var: self
              onMouseEntered: operation(mEvt) {
                self.cursor = HAND;
              } 
              onMouseClicked: operation(mEvt) {
                if (mEvt.isControlDown() and mEvt.isShiftDown()) {
                  rotAngle -= 10;
                }
                else if (mEvt.isControlDown()) {
                  rotAngle += 10;
                }
                else if (mEvt.isShiftDown()) {
                  scaleFactorX *= .8;
                  scaleFactorY *= .8;
                }
                else {
                  scaleFactorX *= 1.25;
                  scaleFactorY *= 1.25;
                }        
              } 
              onMouseDragged: operation(mEvt) {
                transX += mEvt.dragTranslation.x;          
                transY += mEvt.dragTranslation.y;          
              } 
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
              x: -180
              y: -10
              content: "Text and an Ellipse in a Group"
            }
          ]
        }
    }
}