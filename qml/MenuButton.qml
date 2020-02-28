import QtQuick 2.0
import QtGraphicalEffects 1.12

Item {
    id: button

    signal buttonClicked()
    property int widthButton: 100
    property int heightButton: 100
    property int radiusButton: 10
    property color colorButton: "transparent"
    property string textButton: "Button"
    property color colorText: "#A98971"

    width: widthButton
    height: heightButton

    RadialGradient {
        anchors.fill: parent
        gradient: Gradient {
            GradientStop { position: 0.0; color: colorButton }
            GradientStop { position: 0.99; color: mouseArea.pressed ? "#A85C60" :  colorButton}
        }
    }

    Rectangle {
        id: rectButton
        anchors.fill: parent
        color: colorButton
        border {
            color: "black"
            width: 2
        }
    }

    Text {
        font {
            pixelSize: 40
            bold: true
        }
        anchors.centerIn: parent
        text: qsTr(textButton)
        color: colorText
        font {
            pixelSize: parent.width / 8
            bold: true
        }
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onClicked: button.buttonClicked()
    }
}
