/*
 *  HelloJFXBind.fx - A JavaFX Script "Hello World" style example 
 *                    binding to a model
 *
 *  Developed 2007 by James L. Weaver (jim.weaver at lat-inc dot com)
 */
package jfx_book;

import javafx.ui.*;
import javafx.ui.canvas.*;

/**
 * This class serves as the model behind the user interface
 */
class HelloJFXModel {
  attribute greeting:String;
}

/**
 * This is a JavaFX Script that binds to data from the model.
 */
var hellojfxModel = 
  HelloJFXModel {
    greeting: "Hello JavaFX Script Developer!"
  };

Frame {
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