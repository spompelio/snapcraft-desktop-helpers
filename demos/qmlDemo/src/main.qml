import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Dialogs 1.3

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qmlProperties.appName

    FileDialog {
        id: fileDialog
        title: "Please choose a file"
        folder: shortcuts.home
        onAccepted: {
            console.log("You chose: " + fileDialog.fileUrls)
        }
        onRejected: {
            console.log("Canceled")
        }
        visible: false
    }

    ScrollView {
        anchors.fill: parent

        ListView {
            width: parent.width
            model: 20
            delegate: ItemDelegate {
                text: "Item " + (index + 1)
                width: parent.width
                Button {
                    anchors.left: parent.left
                    anchors.leftMargin: 100
                    text: "Open"
                    onClicked: fileDialog.visible = true
                }
            }
        }
    }
}
