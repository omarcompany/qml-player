import QtQuick 2.0

import space.developers 1.0

Rectangle {
    id: renameWindow

    signal signalRenameWindowExit()
    property int widthRenameWindow: widthGlobal * 0.6
    property int heightRenameWindow: heightGlobal * 0.3
    property string textForRename

    width: widthRenameWindow
    height: heightRenameWindow
    anchors.centerIn: parent
    color: "#3E0105"
    border {
        color: "black"
        width: 2
    }

    Column {
        id: column
        width: parent.width
        height: parent.height
        anchors.centerIn: parent.Center

        TextEdit {
            id: textEditRenameWindow
            width: parent.width
            height: parent.height / 2
            color: "#A98971"
            horizontalAlignment: TextEdit.AlignHCenter
            verticalAlignment: TextEdit.AlignVCenter
            font {
                pixelSize: 40
                bold: true
            }
        }

        MenuButton {
            z: 1
            widthButton: parent.width
            heightButton: parent.height / 2
            textButton: "Rename"
            anchors.horizontalCenter: parent.horizontalCenter

            onButtonClicked: {
                textForRename = textEditRenameWindow.text;
                signalRenameWindowExit();
                textEditRenameWindow.text = "";
                FileEngine.renameFile(PlayerTimerSingleton.itemPath, rename(textForRename,
                                                                            PlayerTimerSingleton.itemPath));
            }
        }
    }

    function rename(textForRename, oldPath) {
        var path = oldPath;
        path.replace()
        var lastSlashPosition, lastPointPosition, pointExistence = 0, newName;
        for (var i = path.length; path[i] !== "/"; i--) {
            lastSlashPosition = i;
            if ((path[i] === ".") && (pointExistence === 0)) {
                lastPointPosition = i;
                pointExistence = 1;
            }
        }
        newName = path.slice(0, lastSlashPosition) + textForRename + path.slice(lastPointPosition, path.length);
        return newName;
    }
}
