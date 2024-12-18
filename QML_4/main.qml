import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Window {
    width: 360
    height: 640
    visible: true
    title: qsTr("Task_for_ListView_Model")

    property int defMargin: 8
    property var my_model: ListModel {}

    ListView {
        id: msgListView
        width: parent.width
        height: parent.height - pageFooter.height
        anchors.top: parent.top

        model: my_model
        delegate: Item {
            width: msgListView.width
            height: 50

            Rectangle {
                width: parent.width
                height: 50
                color: "white"
                border.color: "lightgray"
                radius: 8

                // Использование Item с отступами
                Item {
                    anchors.fill: parent
                    anchors.margins: defMargin

                    Column {
                        spacing: 2
                        Text {
                            text: name
                            font.pixelSize: 16
                            color: "black"
                        }
                        Text {
                            text: time
                            font.pixelSize: 12
                            color: "gray"
                        }
                    }
                }
            }
        }
    }

    PageFooter {
        id: pageFooter
        anchors.bottom: parent.bottom
        onNewMessage: {
            var newMsg = {};
            newMsg.name = msg;
            newMsg.time = Qt.formatTime(new Date(), "hh:mm");
            my_model.append(newMsg);
        }
    }
}
