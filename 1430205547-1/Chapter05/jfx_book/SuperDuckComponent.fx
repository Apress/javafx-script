/*
 *  SuperDuckComponent.fx - An example of a JavaFX custom component using
 *                          a CompositeNode.
 *
 *  Developed 2007 by James L. Weaver (jim.weaver at jmentor dot com)
 */
package jfx_book;

import javafx.ui.*;
import javafx.ui.canvas.*;

import java.lang.Math;

class SuperDuckComponent extends CompositeNode {
  attribute theCanvas:Canvas;
}

operation SuperDuckComponent.composeNode() {
  return 
    Group {
      content: [
        Group {
          var rotAngle = 0
          var scaleFactorX = 1
          var scaleFactorY = 1
          var transX = 290
          var transY = 100
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
              x: -220
              y: -10
              content: "The Adventures of Superlative Duck \u00A9"
            }
          ]
        },
        ImageView {
          var: self
          var x = 400 
          var y = 300
          var rotAngle = 0
          var cx = 0
          var cy = 0
          var opa = 1
          opacity: bind opa
          transform: bind [
            translate (x, y),
            rotate (rotAngle, cx, cy)
          ]
          image: 
            Image {
              url: "file:images/super_duck_trans.gif"
            }
          onMouseEntered: operation(mEvt) {
            self.cursor = HAND;
          }
          onMouseDragged: operation(mEvt) {
            x += mEvt.localDragTranslation.x;
            y += mEvt.localDragTranslation.y;
          }
          onMouseClicked: operation(mEvt) {
            var newX = Math.random() * (theCanvas.width - self.currentWidth);
            var newY = Math.random() * (theCanvas.height - self.currentHeight);

            cx = self.currentWidth / 2;
            cy = self.currentHeight / 2;
            var startAngle = (Math.toDegrees(Math.atan2((newY - self.currentY),
                                            (newX - self.currentX)))+90) % 360;
            rotAngle = [startAngle .. 0] dur 3000 easeout; 
            x = [self.currentX..newX] dur 3000 easeout;
            y = [self.currentY..newY] dur 3000 easeout;
            opa = [0.01, 0.02 .. 1] dur 3000;
          }
        }
      ]
    };
}
