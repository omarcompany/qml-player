import QtQuick 2.0

Column {
    property var icons: ["/icons/pause", "/icons/play", "/icons/stop"]
    property color backgroundColor: "transparent"
    Row {
        spacing: 3
        width: parent.width
        Repeater {
            model: icons
            delegate: MasterButton {
                width: parent.width / icons.length
            }
        }
    }

    Row {
        height: 60
        width: parent.width

        TimeWatcher {
            height: parent.height
            width: parent.width / 2
        }

        VolumeSlider {
            height: parent.height
            width: parent.width / 2
        }
    }
}
