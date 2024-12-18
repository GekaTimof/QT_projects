import QtQuick 2.0

Item {
    property alias  comX: head1.x
    property alias  comY: head1.y

    Rect{
        id: head1
        Rect{
            comCollor:"gray"
            comWidth: 75
            comHeight: 75
            x:0
            y:0
        }

        Rect{
            comCollor:"black"
            comWidth: 20
            comHeight: 10
            x:40
            y:20
        }

        Rect{
            comCollor:"black"
            comWidth: 20
            comHeight: 10
            x:10
            y:20
        }

        Tring{
            comCollor:"black"
            x: 20
            y: 40
        }
    }
}
