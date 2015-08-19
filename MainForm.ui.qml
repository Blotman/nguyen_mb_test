import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1

Item {
    anchors.fill: parent
    property alias listView: listView1

    ListView {
        id: listView1
        x: 0
        y: 0
        anchors.fill: parent
        delegate: Item {
            x: 5
            width: 640
            height: 20
            Row {
                id: row1
                spacing: 10
                Text {
                    width: 128
                    height: 20
                    text: label
                    font.bold: true
                    anchors.verticalCenter: parent.verticalCenter
                }
                Text {
                    text: value
                    font.bold: true
                    anchors.verticalCenter: parent.verticalCenter
                }
            }
        }
        model: ListModel {
        }
    }
}
