/*
 *  TwoMessagesMain.fx - The main program file for the "Two Messages"
 *                        exercise in chapter 2.
 *
 *  Developed 2007 by James L. Weaver (jim.weaver at lat-inc dot com)
 */
package chapter2;

import javafx.ui.*;
import javafx.ui.canvas.*;

/**
 * This is a JavaFX Script that binds to data from the model.
 */
Frame {
  var twoMessagesModel = 
    TwoMessagesModel {
      message1: "This is message 1"
      message2: "This is message 2"
    }
  title: "The Two Messages Exercise"
  height: 200
  width: 400
  content:
    Canvas {
      content: [
        Text {
          font: 
            Font {
              faceName: "Sans Serif"
              style: BOLD
              size: 24
            }
          // Put some color into the app
          stroke: red
          fill: yellow
          x: 10
          y: 10
          content: bind  twoMessagesModel.message1
        }
        ,
        Text {
          font: 
            Font {
              faceName: "Sans Serif"
              style: [
                BOLD,
                ITALIC]
              size: 24
            }
          // Put some color into the app
          stroke: blue
          fill: green
          x: 110
          y: 110
          content: bind  twoMessagesModel.message2
        }
      ]
    }
  visible: true
}