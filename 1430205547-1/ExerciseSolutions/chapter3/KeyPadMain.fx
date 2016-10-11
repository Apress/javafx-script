/*
 *  KeyPadMain.fx - The main program file for the "Key Pad"
 *                  exercise in chapter 3.
 *
 *  Developed 2007 by James L. Weaver (jim.weaver at lat-inc dot com)
 */
package chapter3;

import javafx.ui.*;
import java.lang.System;

Frame {
  var kpModel = 
    KeyPadModel {
      keysDisabled: true
      letterClicked: "0"
    }
  title: "The Key Pad Exercise"
  height: 400
  width: 400
  visible: true
  menubar:
    MenuBar {
      menus: [
        Menu {
          text: "Keys"
          items: [
            CheckBoxMenuItem {
              selected: bind kpModel.keysDisabled
              text: "Disabled"
              accelerator: {
                  modifier: CTRL
                  keyStroke: D
                }
            },
            MenuItem {
              text: "Exit"
              action: 
                operation() {
                  System.exit(0);
                }
            }
          ]
        }
      ]
    }
  content:
    BorderPanel {
      top:
        SimpleLabel {
          horizontalAlignment: TRAILING
          text: bind kpModel.letterClicked
          font:
            Font {
              size: 18
            }
          border: EmptyBorder {
            top: 0
            bottom: 0
            left: 20
            right: 20
          }
        }
      center:
        GridPanel {
          border: 
            MatteBorder {
              top: 20
              bottom: 20
              left: 20
              right: 20
              matteColor: blue
            }
          rows: 3
          columns: 3
          cells: [
            Button {
              text: "1"
              enabled: bind not kpModel.keysDisabled
              action:
                operation() {
                  kpModel.letterClicked = "1";
                }
            },
            Button {
              text: "2"
              enabled: bind not kpModel.keysDisabled
              action:
                operation() {
                  kpModel.letterClicked = "2";
                }
            },
            Button {
              text: "3"
              enabled: bind not kpModel.keysDisabled
              action:
                operation() {
                  kpModel.letterClicked = "3";
                }
            },
            Button {
              text: "4"
              enabled: bind not kpModel.keysDisabled
              action:
                operation() {
                  kpModel.letterClicked = "4";
                }
            },
            Button {
              text: "5"
              enabled: bind not kpModel.keysDisabled
              action:
                operation() {
                  kpModel.letterClicked = "5";
                }
            },
            Button {
              text: "6"
              enabled: bind not kpModel.keysDisabled
              action:
                operation() {
                  kpModel.letterClicked = "6";
                }
            },
            Button {
              text: "7"
              enabled: bind not kpModel.keysDisabled
              action:
                operation() {
                  kpModel.letterClicked = "7";
                }
            },
            Button {
              text: "8"
              enabled: bind not kpModel.keysDisabled
              action:
                operation() {
                  kpModel.letterClicked = "8";
                }
            },
            Button {
              text: "9"
              enabled: bind not kpModel.keysDisabled
              action:
                operation() {
                  kpModel.letterClicked = "9";
                }
            }
          ]
        }
    }
}