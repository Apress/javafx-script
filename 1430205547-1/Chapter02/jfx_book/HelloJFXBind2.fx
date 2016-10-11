/*
 *  HelloJFXBind2.fx - A JavaFX Script "Hello World" style example 
 *                     binding to a model that is located in its own file.
 *
 *  Developed 2007 by James L. Weaver (jim.weaver at lat-inc dot com)
 */
package jfx_book;

import javafx.ui.*;
import javafx.ui.canvas.*;

/**
 * This is a JavaFX Script that binds to data from the model.
 */
Frame {
  var hellojfxModel = 
    HelloJFXModel {
      greeting: "Howdy JavaFX Script Developer!"
    }
  title: "JavaFX Script example that binds to a model"
  height: 100
  width: 400
  content:
    Canvas {
      content:
        Text {
          font: 
            Font {
              faceName: "Sans Serif"
              // Example of an attribute with a collection of values
              style: [
                BOLD,
                ITALIC]
              size: 24
            }
          // Put some color into the app
          stroke: red
          fill: red
          x: 10
          y: 10
          content: bind  hellojfxModel.greeting
        }
    }
  visible: true
}