import QtQuick 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.12

Rectangle {

    width: 200; height: 200


    Rectangle {

        id: parentRect

        x: 25; y: 25

        width: 150; height: 150

        color: "red"

        clip: true


        Rectangle {

            id: childRect

            x: 25; y: 25

            width: 150; height: 150

            color: "green"

        }

    }

}
