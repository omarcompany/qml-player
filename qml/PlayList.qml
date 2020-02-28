import QtQuick 2.0

Rectangle {
    color: "#512023" // crimson

    ListView {
        model: dataModel
        anchors.fill: parent
        clip: true

        delegate: ListItem {

            onLeftClicked: {
                player.start(model.path);
                PlayerTimerSingleton.start();
            }
            onRightClicked: {
                PlayerTimerSingleton.itemPath = model.path;
            }
        }
    }
}
