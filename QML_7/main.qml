import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    width: 800
    height: 600
    visible: true
    title: qsTr("Login Interface")

    Rectangle {
        anchors.fill: parent
        color: "lightgray"

        Column {
            anchors.centerIn: parent
            spacing: 20

            TextField {
                id: loginField
                placeholderText: "Enter your login"
                width: 300
                font.pixelSize: 18
            }

            TextField {
                id: passwordField
                placeholderText: "Enter your password"
                echoMode: TextInput.Password
                width: 300
                font.pixelSize: 18
            }

            Row {
                spacing: 20
                Button {
                    text: "Login"
                    width: 140
                    onClicked: {
                    }
                }
                Button {
                    text: "Clear"
                    width: 140
                    onClicked: {
                        loginField.text = ""
                        passwordField.text = ""
                    }
                }
            }
        }
    }
}
