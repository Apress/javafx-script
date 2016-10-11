/*
 *  BordersExample.fx - An example of the borders available in JavaFX Script
 *
 *  Developed 2007 by James L. Weaver (jim.weaver at jmentor dot com)
 */
package jfx_book;

import javafx.ui.*;
import javafx.ui.canvas.*;

Frame {
  title: "JavaFX Borders"
  width: 500
  height: 500
  visible: true
  content:
    GridPanel {
      rows: 3
      columns: 3
      vgap: 5
      hgap: 5
      cells: [
        Button {
          text: "BevelBorder"
          border: 
            BevelBorder {
            }
        },
        Button {
          text: "EmptyBorder"
          border:
            EmptyBorder {
              top: 20
              left: 20
              bottom: 20
              right: 20
            }
        },
        Button {
          text: "EtchedBorder"
          border: 
            EtchedBorder {
              style: LOWERED
            }
        },
        Button {
          text: "LineBorder"
          border: 
            LineBorder {
              thickness: 4
              lineColor: purple
              roundedCorners: true
            }
        },
        Button {
          text: "MatteBorder"
          border:
            MatteBorder {
              matteColor: cornflowerblue
              top: 10
              left: 10
              bottom: 10
              right: 10
            }
        },
        Button {
          text: "ShadowedBorder"
          border: 
            ShadowedBorder {
            }
        },
        Button {
          text: "SoftBevelBorder"
          border: 
            SoftBevelBorder {
              style: LOWERED
            }
        },
        Button {
          text: "TitledBorder"
          border: 
            TitledBorder {
              title: "Title"
              titlePosition: BOTTOM
              titleJustification: CENTER
              titleColor: darkmagenta
            }
        },
        Button {
          text: "CompoundBorder"
          border: 
            CompoundBorder {
              borders: [
                MatteBorder {
                  matteColor: darkgreen
                  top: 5
                  left: 5
                  bottom: 5
                  right: 5
                },
                TitledBorder {
                  title: "Title"
                  titleColor: indigo
                }
              ]
            }
        },
      ] 
    }
}