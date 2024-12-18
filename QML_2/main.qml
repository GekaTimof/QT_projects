import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    visible: true
    width: 800
    height: 600
    title: "QML_2"

    Rectangle {
        id: mainRectangle
        anchors.fill: parent
        color: "lightgray"

        Column {
            anchors.fill: parent
            spacing: 0

            Rectangle {
                id: header
                height: parent.height * 0.2
                width: parent.width
                color: "lightblue"
                Text {
                    anchors.centerIn: parent
                    text: "Header"
                    font.pixelSize: 24
                }
            }

            Rectangle {
                id: content
                height: parent.height * 0.6
                width: parent.width
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
                height: parent.height * 0.2
                width: parent.width
                color: "lightgreen"

                Row {
                    id: footerRow
                    anchors.fill: parent
                    spacing: 0

                    Rectangle {
                        id: column1
                        width: footer.width / 3
                        height: footer.height
                        color: "white"
                        border.color: "black"
                        Text {
                            anchors.centerIn: parent
                            text: "1"
                            font.pixelSize: 24
                        }
                    }

                    Rectangle {
                        id: column2
                        width: footer.width / 3
                        height: footer.height
                        color: "white"
                        border.color: "black"
                        Text {
                            anchors.centerIn: parent
                            text: "2"
                            font.pixelSize: 24
                        }
                    }

                    Rectangle {
                        id: column3
                        width: footer.width / 3
                        height: footer.height
                        color: "white"
                        border.color: "black"
                        Text {
                            anchors.centerIn: parent
                            text: "3"
                            font.pixelSize: 24
                        }
                    }
                }
            }
        }
    }
}
