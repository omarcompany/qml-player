import QtQuick 2.0

import space.developers 1.0

Rectangle {
    id: mainMenu

    signal signalExit()
    width: widthGlobal * 0.6
    height: heightGlobal * 0.4
    anchors.centerIn: parent
    color: "#3E0105"
    border.width: 2

    ListModel {
        id: listModel

        ListElement {
            textItem: "Remove"
        }

        ListElement {
            textItem: "Rename"
        }

        ListElement {
            textItem: "Exit"
        }
    }

    MenuList {
        heightItem: parent.height / 3
        textItem: listModel.textItem
    }

    function executeButtonEvent(index) {
        switch (index) {
              case 0: // remove button
                  FileEngine.removeFile(PlayerTimerSingleton.itemPath)
                  signalExit()
                  break
              case 1: // rename button
                  renameWindow.visible = true
                  signalExit()
                  break
              case 2: // exit button
                  signalExit()
                  break
        }
    }
}
