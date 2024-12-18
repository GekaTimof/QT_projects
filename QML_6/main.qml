import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 800
    height: 600
    title: qsTr("Stack View Navigation")

    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: pageLogo
    }

    Component {
        id: pageLogo
        Page {
            Rectangle {
                width: parent.width
                height: parent.height
                color: "lightgray"

                Text {
                    anchors.centerIn: parent
                    text: "Logo Page"
                    font.pixelSize: 32
                }

                Button {
                    text: "Go to Red Page"
                    anchors.bottom: parent.bottom
                    anchors.horizontalCenter: parent.horizontalCenter
                    onClicked: {
                        stackView.push(pageRed.createObject())
                    }
                }
            }
        }
    }

    Component {
        id: pageRed
        Page {
            Rectangle {
                width: parent.width
                height: parent.height
                color: "red"

                Text {
                    anchors.centerIn: parent
                    text: "Red Page"
                    font.pixelSize: 32
                    color: "white"
                }

                Button {
                    text: "Go to Green Page"
                    anchors.bottom: parent.bottom
                    anchors.left: parent.left
                    anchors.bottomMargin: 10
                    anchors.leftMargin: 20
                    onClicked: {
                        stackView.push(pageGreen.createObject())
                    }
                }

                Button {
                    text: "Go to Yellow Page"
                    anchors.bottom: parent.bottom
                    anchors.right: parent.right
                    anchors.bottomMargin: 10
                    anchors.rightMargin: 20
                    onClicked: {
                        stackView.push(pageYellow.createObject())
                    }
                }

                ToolBar {
                    id: toolBar
                    anchors.top: parent.top
                    anchors.left: parent.left
                    anchors.right: parent.right

                    Row {
                        Button {
                            text: "Back"
                            onClicked: {
                                stackView.pop()
                            }
                        }
                    }
                }
            }
        }
    }

    Component {
        id: pageGreen
        Page {
            Rectangle {
                width: parent.width
                height: parent.height
                color: "green"

                Text {
                    anchors.centerIn: parent
                    text: "Green Page"
                    font.pixelSize: 32
                    color: "white"
                }

                Button {
                    text: "Go to Red Page"
                    anchors.bottom: parent.bottom
                    anchors.left: parent.left
                    anchors.bottomMargin: 10
                    anchors.leftMargin: 20
                    onClicked: {
                        stackView.push(pageRed.createObject())
                    }
                }

                Button {
                    text: "Go to Yellow Page"
                    anchors.bottom: parent.bottom
                    anchors.right: parent.right
                    anchors.bottomMargin: 10
                    anchors.rightMargin: 20
                    onClicked: {
                        stackView.push(pageYellow.createObject())
                    }
                }

                ToolBar {
                    id: toolBar
                    anchors.top: parent.top
                    anchors.left: parent.left
                    anchors.right: parent.right

                    Row {
                        Button {
                            text: "Back"
                            onClicked: {
                                stackView.pop()
                            }
                        }
                    }
                }
            }
        }
    }

    Component {
        id: pageYellow
        Page {
            Rectangle {
                width: parent.width
                height: parent.height
                color: "yellow"

                Text {
                    anchors.centerIn: parent
                    text: "Yellow Page"
                    font.pixelSize: 32
                    color: "black"
                }

                Button {
                    text: "Go to Red Page"
                    anchors.bottom: parent.bottom
                    anchors.left: parent.left
                    anchors.bottomMargin: 10
                    anchors.leftMargin: 20
                    onClicked: {
                        stackView.push(pageRed.createObject())
                    }
                }

                Button {
                    text: "Go to Green Page"
                    anchors.bottom: parent.bottom
                    anchors.right: parent.right
                    anchors.bottomMargin: 10
                    anchors.rightMargin: 20
                    onClicked: {
                        stackView.push(pageGreen.createObject())
                    }
                }

                ToolBar {
                    id: toolBar
                    anchors.top: parent.top
                    anchors.left: parent.left
                    anchors.right: parent.right

                    Row {
                        Button {
                            text: "Back"
                            onClicked: {
                                stackView.pop()
                            }
                        }
                    }
                }
            }
        }
    }
}
