/*
 *  SuperDuckExample.fx - A JavaFX example of using a custom component
 *
 *  Developed 2007 by James L. Weaver (jim.weaver at jmentor dot com)
 */

package jfx_book;

import javafx.ui.*;

Frame {
  title: "The Adventures of Superlative Duck"
  height: 600
  width: 600
  visible: true
  content:
    BorderPanel {
      center:
        Canvas {
          var: self
          content:
            SuperDuckComponent {
              theCanvas: self
            }
        }
    }
}
