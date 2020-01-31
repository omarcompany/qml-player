import QtQuick 2.0

Rectangle {
    color: backgroundColor
    Text {
        id: text
        anchors.centerIn: parent
        font.pointSize: Math.min(parent.height, parent.width) / 2
        color: "#A98971"
        text: Qt.formatTime(new Date(2000, 0, 0, 0, 0, PlayerTimerSingleton.currentTime), "hh:mm:ss")
    }
}
