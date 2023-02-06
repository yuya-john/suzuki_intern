// Update version of Music.qml
import QtQuick 2.15

Item {
    property string title: "Song Title"
    property string artist: "Artist Name"
    property string album: "Album Name"
    property string image: "music"
    property int time: 50
    property int timeMax: 300

    width: 280
    height: 350

    Rectangle {
        width: 280
        height: 350
        color: "#424242"
        radius: 10
    }

    Image {
        x: 50
        y: 25
        source: "qrc:/images/music/" + image + ".png"
        sourceSize: Qt.size(180, 180)
        horizontalAlignment: Text.AlignHCenter
    }

    Text {
        y: 225
        width: 280
        text: title
        color: "#FFFFFF"
        font.pointSize: 26
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
    }

    Text {
        y: 275
        width: 280
        text: artist + " / " + album
        color: "#FFFFFF"
        font.pointSize: 16
        horizontalAlignment: Text.AlignHCenter
    }

    Rectangle {
        x: 15
        y: 320
        width: 250
        height: 5
        color: "#757575"
        radius: 5
    }

    Rectangle {
        x: 15
        y: 320
        width: 250 * (time / timeMax)
        height: 5
        color: "#64B5F6"
        radius: 5
    }
}
