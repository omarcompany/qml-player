import QtQuick 2.12
import QtQuick.Window 2.12

import space.developers 1.0

Window {
    property alias widthGlobal: mainWindow.width
    property alias heightGlobal: mainWindow.height
    id: mainWindow
    visible: true
    minimumWidth: 300
    minimumHeight: 600
    width: 600
    height: 800
    title: qsTr("Player")
    color: "#3E0105"

    HomePage {
        anchors.fill: parent
    }

    Player {
        id: player
        Component.onCompleted: PlayerTimerSingleton.player = player
    }

    PlayerList {
        id: dataModel
    }

    RightButtonMenu {
        id: menu
        visible: false
        onSignalExit: {
            menu.visible = false
        }
    }

    RenameWindow {
        id: renameWindow
        visible: false
        onSignalRenameWindowExit: {
            renameWindow.visible = false
        }
    }
}
