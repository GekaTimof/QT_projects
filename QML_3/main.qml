import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    visible: true
    width: 800
    height: 600
    title: "Interactive Layout"

    Rectangle {
        id: mainRectangle
        anchors.fill: parent
        color: "lightgray"

        property real opacity1: 1
        property real opacity2: 1
        property real opacity3: 1
        property string headerText: "Header"
        property string contentText: "Content"

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
                    text: mainRectangle.headerText
                    font.pixelSize: 24
                    color: "black"
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
                    text: mainRectangle.contentText
                    font.pixelSize: 24
                    color: "black"
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
                        id: button1
                        width: footer.width / 3
                        height: footer.height
                        color: "gray"
                        opacity: mainRectangle.opacity1
                        Text {
                            anchors.centerIn: parent
                            text: "1"
                            font.pixelSize: 24
                            color: "black"
                        }
                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                mainRectangle.opacity1 = 0.3
                                mainRectangle.opacity2 = 1
                                mainRectangle.opacity3 = 1
                                mainRectangle.headerText = "Button 1 clicked"
                                mainRectangle.contentText = "You selected the first column"
                            }
                        }
                    }

                    Rectangle {
                        id: button2
                        width: footer.width / 3
                        height: footer.height
                        color: "gray"
                        opacity: mainRectangle.opacity2
                        Text {
                            anchors.centerIn: parent
                            text: "2"
                            font.pixelSize: 24
                            color: "black"
                        }
                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                mainRectangle.opacity1 = 1
                                mainRectangle.opacity2 = 0.3
                                mainRectangle.opacity3 = 1
                                mainRectangle.headerText = "Button 2 clicked"
                                mainRectangle.contentText = "You selected the second column"
                            }
                        }
                    }

                    Rectangle {
                        id: button3
                        width: footer.width / 3
                        height: footer.height
                        color: "gray"
                        opacity: mainRectangle.opacity3
                        Text {
                            anchors.centerIn: parent
                            text: "3"
                            font.pixelSize: 24
                            color: "black"
                        }
                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                mainRectangle.opacity1 = 1
                                mainRectangle.opacity2 = 1
                                mainRectangle.opacity3 = 0.3
                                mainRectangle.headerText = "Button 3 clicked"
                                mainRectangle.contentText = "You selected the third column"
                            }
                        }
                    }
                }
            }
        }
    }
}
