import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Window {
    width: 360
    height: 640
    visible: true
    title: "State Animation Example"

    property int stateIndex: 0

    Rectangle {
        id: backgroundRectangle
        width: parent.width
        height: parent.height
        color: stateIndex == 0 ? "lightblue" : stateIndex == 1 ? "lightgreen" : "lightyellow"

        Column {
            spacing: 10
            anchors.centerIn: parent

            Button {
                text: "State 1"
                onClicked: {
                    stateIndex = 0
                }
            }

            Button {
                text: "State 2"
                onClicked: {
                    stateIndex = 1
                }
            }

            Button {
                text: "State 3"
                onClicked: {
                    stateIndex = 2
                }
            }
        }

        states: [
            State {
                name: "state1"
                when: stateIndex == 0
                PropertyChanges {
                    target: backgroundRectangle
                    color: "lightblue"
                }
            },
            State {
                name: "state2"
                when: stateIndex == 1
                PropertyChanges {
                    target: backgroundRectangle
                    color: "lightgreen"
                }
            },
            State {
                name: "state3"
                when: stateIndex == 2
                PropertyChanges {
                    target: backgroundRectangle
                    color: "lightyellow"
                }
            }
        ]

        transitions: [
            Transition {
                from: "*"
                to: "*"
                reversible: true
                ParallelAnimation {
                    PropertyAnimation {
                        target: backgroundRectangle
                        property: "color"
                        duration: 500
                        easing.type: Easing.InOutQuad
                    }
                }
            }
        ]
    }
}
