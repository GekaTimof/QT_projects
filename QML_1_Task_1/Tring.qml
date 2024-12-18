import QtQuick 2.0

Item {
    property alias  comCollor: trin1.color

    Rectangle{
        id: trin1
        Rect{
            comCollor:"black"
            comWidth: 10
            comHeight: 10
            x:10
            y:0
        }
        Rect{
            comCollor:"black"
            comWidth: 10
            comHeight: 10
            x:0
            y:10
        }
        Rect{
            comCollor:"black"
            comWidth: 10
            comHeight: 10
            x:10
            y:10
        }
        Rect{
            comCollor:"black"
            comWidth: 10
            comHeight: 10
            x:20
            y:10
        }
    }
}


