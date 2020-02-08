import QtQuick 2.0
import QtQuick.Controls 1.4

Rectangle {
    color: backgroundColor

    Slider {
        id: volumeSlider
        anchors.fill: parent
        minimumValue: 0.01
        maximumValue: 1.0
        value: 0.5
        onValueChanged: player.setVolume(volumeSlider.value * 100)
    }
}
