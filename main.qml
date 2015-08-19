import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2

ApplicationWindow {
    title: qsTr("CPU Info")
    width: 640
    height: 480
    visible: true

    Text {
        id: fileReader
        text: reader.readData()
        visible: false
    }

    menuBar: MenuBar {
        Menu {
            title: qsTr("&File")
            MenuItem {
                text: qsTr("E&xit")
                onTriggered: Qt.quit();
            }
        }
    }

    MainForm {
        id: mainForm
        anchors.fill: parent
    }

    Component.onCompleted: {
        var lines = fileReader.text.split('\n');
        for (var i = 0; i < lines.length; i++)
        {
            var lineContents = lines[i].trim().split(':')
            var label = lineContents[0].trim();
            var value = lineContents[1] ? lineContents[1].trim() : "";

            if (label.length > 0)
            {
                mainForm.listView.model.append({"label": label, "value": value})
            }
        }
    }
}
