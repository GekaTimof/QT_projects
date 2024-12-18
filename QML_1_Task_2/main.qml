import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    visible: true
    width: 800
    height: 600
    title: "Task_2"

    Rectangle {
            id: mainRectangle
            anchors.fill: parent
            color: "lightgray"

            Rectangle {
                id: header
                anchors.top: parent.top
                anchors.left: parent.left
                anchors.right: parent.right
                height: parent.height * 0.2
                color: "lightblue"
                Text {
                    anchors.centerIn: parent
                    text: "Header"
                    font.pixelSize: 24
                }
            }

            Rectangle {
                id: textField
                anchors.top: header.bottom
                anchors.left: parent.left
                anchors.right: parent.right
                height: parent.height * 0.6
                color: "white"
                border.color: "black"
                Text {
                    anchors.centerIn: parent
                    text: "My text"
                    font.pixelSize: 24
                }
            }


            Rectangle {
                id: footer
                anchors.top: textField.bottom
                anchors.left: parent.left
                anchors.right: parent.right
                height: parent.height * 0.2
                color: "lightgreen"

                // 1
                Rectangle {
                    id: column1
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    width: parent.width / 3
                    color: "white"
                    border.color: "black"
                    Text {
                        anchors.centerIn: parent
                        text: "1"
                        font.pixelSize: 24
                    }
                }

                // 2
                Rectangle {
                    id: column2
                    anchors.left: column1.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    width: parent.width / 3
                    color: "white"
                    border.color: "black"
                    Text {
                        anchors.centerIn: parent
                        text: "2"
                        font.pixelSize: 24
                    }
                }

                // 3
                Rectangle {
                    id: column3
                    anchors.left: column2.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    width: parent.width / 3
                    color: "white"
                    border.color: "black"
                    Text {
                        anchors.centerIn: parent
                        text: "3"
                        font.pixelSize: 24
                    }
                }
            }
        }}
