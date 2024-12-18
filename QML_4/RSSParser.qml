import QtQuick 2.15
import QtQuick.XmlListModel 2.15

ListView {
    width: parent.width
    height: parent.height

    model: XmlListModel {
        source: "https://example.com/rss" // Замените на реальный RSS источник
        query: "/rss/channel/item"
        XmlRole { name: "title"; query: "title/string()" }
        XmlRole { name: "link"; query: "link/string()" }
        XmlRole { name: "description"; query: "description/string()" }
    }

    delegate: Item {
        width: parent.width
        height: 60

        Rectangle {
            width: parent.width
            height: 60
            color: "lightgray"
            border.color: "black"
            radius: 8

            Column {
                Text {
                    text: model.title
                    font.bold: true
                    color: "black"
                }
                Text {
                    text: model.description
                    color: "gray"
                    font.italic: true
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        Qt.openUrlExternally(model.link)
                    }
                }
            }
        }
    }
}
