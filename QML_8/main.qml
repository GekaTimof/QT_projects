import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    width: 800
    height: 600
    visible: true
    title: qsTr("SwipeView with PageIndicator")

    SwipeView {
        id: swipeView
        anchors.fill: parent

        Item {
            Rectangle {
                width: parent.width
                height: parent.height
                color: "red"
                Text {
                    anchors.centerIn: parent
                    text: "Red Page"
                    font.pixelSize: 36
                    color: "white"
                }
            }
        }

        Item {
            Rectangle {
                width: parent.width
                height: parent.height
                color: "yellow"
                Text {
                    anchors.centerIn: parent
                    text: "Yellow Page"
                    font.pixelSize: 36
                    color: "black"
                }
            }
        }

        Item {
            Rectangle {
                width: parent.width
                height: parent.height
                color: "green"
                Text {
                    anchors.centerIn: parent
                    text: "Green Page"
                    font.pixelSize: 36
                    color: "white"
                }
            }
        }
    }

    PageIndicator {
        id: pageIndicator
        count: swipeView.count
        currentIndex: swipeView.currentIndex
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }
}
