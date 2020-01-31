import QtQuick 2.0

Column {
    MediaControllerView {
        id: mediaControllerView
        width: parent.width
    }

    PlayList {
        height: parent.height - mediaControllerView.height
        width: parent.width
    }
}
