import QtQuick 2.0

import space.developers 1.0

Item {
    property var textItem
    property int heightItem: 100
    width: parent.width
    height: parent.height
    anchors.fill: parent

    ListView {
        id: view

        width: parent.width
        height: parent.height
        anchors.fill: parent
        model: listModel
        clip: true
        highlightRangeMode: ListView.StrictlyEnforceRange

        delegate: MenuButton {
            id: button

            heightButton: heightItem
            widthButton: view.width
            textButton: textItem
            onButtonClicked: {
                executeButtonEvent(model.index)
            }
        }
    }
}

