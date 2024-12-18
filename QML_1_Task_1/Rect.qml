import QtQuick 2.0

Item {
    property alias comCollor: rect1.color
    property alias comWidth: rect1.width
    property alias comHeight: rect1.height

    Rectangle {
        id: rect1
        width: 100
        height: 100
    }
}
