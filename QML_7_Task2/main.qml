import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Window {
    width: 800
    height: 600
    visible: true
    title: qsTr("PIN Code Interface")

    Rectangle {
        anchors.fill: parent
        color: "lightgray"

        Column {
            anchors.centerIn: parent
            spacing: 20

            Rectangle {
                width: 320
                height: 50
                border.color: "black"
                radius: 5
                color: "white"

                TextInput {
                    id: pinField
                    anchors.fill: parent
                    anchors.margins: 5
                    font.pixelSize: 24
                    echoMode: TextInput.Password
                    text: ""
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }

                Text {
                    anchors.centerIn: parent
                    color: "gray"
                    visible: pinField.text === ""
                    text: "Enter 6-digit PIN"
                    font.pixelSize: 16
                }
            }

            GridLayout {
                columns: 3
                rowSpacing: 10
                columnSpacing: 10
                anchors.horizontalCenter: parent.horizontalCenter

                Repeater {
                    model: 9
                    delegate: Button {
                        text: (index + 1).toString()
                        width: 80
                        height: 60
                        font.pixelSize: 24
                        onClicked: {
                            if (pinField.text.length < 6) {
                                pinField.text += text
                            }
                        }
                    }
                }
            }

            Row {
                spacing: 10
                anchors.horizontalCenter: parent.horizontalCenter

                Button {
                    text: "0"
                    width: 100
                    height: 40
                    font.pixelSize: 24
                    onClicked: {
                        if (pinField.text.length < 6) {
                            pinField.text += text
                        }
                    }
                }
            }

            Row {
                spacing: 20

                Button {
                    text: "Login"
                    width: 100
                    height: 50
                }
                Button {
                    text: "Clear"
                    width: 100
                    height: 50
                    onClicked: {
                        pinField.text = ""
                    }
                }
            }
        }
    }
}
